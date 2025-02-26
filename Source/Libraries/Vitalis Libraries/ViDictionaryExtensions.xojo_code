#tag Module
Protected Module ViDictionaryExtensions
	#tag Method, Flags = &h21
		Private Sub LoadChildren(extends TheDict as Dictionary, xNode as XmlNode)
		  
		  
		  // --- Flat
		  if xNode.ChildCount = 1 then
		    dim entry as new Dictionary
		    
		    
		    // Get attributes
		    if xNode.AttributeCount > 0 then
		      for attrIndex as Integer = 0 to xNode.AttributeCount-1
		        dim xAttribute as XmlAttribute = xNode.GetAttributeNode( attrIndex )
		        entry.Value( "attribute-" + xAttribute.Name ) = xAttribute.Value
		      next
		    end if
		    
		    // Set TheDict value
		    if xNode.FirstChild IsA XmlTextNode then
		      if entry.Count > 0 then
		        entry.Value( "text-value") = xNode.FirstChild.Value
		        TheDict.Value( xNode.Name ) = entry
		      else
		        TheDict.Value( xNode.Name ) = xNode.FirstChild.Value
		      end if
		    end if
		    
		    
		    
		    // --- multi
		  elseif xNode.ChildCount > 0 then
		    
		    for xNodeChildIndex as Integer = 0 to xNode.ChildCount-1
		      dim xChild as XmlNode = xNode.Child(xNodeChildIndex)
		      
		      dim entry as new Dictionary
		      
		      // Get attributes
		      if xChild.AttributeCount > 0 then
		        for attrIndex as Integer = 0 to xChild.AttributeCount-1
		          dim xAttribute as XmlAttribute = xChild.GetAttributeNode( attrIndex )
		          entry.Value( "attribute-" + xAttribute.Name ) = xAttribute.Value
		        next
		      end if
		      
		      
		      // If we are dealing with a plain text node.
		      if xChild.FirstChild IsA XmlTextNode then
		        if entry.Count > 0 then
		          entry.Value( "text-value") = xChild.FirstChild.Value
		          TheDict.Value( xChild.Name ) = entry
		        else
		          TheDict.Value( xChild.Name ) = xChild.FirstChild.Value
		        end if
		        
		        // If we are dealing with a multi-layered node.
		      else
		        
		        if xChild.ChildCount > 0 then
		          dim entries() as Dictionary
		          
		          for i as Integer = 0 to xChild.ChildCount-1
		            dim xChildEntry as new Dictionary
		            xChildEntry.LoadChildren( xChild.Child(i) )
		            entries.Append xChildEntry
		          next
		          
		          
		          if entries.Ubound > -1 then
		            TheDict.Value( xChild.Name ) = entries
		          else
		            log "ViDictionaryExtensions.LoadChildren() :: Couldn't find child values"
		            Break
		          end if
		          
		        end if // @END xChild.ChildCount > 0
		        
		      end if // @END xChild.FirstChild = text
		      
		      
		    next
		    
		  end if
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadPlist(Extends dict as Dictionary, FileName as String, Location as FolderItem)
		  
		  if NOT FileName.EndsWith( ".plist" ) then
		    FileName = FileName + ".plist"
		  end if
		  
		  
		  if Location <> Nil and Location.Exists and Location.Child( FileName ).Exists and Location.Child( FileName ).IsReadable then
		    if dict.LoadXML( Location.Child( FileName ) ) then
		      // Success
		    else
		      log "Plist couldn't be read"
		      Break
		    end if
		  else
		    log "Plist couldn't be read"
		    Break
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveAsPlist(Extends dict as Dictionary, FileName as String, Destination as FolderItem)
		  
		  if NOT FileName.EndsWith( ".plist" ) then
		    FileName = FileName + ".plist"
		  end if
		  Destination = Destination.Child( FileName )
		  
		  
		  if Destination <> Nil and Destination.IsWriteable then
		    if dict.SaveXML( Destination, True, False ) then
		      log "Successfully saved dictionary " + FileName
		    else
		      log "Failed to save dictionary " + FileName
		      Break
		    end if
		  else
		    log "Failed to save dictionary " + FileName
		    Break
		  end if
		  
		  
		  Exception err as TypeMismatchException // Used a variant that doesn't conform to plist types such as images.
		    log  "ViDictionaryExtensions.SaveAsPlist( TypeMismatchException )", 2
		    Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function XMLToDict(Extends xmldict As Dictionary, XMLFile As FolderItem) As Boolean
		  Dim tos As TextInputStream
		  Dim s As String
		  
		  'tos = XMLFile.OpenAsTextFile()
		  tos = TextInputStream.Open( XMLFile )
		  If tos <> nil Then
		    s = tos.ReadAll
		    tos.Close
		    Return xmldict.XMLToDict(s)
		  Else
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function XMLToDict(extends TheDict as Dictionary, xml as string) As Boolean
		  dim xmlDoc as new XmlDocument
		  try
		    xmlDoc.LoadXml( xml )
		  Catch e as XmlException
		    log "Invalid XML"
		    Return False
		  end try
		  
		  TheDict.XMLToDict( xmlDoc )
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub XMLToDict(extends TheDict as Dictionary, xmlDoc as XmlDocument)
		  if TheDict = Nil then
		    TheDict = new Dictionary
		  end if
		  
		  xmlDoc.PreserveWhitespace = False
		  
		  TheDict.LoadChildren( xmlDoc.DocumentElement )
		  
		End Sub
	#tag EndMethod


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
