#tag Module
Protected Module ViXMLExtensions
	#tag Method, Flags = &h0
		Sub AppendChildCopy(extends parent as XMLNode, other as XMLNode)
		  // parent document for creating new objects
		  dim doc as XmlDocument = parent.OwnerDocument
		  dim neu as XmlNode
		  
		  // create matching type of node in new document
		  if other isa XmlTextNode then
		    neu = doc.CreateTextNode(other.Value)
		  elseif other isa XmlComment then
		    neu = doc.CreateComment(other.Value)
		  else
		    neu = doc.CreateElement(other.Name)
		  end if
		  
		  // now copy all attributes
		  dim u as integer = other.AttributeCount-1
		  if u < 50 then
		    for i as integer = 0 to u
		      dim a as XmlAttribute = other.GetAttributeNode(i)
		      if a <> Nil then
		        neu.SetAttribute(a.Name, a.Value)
		      else
		        Break
		      end if
		    next
		  else
		    Break
		  end if
		  
		  // copy all children
		  dim c as XmlNode = other.FirstChild
		  while c <> nil
		    neu.AppendChildCopy c
		    
		    c = c.NextSibling
		  wend
		  
		  // and store new child
		  parent.AppendChild neu
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AppendChildCopy(extends parent as XMLNode, other as XMLNode) As XMLNode
		  // parent document for creating new objects
		  dim doc as XmlDocument = parent.OwnerDocument
		  dim neu as XmlNode
		  
		  // create matching type of node in new document
		  if other isa XmlTextNode then
		    neu = doc.CreateTextNode(other.Value)
		  elseif other isa XmlComment then
		    neu = doc.CreateComment(other.Value)
		  else
		    neu = doc.CreateElement(other.Name)
		  end if
		  
		  // now copy all attributes
		  dim u as integer = other.AttributeCount-1
		  if u < 50 then
		    for i as integer = 0 to u
		      dim a as XmlAttribute = other.GetAttributeNode(i)
		      if a <> Nil then
		        neu.SetAttribute(a.Name, a.Value)
		      else
		        Break
		      end if
		    next
		  else
		    Break
		  end if
		  
		  // copy all children
		  dim c as XmlNode = other.FirstChild
		  while c <> nil
		    neu.AppendChildCopy c
		    
		    c = c.NextSibling
		  wend
		  
		  // and store new child
		  parent.AppendChild neu
		  
		  Return neu
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Children(Extends xNode as XmlNode) As XmlNode()
		  dim xChildren() as XmlNode
		  
		  if xNode.ChildCount > 0 then
		    for index as Integer = 0 to xNode.ChildCount -1
		      xChildren.Append xNode.Child(index)
		    next
		  end if
		  
		  Return xChildren
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasNodeWithName(extends xNode as XMLNode, NodeName as String) As Boolean
		  if xNode <> Nil and xNode.ChildCount > 0 then
		    
		    
		    for index as Integer = 0 to xNode.ChildCount-1
		      var xLeaf as XMLNode = xNode.Child(index)
		      
		      if xLeaf.Name = NodeName then
		        Return true
		      else
		        'Continue
		      end if
		      
		    next
		    
		  end if
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IndentCloseTag(extends node as XMLNode, level as Integer, IndentCharacters as string = "  ")
		  Var i As Integer
		  Var s As String
		  s = EndOfLine
		  For i = 1 To level
		    s = s + IndentCharacters
		  Next
		  node.AppendChild(node.OwnerDocument.CreateTextNode(s))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IndentDocument(Extends xDoc as XMLDocument, IndentCharacters as String = "  ")
		  if xDoc <> Nil and xDoc.FirstChild <> Nil then
		    xDoc.FirstChild.Indent(0, IndentCharacters)
		    xDoc.FirstChild.IndentNode(0, IndentCharacters)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IndentNode(extends node as XMLNode, level as Integer = 0, IndentCharacters as string = "  ")
		  Var i As Integer
		  Var s As String
		  s = EndOfLine
		  For i = 1 To level
		    s = s + IndentCharacters
		  Next
		  node.Parent.Insert(node.OwnerDocument.CreateTextNode(s),node)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertCopy(extends parent as XMLNode, other as XMLNode, beforeChild as XMLNode)
		  // parent document for creating new objects
		  dim doc as XmlDocument = parent.OwnerDocument
		  dim neu as XmlNode
		  
		  // create matching type of node in new document
		  if other isa XmlTextNode then
		    neu = doc.CreateTextNode(other.Value)
		  elseif other isa XmlComment then
		    neu = doc.CreateComment(other.Value)
		  else
		    neu = doc.CreateElement(other.Name)
		  end if
		  
		  // now copy all attributes
		  dim u as integer = other.AttributeCount-1
		  for i as integer = 0 to u
		    dim a as XmlAttribute = other.GetAttributeNode(i)
		    neu.SetAttribute(a.Name, a.Value)
		  next
		  
		  // copy all children
		  dim c as XmlNode = other.FirstChild
		  while c <> nil
		    neu.AppendChildCopy c
		    
		    c = c.NextSibling
		  wend
		  
		  // and store new child
		  'parent.AppendChild neu
		  parent.Insert( neu, beforeChild )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NextPossibleSibling(Extends xNode as XmlNode) As XmlNode
		  if xNode <> Nil then
		    if xNode.ChildCount > 0 then // Dig into the children
		      Return xNode.FirstChild
		    else
		      if xNode.Parent.LastChild.Compare(xNode) = 0 then // Reached last child of block
		        Return xNode.ParentSibling
		      else
		        Return xNode.NextSibling
		      end if
		    end if
		  else
		    Return Nil
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NodesWithName(extends xNode as XMLNode, NodeName as String) As XMLNode()
		  
		  var collectedNodes() as XMLNode
		  
		  if xNode <> Nil and xNode.ChildCount > 0 then
		    for index as Integer = 0 to xNode.ChildCount-1
		      var xLeaf as XMLNode = xNode.Child(index)
		      
		      if xLeaf <> Nil and xLeaf.Name = NodeName then
		        collectedNodes.Add xLeaf
		      end if
		    next
		  end if
		  
		  Return collectedNodes
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ParentSibling(Extends xNode as XmlNode) As XmlNode
		  if xNode.OwnerDocument = Nil then // Reached the document root
		    Return Nil
		  else
		    if xNode.Parent.NextSibling <> Nil then
		      Return xNode.Parent.NextSibling
		    else
		      Return xNode.Parent.ParentSibling // Recursive magic
		    end if
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveXMLFormatted(extends xDoc as xmlDocument, Destination as FolderItem, IndentCharacters as String = "  ")
		  If xDoc <> Nil and Destination <> Nil Then
		    var arg as new XMLDocument( xDoc.ToString )
		    arg.IndentDocument( IndentCharacters )
		    
		    Var fileStream As TextOutputStream = TextOutputStream.Create(Destination)
		    fileStream.Write( arg.ToString.Replace("></compendium>", ">" +EndOfLine+ "</compendium>") + EndOfLine )
		    fileStream.Close
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueOfNodeWithName(extends xNode as XMLNode, NodeName as String, value as String)
		  if xNode <> Nil and xNode.ChildCount > 0 then
		    
		    for index as Integer = 0 to xNode.ChildCount-1
		      var xLeaf as XMLNode = xNode.Child(index)
		      
		      if xLeaf <> Nil and xLeaf.FirstChild <> Nil and xLeaf.Name = NodeName then
		        xLeaf.FirstChild.Value = value
		      end if
		      
		    next
		    
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValueOfNodeWithName(extends xNode as XMLNode, NodeName as String) As String
		  if xNode <> Nil and xNode.ChildCount > 0 then
		    
		    for index as Integer = 0 to xNode.ChildCount-1
		      var xLeaf as XMLNode = xNode.Child(index)
		      
		      if xLeaf <> Nil and xLeaf.FirstChild <> Nil and xLeaf.Name = NodeName then
		        Return xLeaf.FirstChild.Value
		      end if
		      
		    next
		    
		    
		  end if
		  
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValuesArray(Extends xNode as XmlNode) As String()
		  if xNode <> Nil and xNode.ChildCount > -1 then
		    dim stringArray() as String
		    
		    for index as Integer = 0 to xNode.ChildCount -1
		      dim xItem as XmlNode = xNode.Child(index)
		      
		      if xItem <> Nil and xItem.FirstChild <> Nil and _
		        xItem.FirstChild.Value <> "" and NOT stringArray.Contains( xItem.FirstChild.Value )then
		        stringArray.Append xItem.FirstChild.Value
		      end if
		      
		    next
		    
		    Return stringArray
		    
		  end if
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
