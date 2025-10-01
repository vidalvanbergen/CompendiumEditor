#tag Class
Protected Class XMLListbox
Inherits ListboxPro
	#tag Event
		Function ColumnSorted(column As Integer) As Boolean
		  'var t as new 
		  Timer.CallLater(0, AddressOf SortByRow)
		End Function
	#tag EndEvent

	#tag Event
		Sub DropObject(obj As DragItem, action As DragItem.Types)
		  SortByRow
		End Sub
	#tag EndEvent

	#tag Event
		Function PaintCellBackground(g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  if me.SelectedRowIndex <> row then
		    g.DrawAlternatingRows(row)
		    Return True
		  else
		    g.DrawingColor = CommonModule.SelectionColor
		    g.FillRect 0, 0, g.Width, g.Height
		    Return True
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Function PaintCellText(g as Graphics, row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  if row > -1 and row <= LastRowIndex then
		    
		    
		    if CellTextAt(row, 1) = "#comment" then 'and IsDarkMode then
		      g.DrawingColor = color.DisabledTextColor
		    end if
		    
		    if column = 1 then
		      
		      var icon as Picture
		      
		      Select case CellTextAt(row, 1)
		        
		      case "Background"
		        icon = template_compendium_banner_32
		        
		      case "Feat"
		        icon = template_compendium_feat_32
		        
		      case "Creature"
		        icon = template_compendium_creature_32
		        
		      case "Class"
		        icon = template_compendium_classes_32
		        
		      case "Species"
		        icon = template_compendium_species_32
		        
		      case "Spell"
		        icon = template_compendium_magic_32
		        
		      case "item"
		        icon = template_compendium_treasure_32
		        
		      case "#comment"
		        icon = template_icon_code_64
		        
		      else
		        icon = template_compendium_32
		        
		      End Select
		      
		      
		      if icon <> NIl then
		        dim pict, mask as Picture
		        pict = new Picture( icon.width, icon.Height, 32 )
		        mask = new Picture( icon.width, icon.Height, 32 )
		        
		        mask.Graphics.DrawPicture   icon, 0, 0
		        
		        if CellTextAt(row, 1) = "#comment" then
		          mask = mask.Lighten(0.6)
		        end if
		        
		        pict.Graphics.DrawingColor = g.DrawingColor
		        pict.Graphics.FillRectangle   0, 0, pict.Width, pict.Height
		        pict.ApplyMask( mask )
		        
		        
		        var iconSize as Integer = min( g.Width-4, g.Height-4 )
		        var iconPadding as Integer = 2
		        
		        if pict <> Nil then
		          g.DrawPicture pict, (g.Width/2) - (iconSize/2), iconPadding, iconSize, iconSize, 0, 0, pict.Width, pict.Height
		        end if
		        
		        Return True
		      else
		        Break
		      end if // @END icon <> Nil
		      
		    end if
		    
		  end if
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub RowExpanded(row As Integer)
		  if me.RowTagAt(row) IsA XMLNode then
		    var xNode as XMLNode = me.RowTagAt(row)
		    
		    var subclassNames() as string = Compendium.GetSubclassNames( xNode )
		    'subclassNames.Sort
		    
		    for index as Integer = 0 to subclassNames.LastIndex
		      me.AddRow subclassNames(index), "subclass"
		      me.RowTagAt( me.LastAddedRowIndex ) = Compendium.GetSubclassFeatures( xNode, subclassNames(index) )
		    next
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddXMLNodeRow(xNode as XMLNode)
		  
		  if xNode <> Nil then
		    var name, sortName as string
		    var type as string
		    
		    if xNode.FirstChild <> Nil then
		      name = xNode.ValueOfNodeWithName("name")
		    elseif xNode.Value <> "" then
		      if xNode.Value.Length < 100 then
		        name = xNode.Value
		      end if
		    end if
		    type = xNode.Name
		    
		    //
		    sortName = name
		    if xNode.ValueOfNodeWithName("sortname").Trim <> "" then
		      sortName = xNode.ValueOfNodeWithName("sortname").Trim
		    end if
		    
		    //
		    if type = "race" then
		      type = "species"
		    elseif type = "monster" then
		      type = "creature"
		    end if
		    
		    var pagenr as String = SourcePageNrFromXMLNode( xNode )
		    
		    me.AddRow name, type, pagenr, sortName
		    me.RowTagAt( me.LastAddedRowIndex ) = xNode
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BuildList(XMLDocFile as FolderItem)
		  if XMLDocFile <> Nil then
		    var XMLDoc as new XMLDocument( XMLDocFile )
		    
		    BuildList( XMLDoc )
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BuildList(XMLDoc as XMLDocument = Nil)
		  if XMLDoc <> Nil then
		    xDoc = XMLDoc
		  end if
		  
		  // Save last selected index
		  'var Lindex as Integer = 0
		  'if me.SelectedRowIndex > -1 then
		  'Lindex = me.SelectedRowIndex
		  'end if
		  RemoveAllRows
		  
		  if xDoc.FirstChild <> Nil then
		    var xRoot as XMLNode = xDoc.FirstChild
		    var xChildren() as XMLNode = xRoot.Children
		    
		    if xChildren <> Nil and xChildren.LastIndex > -1 then
		      for each xNode as XMLNode in xChildren
		        AddXMLNodeRow( xNode )
		      next // @NEXT xnode
		    end if // @END xChildren <> Nil
		    
		  end if // @END xDoc.FirstChild <> Nil
		  
		  
		  // Expand rows
		  'for row as Integer = me.LastRowIndex DownTo 0
		  'if me.RowExpandableAt( row ) then
		  'me.RowExpandedAt( row ) = True
		  'end if
		  'next
		  
		  // Restore selection
		  'if Lindex <= me.LastRowIndex then
		  'me.SelectedRowIndex = Lindex
		  'end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClassRowForSelectedSubclass() As Integer
		  if me.SelectedRowIndex > -1 then
		    
		    if me.CellTextAt( me.SelectedRowIndex, 1 ) = "subclass" then
		      for index as Integer = me.SelectedRowIndex DownTo 0
		        if me.CellTextAt( index, 1 ) = "class" then
		          Return index
		          Exit
		        end if
		      next
		    elseif me.CellTextAt( me.SelectedRowIndex, 1 ) = "class" then
		      Return me.SelectedRowIndex
		    end if
		    
		  end if
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveXMLDocument(Destination as FolderItem)
		  if Destination <> Nil then
		    var xmlDoc as XMLDocument = xDoc
		    xmlDoc.SaveXMLFormatted( Destination, AppPrefs.IndentCharacters )
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SoftRebuildList()
		  
		  var xRoot as XMLNode = xDoc.FirstChild
		  var xChildren() as XMLNode = xRoot.Children
		  
		  
		  for index as Integer = xChildren.LastIndex DownTo 0
		    var xChild as XMLNode = xChildren(index)
		    
		    for row as Integer = 0 to LastRowIndex
		      
		      if RowTagAt(row) IsA XMLNode then
		        var compareNode as XMLNode = RowTagAt(row)
		        
		        if compareNode.ToString = xChild.ToString then
		          xChildren.RemoveAt( index )
		          'Found = True
		          Exit
		        end if
		        
		      end if
		      
		    next
		    
		  next
		  
		  
		  if xChildren.LastIndex > -1 then
		    for each xNode as XMLNode in xChildren
		      AddXMLNodeRow( xNode )
		    next
		  end if
		  
		  xChildren() = xDoc.FirstChild.Children
		  if xChildren.LastIndex <> LastRowIndex then // Not equal values
		    for row as Integer = LastRowIndex DownTo 0
		      if RowTagAt(row) IsA XMLNode then
		        var compareNode as XMLNode = RowTagAt(row)
		        
		        var Found as Boolean = True
		        for each xChild as XMLNode in xChildren
		          
		          if xChild.ToString = compareNode.ToString then
		            Found = True
		            Exit
		          end if
		          
		          Found = False
		        next
		        
		        if NOT found then
		          RemoveRowAt( row )
		        end if
		      end if
		      
		      
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SortByRow()
		  
		  var xRoot as XMLNode = xDoc.FirstChild
		  
		  if xRoot <> Nil then
		    
		    xRoot.RemoveAllChildren
		    
		    for row as Integer = 0 to me.LastRowIndex
		      if RowTagAt(row) IsA XMLNode then
		        var xNode as XMLNode = RowTagAt(row)
		        
		        xRoot.AppendChild( xNode )
		        
		      end if
		      
		    next
		    
		    'Return True
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mxDoc As XMLDocument
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mxDoc = Nil then
			    mxDoc = new XMLDocument
			  end if
			  Return mxDoc
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mxDoc = value
			End Set
		#tag EndSetter
		xDoc As XMLDocument
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="RestoreOnChange"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinWidth"
			Visible=true
			Group="Behavior"
			InitialValue="200"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrefName"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxWidth"
			Visible=true
			Group="Behavior"
			InitialValue="600"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Resizable"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoreChange"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFocused"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
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
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ScrollOffset"
			Visible=false
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ScrollWidth"
			Visible=false
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasBorder"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnCount"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnWidths"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DefaultRowHeight"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLineStyle"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="GridLineStyles"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Horizontal"
				"2 - Vertical"
				"3 - Both"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasHeader"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeadingIndex"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialValue"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasHorizontalScrollbar"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasVerticalScrollbar"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DropIndicatorVisible"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontName"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inch"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoHideScrollbars"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowResizableColumns"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowRowDragging"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowRowReordering"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowExpandableRows"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequiresSelection"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RowSelectionType"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="RowSelectionTypes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Single"
				"1 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
