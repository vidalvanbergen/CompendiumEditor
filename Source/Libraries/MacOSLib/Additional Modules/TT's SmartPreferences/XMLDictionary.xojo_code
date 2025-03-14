#tag Module
Protected Module XMLDictionary
	#tag Method, Flags = &h21
		Private Sub ClearStorage(storage As Variant)
		  If storage.Type = 9 Then
		    If storage.ObjectValue IsA Dictionary Then
		      Dictionary(storage).Clear
		    End If
		  ElseIf storage.IsArray Then
		    dim t as Integer = storage.ArrayElementType
		    if t = Variant.TypeString then
		      dim a() as String = storage
		      redim a(-1)
		    elseif t = Variant.TypeInteger then
		      dim a() as Integer = storage
		      redim a(-1)
		    elseif t = Variant.TypeBoolean then
		      dim a() as Boolean = storage
		      redim a(-1)
		    elseif t = Variant.TypeDouble then
		      dim a() as Double = storage
		      redim a(-1)
		    elseif t = Variant.TypeDate then
		      dim a() as Date = storage
		      redim a(-1)
		    elseif t = Variant.TypeLong then
		      dim a() as Int64 = storage
		      redim a(-1)
		    elseif t = Variant.TypeObject then
		      dim a() as Object = storage
		      redim a(-1)
		    end
		    
		    // fallback for unknown types - if this gets a TypeMismatchException, add the missing type to another elseif/dim/return above
		    dim a() as Variant = storage
		    redim a(-1)
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ExportXML(Extends xmldict As Dictionary, plist As Boolean = False, indented as Boolean = true) As XmlDocument
		  Dim xdoc As XmlDocument
		  Dim root, dict As XmlElement
		  
		  xdoc = New XmlDocument
		  If plist Then
		    // Plist-compatible output
		    root = XmlElement(xdoc.AppendChild(xdoc.CreateElement("plist")))
		    root.SetAttribute("version", PlistVersion)
		    if xmldict.Count = 1 and xmldict.HasKey( "cfarray" ) then // It has array at its root
		      dict = root // The root is an array so we don't create a sub-element
		    else // The root is a dict
		      dict = XmlElement(root.AppendChild(xdoc.CreateElement("dict")))
		    end if
		    ParseStorage xmldict, dict, True, indented
		    IndentNode root, 0, True
		    IndentNode dict, 0, True
		  Else
		    root = XmlElement(xdoc.AppendChild(xdoc.CreateElement("xmldict")))
		    root.SetAttribute("version", CurrentVersion)
		    ParseStorage xmldict, root, False, indented
		    IndentNode root, 0, True
		  End If
		  xdoc.AppendChild(xdoc.CreateTextNode(EndOfLine))
		  
		  Return xdoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ExportXMLString(Extends xmldict As Dictionary, plist As Boolean = False, indented as Boolean = true) As String
		  // Since we can't add a DOCTYPE to the XmlDocument,
		  // lets hack this output to add it
		  
		  Dim s, DTD As String
		  Dim i As Integer
		  s = xmldict.ExportXML(plist, indented).ToString
		  
		  // Let's add the DTD
		  i = s.InStr(EndOfLine)
		  
		  If plist Then
		    DTD = PlistDTD
		  Else
		    DTD = XMLDictDTD
		  End If
		  s = s.Mid(1, i + Len(EndOfLine) - 1) + DTD + EndOfLine + s.Mid(i + Len(EndOfLine))
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub IndentNode(node As XmlNode, level As Integer, indentCloseTag As Boolean = False)
		  if level >= 0 then
		    Dim i As Integer
		    Dim s As String
		    s = EndOfLine
		    For i = 1 To level
		      s = s + Chr(9) // Tab
		    Next
		    node.Parent.Insert(node.OwnerDocument.CreateTextNode(s), node)
		    If indentCloseTag Then
		      node.AppendChild(node.OwnerDocument.CreateTextNode(s))
		    End If
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LoadXML(Extends xmldict As Dictionary, XMLFile As FolderItem) As Boolean
		  Dim tos As TextInputStream
		  Dim s As String
		  
		  'tos = XMLFile.OpenAsTextFile()
		  tos = TextInputStream.Open( XMLFile )
		  If tos <> nil Then
		    s = tos.ReadAll
		    tos.Close
		    Return xmldict.LoadXML(s)
		  Else
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LoadXML(Extends xmldict As Dictionary, XMLData As String) As Boolean
		  Dim xdoc As XmlDocument
		  
		  xdoc = New XmlDocument()
		  xdoc.PreserveWhitespace = True
		  xdoc.LoadXml(XMLData)
		  Return xmldict.LoadXML(xdoc)
		  
		  Exception err As XmlException
		    // Ugh, invalid XML
		    Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LoadXML(Extends xmldict As Dictionary, XMLDoc As XmlDocument) As Boolean
		  Dim node As XmlNode
		  
		  XMLDoc.PreserveWhitespace = True
		  
		  // Check to see if it's our xmldict or if it's a plist
		  If XMLDoc.DocumentElement.Name = "plist" Then
		    // Make sure it's a "dict" as the base type
		    node = XMLDoc.DocumentElement.FirstChild
		    While node.Type <> XmlNodeType.ELEMENT_NODE And node <> nil
		      node = node.NextSibling
		    Wend
		    If node = nil Or ( node.Name <> "dict" and node.Name <> "array" ) Then // Modified by Kem Tekinay: PLists can have any valid type at their root, but array and dict are the most common
		      // It's not valid
		      Return False
		    End If
		    // Now check the version
		    If Val(XMLDoc.DocumentElement.GetAttribute("version")) <= Val(PlistVersion) Then
		      ParseXML node, xmldict, true
		      Return True
		    Else
		      Return False
		    End If
		  Else
		    // First, make sure the version is at most what we expect
		    If Val(XMLDoc.DocumentElement.GetAttribute("version")) <= Val(CurrentVersion) Then
		      ParseXML XMLDoc.DocumentElement, xmldict, true
		      Return True
		    Else
		      // We can't reliably parse a higher version, so lets not parse it at all
		      Return False
		    End If
		  End If
		  
		  Exception err As XmlException
		    // Ugh, invalid XML
		    Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function NodeContents(parent As XmlNode) As String
		  // Concatenates all the node children values and returns the result
		  // It's designed for the children to be all text nodes, but for anything
		  // else it'll just use .ToString
		  
		  Dim i, n As Integer
		  Dim node As XmlNode
		  Dim s As String
		  n = parent.ChildCount - 1
		  For i = 0 To n
		    node = parent.Child(i)
		    If node.Type = 3 Then // Text node
		      s = s + node.Value
		    Else // Other node - shouldn't happen, but we gotta deal with it if it does
		      s = s + node.ToString
		    End If
		  Next
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ParseStorage(storage As Variant, parent As XmlNode, plist As Boolean, indented as Boolean)
		  dim level as Integer
		  if indented then
		    level = 1
		  else
		    level = -1000
		  end
		  ParseStorage(storage, parent, new Dictionary, level, plist)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ParseStorage(storage As Variant, parent As XmlNode, alreadySeen As Dictionary, indentLevel As Integer, plist As Boolean = False)
		  Dim key, value As Variant
		  Dim node, tempNode As XmlNode
		  Dim xdoc As XmlDocument
		  Dim s, data(-1) As String
		  Dim multilineTag As Boolean
		  Dim i, n As Integer
		  
		  // First, make sure we haven't already seen this dictionary
		  // This protects against circular dictionary references
		  If alreadySeen.HasKey(storage) Then
		    // We've seen this! Bail out
		    Return
		  End If
		  // Ok, lets add our storage to the list
		  alreadySeen.Value(storage) = true
		  
		  xdoc = parent.OwnerDocument
		  n = StorageCount(storage) - 1
		  For i = 0 To n
		    // Key
		    key = StorageKey(storage, i)
		    
		    // Modified by Kem Tekinay.
		    // Some plists will have array at the root. If such a plist is parsed by this module,
		    // there will only be one element in the dictionary and its key will be "cfarray".
		    // In that case, we ignore that first key.
		    If key <> nil and ( Dictionary( storage ).Count <> 1 or key <> "cfarray" ) Then // It's a keyed storage
		      node = parent.AppendChild(xdoc.CreateElement("key"))
		      node.AppendChild(xdoc.CreateTextNode(key.StringValue))
		      IndentNode node, indentLevel
		    End If
		    
		    // Value
		    node = nil
		    multilineTag = False
		    value = StorageValue(storage, i)
		    dim vType as Integer = value.Type
		    
		    if value.IsArray then
		      node = xdoc.CreateElement("array")
		      ParseStorage value, node, alreadySeen, indentLevel+1, plist
		      multilineTag = True
		    else
		      Select Case vType
		      Case 0 // Null
		        // If it's a plist, we can't use null, so lets use false
		        If plist Then
		          node = xdoc.CreateElement("false")
		        Else
		          node = xdoc.CreateElement("null")
		        End If
		      Case 2 // Integer
		        node = xdoc.CreateElement("integer")
		        node.AppendChild(xdoc.CreateTextNode(Str(value.IntegerValue)))
		      case 3 // Long
		        node = xdoc.CreateElement( "integer" )
		        node.AppendChild( xdoc.CreateTextNode( str( value.Int64Value ) ) )
		      Case 5 // Double/Single
		        node = xdoc.CreateElement("real")
		        node.AppendChild( xdoc.CreateTextNode( value.StringValue ) ) // Modified by Kem Tekinay. Replaced str with format to prevent truncation of the value
		      Case 7 // Date
		        node = xdoc.CreateElement("date")
		        dim s2 as String = value.DateValue.SQLDateTime
		        if plist then
		          s2 = s2.Replace(" ","T")+"Z"
		        end
		        node.AppendChild(xdoc.CreateTextNode(s2))
		      Case 8 // String
		        node = xdoc.CreateElement("string")
		        s = ConvertEncoding(value.StringValue, Encodings.UTF8) // Convert to UTF8
		        If s.Encoding = nil Then s = DefineEncoding(s, Encodings.UTF8) // If encoding was undefined, convert fails. Simply define instead
		        node.AppendChild(xdoc.CreateTextNode(s))
		      Case 9 // Object
		        // Is this a dictionary, memoryblock or folderitem?
		        If value.ObjectValue IsA Dictionary Then
		          // We can parse this dictionary
		          node = xdoc.CreateElement("dict")
		          ParseStorage Dictionary(value.ObjectValue), node, alreadySeen, indentLevel+1, plist
		          multilineTag = True
		        ElseIf value.ObjectValue IsA MemoryBlock Then
		          // We can parse this memoryblock
		          node = xdoc.CreateElement("data")
		          data = Split(EncodeBase64(MemoryBlock(value.ObjectValue), 45), ChrB(13)+ChrB(10)) // 45 is what plists use
		          For Each s In data
		            tempNode = node.AppendChild(xdoc.CreateTextNode(DefineEncoding(s, Encodings.ASCII)))
		            IndentNode tempNode, indentLevel
		          Next
		          multilineTag = True
		        ElseIf value.ObjectValue IsA FolderItem And Not plist Then // We can't output this if it's plist-compatible
		          // Do the same thing as a memoryblock, but with a different tag
		          node = xdoc.CreateElement("file")
		          data = Split(EncodeBase64(FolderItem(value.ObjectValue).GetSaveInfo(Nil), 45), ChrB(13)+ChrB(10))
		          For Each s In Data
		            tempNode = node.AppendChild(xdoc.CreateTextNode(s))
		            IndentNode tempNode, indentLevel
		          Next
		          multilineTag = True
		        Else
		          // Arbitrary object?
		          break
		        End If
		      Case 11 // Boolean
		        If value.BooleanValue = True Then
		          node = xdoc.CreateElement("true")
		        Else
		          node = xdoc.CreateElement("false")
		        End If
		      Case 16 // Color
		        If plist Then
		          // We can't output colors in plists
		          // Lets just add a False node
		          node = xdoc.CreateElement("false")
		        Else
		          node = xdoc.CreateElement("color")
		          node.AppendChild(xdoc.CreateTextNode("#" + Hex(value.IntegerValue)))
		        End If
		      End Select
		    end
		    
		    if node = nil then
		      // Buh? We should never reach this point, but just in case, lets add a null value
		      // However, if it's plist-compatible mode, we have to add a false value, since it doesn't support null
		      break
		      if plist Then
		        node = xdoc.CreateElement("false")
		      Else
		        node = xdoc.CreateElement("null")
		      End If
		    end
		    
		    parent.AppendChild node // workaround for AppendChild() as XmlNode bug
		    IndentNode node, indentLevel, multilineTag
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ParseXML(parent As XmlNode, storage As Variant, firstIteration As Boolean = False)
		  // Modified by Kem Tekinay.
		  // Added firstIteration parameter.
		  // Because a plist can have at its root any valid type, the first iteration of this method
		  // has to check to see what it is. If it's anything other than "dict", it has create an initial key
		  // that is the right type.
		  
		  Dim node As XmlNode
		  Dim key As Variant
		  Dim v As Variant
		  Dim d As Dictionary
		  Dim mb As MemoryBlock
		  
		  //ClearStorage storage
		  
		  if firstIteration and parent.Name <> "dict" then
		    key = "cf" + parent.Name // Set the initial key since we aren't really starting with a dictionary.
		    node = parent
		  else
		    node = parent.FirstChild
		  end if
		  
		  While node <> nil
		    // We only want to deal with element nodes
		    // The only other type of node that *should* show up is
		    // a text node with only whitespace. However, even if
		    // other nodes show up, we should ignore them, since
		    // we're not a validator
		    If node.Type = XmlNodeType.ELEMENT_NODE Then // Element node
		      If key = nil And node.Name = "key" Then
		        key = NodeContents(node)
		      Else
		        Select Case node.Name
		        Case "null"
		          StoreValue key, nil, storage
		        Case "integer"
		          StoreValue key, Val(NodeContents(node)) \ 1, storage
		        Case "real"
		          StoreValue key, Val(NodeContents(node)), storage
		        Case "date"
		          v = NodeContents(node)
		          if Strcomp(Right(v, 1), "Z", 0) = 0 then
		            // plist format
		            v = v.StringValue.Left(v.StringValue.Len-1).Replace("T", " ")
		          end
		          StoreValue key, v.DateValue, storage
		        Case "string"
		          StoreValue key, NodeContents(node), storage
		        Case "dict"
		          v = StorageByKey(storage, key)
		          If v.Type = 9 And v.ObjectValue IsA Dictionary Then
		            d = Dictionary(v.ObjectValue)
		          Else
		            d = New Dictionary
		          End If
		          ParseXML node, d
		          StoreValue key, d, storage
		        Case "array"
		          dim col() as Variant
		          ParseXML node, col
		          StoreValue key, col, storage
		        Case "data"
		          // Lets parse our Base64-encoded data
		          mb = DecodeBase64(NodeContents(node))
		          StoreValue key, mb, storage
		        Case "file"
		          // Lets parse our Base64-encoded alias data
		          StoreValue key, GetFolderItem(DecodeBase64(NodeContents(node))), storage
		        Case "true"
		          StoreValue key, True, storage
		        Case "false"
		          StoreValue key, False, storage
		        Case "color"
		          v = "&h" + NodeContents(node).Mid(1)
		          StoreValue key, v.ColorValue, storage
		        End Select
		        key = nil
		      End If
		    End If
		    node = node.NextSibling
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SaveXML(Extends xmldict As Dictionary, XMLFile As FolderItem, plist As Boolean = False, indented as Boolean = true) As Boolean
		  dim txt as String = xmldict.ExportXMLString(plist, indented)
		  
		  if txt <> "" then
		    'dim bs As BinaryStream = XMLFile.CreateBinaryFile("")
		    dim bs as BinaryStream = BinaryStream.Create( XMLFile, true )
		    if bs <> nil then
		      bs.Write txt
		      bs.Close
		      return true
		    end
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function StorageByKey(storage As Variant, key As Variant) As Variant
		  // This is only valid for dictionaries
		  // The only purpose is to make Jarvis Badgley's request work, i.e. preserve existing dictionaries
		  
		  If storage.Type = 9 Then
		    If storage.ObjectValue IsA Dictionary And Dictionary(storage.ObjectValue).HasKey(key) Then
		      Return Dictionary(storage.ObjectValue).Value(key)
		    End If
		  End If
		  
		  Return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function StorageCount(storage As Variant) As Integer
		  If storage.Type = 9 Then
		    If storage.ObjectValue IsA Dictionary Then
		      Return Dictionary(storage.ObjectValue).Count
		    End If
		  ElseIf storage.IsArray Then
		    dim t as Integer = storage.ArrayElementType
		    if t = Variant.TypeString then
		      dim a() as String = storage
		      return a.Ubound+1
		    elseif t = Variant.TypeInteger then
		      dim a() as Integer = storage
		      return a.Ubound+1
		    elseif t = Variant.TypeBoolean then
		      dim a() as Boolean = storage
		      return a.Ubound+1
		    elseif t = Variant.TypeDouble then
		      dim a() as Double = storage
		      return a.Ubound+1
		    elseif t = Variant.TypeDate then
		      dim a() as Date = storage
		      return a.Ubound+1
		    elseif t = Variant.TypeLong then
		      dim a() as Int64 = storage
		      return a.Ubound+1
		    elseif t = Variant.TypeObject then
		      dim a() as Object = storage
		      return a.Ubound+1
		    end
		    
		    // fallback for unknown types - if this gets a TypeMismatchException, add the missing type to another elseif/dim/return above
		    dim a() as Variant = storage
		    return a.Ubound+1
		    
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function StorageKey(storage As Variant, index As Integer) As Variant
		  If storage.Type = 9 And storage.ObjectValue IsA Dictionary Then
		    Return Dictionary(storage.ObjectValue).Key(index)
		  End If
		  Return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function StorageValue(storage As Variant, index As Integer) As Variant
		  If storage.Type = 9 Then
		    If storage.ObjectValue IsA Dictionary Then
		      dim key as Variant = Dictionary(storage.ObjectValue).Key(index)
		      Return Dictionary(storage.ObjectValue).Value(key)
		    End If
		  ElseIf storage.IsArray Then
		    dim t as Integer = storage.ArrayElementType
		    if t = Variant.TypeString then
		      dim a() as String = storage
		      return a(index)
		    elseif t = Variant.TypeInteger then
		      dim a() as Integer = storage
		      return a(index)
		    elseif t = Variant.TypeBoolean then
		      dim a() as Boolean = storage
		      return a(index)
		    elseif t = Variant.TypeDouble then
		      dim a() as Double = storage
		      return a(index)
		    elseif t = Variant.TypeDate then
		      dim a() as Date = storage
		      return a(index)
		    elseif t = Variant.TypeLong then
		      dim a() as Int64 = storage
		      return a(index)
		    elseif t = Variant.TypeObject then
		      dim a() as Object = storage
		      return a(index)
		    end
		    
		    // fallback for unknown types - if this gets a TypeMismatchException, add the missing type to another elseif/dim/return above
		    dim a() as Variant = storage
		    return a(index)
		    
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub StoreValue(key As Variant, value As Variant, storage As Variant)
		  If storage.IsArray Then
		    dim t as Integer = storage.ArrayElementType
		    if t = Variant.TypeString then
		      dim a() as String = storage
		      a.Append value
		      return
		    elseif t = Variant.TypeInteger then
		      dim a() as Integer = storage
		      a.Append value
		      return
		    elseif t = Variant.TypeBoolean then
		      dim a() as Boolean = storage
		      a.Append value
		      return
		    elseif t = Variant.TypeDouble then
		      dim a() as Double = storage
		      a.Append value
		      return
		    elseif t = Variant.TypeDate then
		      dim a() as Date = storage
		      a.Append value
		      return
		    elseif t = Variant.TypeLong then
		      dim a() as Int64 = storage
		      a.Append value
		      return
		    elseif t = Variant.TypeObject then
		      dim a() as Object = storage
		      a.Append value
		      return
		    end
		    
		    // fallback for unknown types - if this gets a TypeMismatchException, add the missing type to another elseif/dim/Append/return above
		    dim a() as Variant = storage
		    a.Append value
		    
		  ElseIf storage.Type = 9 Then
		    If storage.ObjectValue IsA Dictionary And key <> nil Then
		      Dictionary(storage.ObjectValue).Value(key) = value
		    End If
		  End If
		End Sub
	#tag EndMethod


	#tag Note, Name = About
		This is now part of the open source "MacOSLib"
		
		Original sources are located here:  https://github.com/macoslib/macoslib
	#tag EndNote

	#tag Note, Name = Version History
		Kevin Ballard
		kevin@sb.org
		http://www.tildesoft.com/
		
		v1.2.8:
		- (by Thomas Tempelmann, tempelmann@gmail.com): Got rid of Collection in favor of using real arrays
		
		v1.2.7:
		- (by Thomas Tempelmann, tempelmann@gmail.com): Fixed the Date format for plists
		
		v1.2.6:
		- Approximately tripled the speed of loading an XML file. Unfortunately, I can't do the same for saving because
		  the Dictionary class lacks an appropriate iterator-style access so my Ishmale the Painter's algorithm is required
		
		v1.2.5:
		- As per Jarvis Badgley's request, made it now respect existing dictionaries.
		  This means that if you create a set of nested dictionaries that corresponds to the plist structure,
		  when parsing the plist it will use the existing dictionaries rather than overwriting with its own. Of course,
		  this is not valid when parsing an array in the plist.
		  The main purpose of this is to set up default values before parsing the plist.
		  
		  Note: This means I no longer clear the dictionary when I parse the XML file. If you want to keep the old
		           behaviour, do a Dictionary.clear before parsing the XML file
		
		v1.2.4:
		- Made line endings use EndOfLine instead of linefeed
		- Removed some commented-out code left over from the 5.5.1fc1 hack
		
		v1.2.3:
		- Removed said hack, due to fix in 5.5.1fc4. If you're using 5.5.1fc1-fc3, upgrade
		
		v1.2.2:
		- Added a hack to work around the XmlDocument.AppendChild() As XmlNode bug present in 5.5.1fc1
		- If you pass a variant of an unknown type (something that should never happen), it now outputs "false"
		  instead of "null" in plist-compatible mode
		
		v1.2.1:
		- Fixed bug where plist-compatible mode wasn't preserved in nested dictionaries/collections
		- Fixed plist-compatible mode so that colors are now output as False instead (since plist doesn't support the color type)
		
		v1.2:
		- Fixed double output to use Format() instead of Str()
		- SaveXML now sets file type/creator to "" instead of using the text filetype
		- Can now parse plist files
		- Can now save as plist files with an option boolean to all the export/save methods
		
		v1.1:
		- Added support for Collections as a replacement for lack of array support
		     Note that keys in Collections are not preserved
		- Ugraded version attribute of resulting document to "1.1" - previous versions of XMLDictionary won't read new documents
		- When adding a string value to a document, it now converts it to UTF-8. If conversion failed (because no encoding was present originally),
		     it simply defines the encoding as UTF-8
		
		v1.0.1:
		- Added support for 5.5b6 changes
		
		v1.0:
		- Initial release
	#tag EndNote


	#tag Constant, Name = CurrentVersion, Type = String, Dynamic = False, Default = \"1.1", Scope = Private
	#tag EndConstant

	#tag Constant, Name = PlistDTD, Type = String, Dynamic = False, Default = \"<!DOCTYPE plist PUBLIC \"-//Apple Computer//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">", Scope = Private
	#tag EndConstant

	#tag Constant, Name = PlistVersion, Type = String, Dynamic = False, Default = \"1.0", Scope = Private
	#tag EndConstant

	#tag Constant, Name = XMLDictDTD, Type = String, Dynamic = False, Default = \"<!DOCTYPE xmldict PUBLIC \"-//Tildesoft//DTD XMLDICT 1.1//EN\" \"http://www.tildesoft.com/DTDs/XMLDictionary-1.1.dtd\">", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
