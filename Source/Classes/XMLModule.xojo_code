#tag Module
Protected Module XMLModule
	#tag Method, Flags = &h0
		Sub AddSourceTo(xParent as XMLNode, Sources() as String)
		  var descriptionLines() as String
		  
		  var xChildren() as XMLNode = xParent.Children
		  
		  'var xNewChildren() as XMLNode
		  for each xChild as XMLNode in xChildren
		    'xNewChildren.Add xChild'.Clone
		    '
		    if xChild.Name = "text" then
		      var xValue as string
		      if xChild.FirstChild <> Nil then
		        xValue = xChild.FirstChild.Value
		      end if
		      
		      descriptionLines.Add xValue
		    end if
		  next
		  
		  var Description as String = string.FromArray( descriptionLines, EndOfLine )
		  
		  if Description.Contains( "Source:" ) then
		    Description = Description.NthField("Source:", 1).Trim
		  end if
		  
		  xParent.RemoveAllChildren
		  
		  
		  var containsDescription as Boolean = False
		  for index as Integer = 0 to xChildren.LastIndex
		    
		    if xChildren(index).Name <> "text" then
		      xParent.AppendChildCopy( xChildren(index) )
		    elseif NOT containsDescription then
		      SetDescription( xParent, Description, Sources )
		      
		      containsDescription = True
		    end if
		    
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendChildFromString(extends xParent as XMLNode, s as String)
		  var xDoc as XMLDocument = xParent.OwnerDocument
		  var xRoot as XMLNode = xDoc.FirstChild
		  
		  var xNode as XMLNode = s.ToXML
		  
		  if xRoot <> Nil and xNode <> Nil then
		    xNode = xRoot.AppendChildCopy( xNode )
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AppendChildFromString(extends xParent as XMLNode, s as String) As XMLNode
		  var xDoc as XMLDocument = xParent.OwnerDocument
		  var xRoot as XMLNode = xDoc.FirstChild
		  
		  var xNode as XMLNode = s.ToXML
		  
		  if xRoot <> Nil and xNode <> Nil then
		    xNode = xRoot.AppendChildCopy( xNode )
		  end if
		  
		  Return xNode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DescriptionFromNode(xNode as XMLNode) As String
		  var TextLines(), MergedText as String
		  'var firstTextNode as XMLNode
		  
		  if xNode <> Nil and xNode.ChildCount > 0 then
		    
		    for each xChild as XMLNode in xNode.Children
		      
		      if xChild.Name = "text" or xChild.Name = "description" then
		        
		        // get text
		        if xChild.FirstChild <> Nil then
		          TextLines.Add xChild.FirstChild.Value
		        else
		          TextLines.Add ""
		        end if
		        
		        
		        'if firstTextNode = Nil then
		        'firstTextNode = xChild
		        'else
		        'xChild.Parent.RemoveChild( xChild )
		        'end if
		        
		      end if // @END xchild is text
		      
		    next // @NEXT xChild
		    
		  end if // @END xnode <> Nil
		  
		  if TextLines.LastIndex > -1 then 'firstTextNode <> Nil then
		    MergedText = string.FromArray( TextLines, EndOfLine )
		    'firstTextNode.SetValue( MergedText )
		    Return MergedText
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasChild(extends xParent as XMLNode, xNode as XMLNode) As Boolean
		  if xParent <> Nil and xNode <> Nil then
		    
		    for index as Integer = 0 to xParent.ChildCount-1
		      var compareNode as XMLNode = xParent.Child(index)
		      
		      if compareNode = xNode then
		        Return True
		      end if
		    next
		    
		  end if
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MergeTextNodesFrom(xNode as XMLNode)
		  var TextLines(), MergedText as String
		  var firstTextNode as XMLNode
		  
		  if xNode <> Nil and xNode.ChildCount > 0 then
		    
		    for each xChild as XMLNode in xNode.Children
		      
		      if xChild.Name = "text" or xChild.Name = "description" then
		        
		        // get text
		        if xChild.FirstChild <> Nil then
		          TextLines.Add xChild.FirstChild.Value
		        else
		          TextLines.Add ""
		        end if
		        
		        
		        if firstTextNode = Nil then
		          firstTextNode = xChild
		        else
		          xChild.Parent.RemoveChild( xChild )
		        end if
		        
		      end if // @END xchild is text
		      
		    next // @NEXT xChild
		    
		  end if // @END xnode <> Nil
		  
		  if firstTextNode <> Nil then
		    MergedText = string.FromArray( TextLines, EndOfLine )
		    firstTextNode.SetValue( MergedText )
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllAttributes(Extends xNode as XMLNode)
		  if xNode.AttributeCount > 0 then
		    for i as Integer = xNode.AttributeCount-1 DownTo 0
		      var xAttribute as XMLAttribute = xNode.GetAttributeNode(i)
		      xNode.RemoveAttributeNode( xAttribute )
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllChildren(Extends xNode as XMLNode)
		  for each xChild as XMLNode in xNode.Children
		    xNode.RemoveChild( xChild )
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDescription(ByRef xNode as XMLNode, Description as String, Sources() as String, type as string = "text")
		  
		  
		  
		  // MultiText Tags
		  var MultiTextTags as Boolean = AppSettings.Prefs.Value("DescriptionMultiTextTags", False)
		  var descriptionLines() as String = Description.Split( EndOfLine )
		  
		  // Multiline Source
		  var Source as String
		  if Sources <> Nil and Sources.LastIndex > -1 then
		    
		    // Multiline Source
		    var MultilineSource as Boolean = AppPrefs.SourceMultiline 'AppSettings.Prefs.Value("SourceMultiline", True)
		    if MultilineSource then
		      Source = StringFromArray( Sources, EndOfLine + chr(9) + chr(9) )
		      'if Source.Contains(" p. " then
		      'Source = Source.ReplaceAllRegEx("p\. (.*?), (\w+)", "p. $1,\n\t\t$2")
		      'else
		      'Source = Source.ReplaceAllRegEx( "(\w+), (\w+)", "$1,\n\t\t$2" )
		      'end if
		    Else
		      // Single Line Source
		      Source = StringFromArray( Sources, ", " )
		      'Source = source.ReplaceAll( EndOfLine, " " ).ReplaceAll( chr(13), " " ).ReplaceAll( chr(9), "" )
		    end if
		    
		    if descriptionLines.LastIndex > -1 then
		      
		      // Add Source to description
		      var linespacing as String = EndOfLine
		      if ( NOT descriptionLines( descriptionLines.LastIndex ).Contains( "Proficiency:" ) and NOT descriptionLines( descriptionLines.LastIndex ).Contains( "Found on:" ) and NOT descriptionLines( descriptionLines.LastIndex ).Contains( "Notes:" ) and NOT descriptionLines( descriptionLines.LastIndex ).Contains( "Stat Block Origin:" )  ) or descriptionLines( descriptionLines.LastIndex ).StartsWith( chr(9) ) then
		        linespacing = EndOfLine + EndOfLine
		      end if
		      
		      Description = Description + linespacing + "Source:" + chr(9) + Source
		    else
		      
		      Description = Description + "Source:" + chr(9) + Source
		    end if
		  end if
		  
		  
		  // Add to xNode
		  if MultiTextTags then 'and type = "text" then
		    descriptionLines = Description.Split( EndOfLine )
		    
		    for each DescriptionText as string in descriptionLines
		      
		      if DescriptionText = "" then
		        var xLeaf as XMLNode = xNode.AppendNewChild( type ) // <text/> or <description/>
		      else
		        xNode.AppendSimpleChild( type, DescriptionText )
		      end if
		      
		    next
		    
		  else
		    xNode.AppendSimpleChild( type, Description )
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDescriptionOLD(ByRef xNode as XMLNode, Description as String, Source as String, type as string = "text")
		  
		  
		  
		  // MultiText Tags
		  var MultiTextTags as Boolean = AppSettings.Prefs.Value("DescriptionMultiTextTags", False)
		  var descriptionLines() as String = Description.Split( EndOfLine )
		  
		  // Multiline Source
		  if Source <> "" then
		    
		    // Multiline Source
		    var MultilineSource as Boolean = AppPrefs.SourceMultiline 'AppSettings.Prefs.Value("SourceMultiline", True)
		    if MultilineSource then
		      'if Source.Contains(" p. " then
		      Source = Source.ReplaceAllRegEx("p\. (.*?), (\w+)", "p. $1,\n\t\t$2")
		      'else
		      Source = Source.ReplaceAllRegEx( "(\w+), (\w+)", "$1,\n\t\t$2" )
		      'end if
		    Else
		      // Single Line Source
		      Source = source.ReplaceAll( EndOfLine, " " ).ReplaceAll( chr(13), " " ).ReplaceAll( chr(9), "" )
		    end if
		    
		    if descriptionLines.LastIndex > -1 then
		      
		      // Add Source to description
		      var linespacing as String = EndOfLine
		      if ( NOT descriptionLines( descriptionLines.LastIndex ).Contains( "Proficiency:" ) and NOT descriptionLines( descriptionLines.LastIndex ).Contains( "Found on:" ) and NOT descriptionLines( descriptionLines.LastIndex ).Contains( "Notes:" ) and NOT descriptionLines( descriptionLines.LastIndex ).Contains( "Stat Block Origin:" )  ) or descriptionLines( descriptionLines.LastIndex ).StartsWith( chr(9) ) then
		        linespacing = EndOfLine + EndOfLine
		      end if
		      
		      Description = Description + linespacing + "Source:" + chr(9) + Source
		    else
		      
		      Description = Description + "Source:" + chr(9) + Source
		    end if
		  end if
		  
		  
		  // Add to xNode
		  if MultiTextTags then 'and type = "text" then
		    descriptionLines = Description.Split( EndOfLine )
		    
		    for each DescriptionText as string in descriptionLines
		      
		      if DescriptionText = "" then
		        var xLeaf as XMLNode = xNode.AppendNewChild( type ) // <text/> or <description/>
		      else
		        xNode.AppendSimpleChild( type, DescriptionText )
		      end if
		      
		    next
		    
		  else
		    xNode.AppendSimpleChild( type, Description )
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetDiceRollsBCK(xNode as XMLNode, lst as Listbox)
		  if lst.LastIndex > -1 then
		    for row as Integer = 0 to lst.LastIndex
		      var value, attribute as String
		      value = lst.RowTagAt( row ).StringValue.Trim
		      attribute = lst.CellValueAt( row, 1 ).Trim
		      
		      if value.Trim <> "" then
		        var xLeaf as XMLNode = xNode.AppendNewChild( "roll" )
		        xLeaf.SetValue( value )
		        
		        if attribute <> "" then
		          xLeaf.SetAttribute( "description", attribute )
		        end if
		        
		      end if
		      
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SourceFrom(xNode as XMLNode) As String
		  
		  var source as String
		  
		  if xNode <> Nil then
		    var description as string
		    
		    if xNode.Name = "text" or xNode.Name = "description" then
		      
		      description = xNode.FirstChild.Value
		      
		    else
		      
		      for each xChild as XMLNode in xNode.Children
		        if xChild.Name = "text" or xChild.Name = "description" then
		          if xChild <> Nil and xChild.FirstChild <> Nil then
		            description = description + EndOfLine + xChild.FirstChild.Value
		          else
		            description = description + EndOfLine + EndOfLine
		          end if
		        end if
		      next
		      
		    end if
		    
		    description = description.Trim
		    
		    if description.Contains("Source:") then
		      source = SourceFromDescription( description )
		    elseif xNode.ToString.Contains("Source:") then
		      'Break
		      source = SourceFromDescription( description )
		    end if
		    
		    'if description <> "" and description.Contains("Source:") then
		    'source = Description.Match("Source:\s(.*?)\Z", 1)
		    'elseif xNode.ToString.Contains("Source:") then
		    'source = xNode.ToString.Match("Source:\s(.*?)\<", 1)
		    'end if
		    
		  end if
		  
		  Return source
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
