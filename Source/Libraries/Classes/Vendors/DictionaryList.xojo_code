#tag Class
Protected Class DictionaryList
Inherits SuperListbox
	#tag Event
		Sub DoubleClick()
		  Dim row, column as Integer
		  row =    Me.RowFromXY(    System.MouseX - Me.Left - me.Parent.Left, System.MouseY - Me.Top - me.Parent.Top )
		  column = Me.ColumnFromXY( System.MouseX - Me.Left - me.Parent.Left, System.MouseY - Me.Top - me.Parent.Top )
		  if row > -1 and column > -1 then
		    Me.EditCell( row, column )
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub ExpandRow(row As Integer)
		  
		  dim value as Variant = me.CellTag(row,0)
		  
		  if value <> Nil then
		    
		    dim valueInfo as Xojo.Introspection.TypeInfo
		    valueInfo = xojo.Introspection.GetType(value)
		    
		    if valueInfo.IsArray then
		      // Array
		      dim TheArray() as Auto = ArrayToAutos(value, valueInfo)
		      
		      // Addrows
		      if TheArray <> Nil and TheArray.Ubound > -1 then
		        dim arrayElementType as Xojo.Introspection.TypeInfo
		        arrayElementType = Xojo.Introspection.GetType(TheArray(0))
		        
		        for index as Integer = 0 to TheArray.Ubound
		          AddItem(index, arrayElementType) = TheArray(index)
		        next
		      end if
		      
		      
		    else
		      // Single values
		      
		      Select case valueInfo.FullName
		        
		      case "Dictionary"
		        dim TheDict as Dictionary = value
		        for each key as string in TheDict.Keys
		          dim entry as Variant = TheDict.Value(key)
		          
		          dim entryInfo as Xojo.Introspection.TypeInfo
		          entryInfo = xojo.Introspection.GetType(entry)
		          
		          if entryInfo.IsArray then
		            AddFolderItem(key, entryInfo) = entry
		          else
		            AddItem(key, entryInfo) = entry
		          end if // @END entryInfo.IsArray
		          
		        next // @NEXT key
		        
		        
		        
		      case "Xojo.Core.Dictionary"
		        dim TheDict as Xojo.Core.Dictionary = value
		        for each entry as Xojo.Core.DictionaryEntry in TheDict
		          dim entryInfo as Xojo.Introspection.TypeInfo
		          entryInfo = xojo.Introspection.GetType(entry.Value)
		          
		          if entryInfo.IsArray then
		            AddFolderItem(entry.key, entryInfo) = entry.Value
		          else
		            
		            Select case entryInfo.FullName
		              
		            case "Dictionary", "Xojo.Core.Dictionary"
		              me.AddFolderItem(entry.Key, entryInfo) = entry.Value
		            else
		              me.AddItem(entry.Key, entryInfo) = entry.Value
		              
		            End Select
		            
		          end if // @END entryInfo.IsArray
		          
		        next // @NEXT entry
		        
		        
		        
		      else
		        Break
		      End Select
		      
		    end if // @END valueInfo.IsArray
		    
		  else
		    // value = Nil
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key as String) As Boolean
		  
		  If Me.ListIndex > -1 Then
		    
		    Select Case Asc(Key)
		      
		    Case 28 // Left Arrow
		      if me.RowIsFolder(me.ListIndex) then
		        Me.Expanded( Me.ListIndex ) = False
		      else
		        for row as Integer = me.ListIndex DownTo 0
		          if me.RowIsFolder(row) then
		            me.ListIndex = row
		            Exit
		          end if
		        next
		      end if
		      Return True
		      
		    Case 29 // Right Arrow
		      Me.Expanded( Me.ListIndex ) = True
		      Return True
		      
		    End Select
		    
		    
		  End If
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  //set columns and headings
		  me.ColumnCount = 2
		  me.Hierarchical = true
		  me.HasHeading = true
		  me.Heading(0) = "Key"
		  me.Heading(1) = "Value"
		  me.HeaderType(-1) = Listbox.HeaderTypes.NotSortable
		  
		  RaiseEvent Open
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddFolderItem(Key as Variant, valueType as Xojo.Introspection.TypeInfo = Nil, Assigns Value as Variant)
		  if valueType = Nil then
		    valueType = xojo.Introspection.GetType(Value)
		  end if
		  
		  Select case valueType.FullName
		    
		  else
		    AddFolder key
		    CellTag(LastIndex,0) = Value
		    #if DebugBuild then
		      Cell(LastIndex,1) = "# " + valueType.FullName
		    #endif
		    
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddItem(Key as Variant, valueType as Xojo.Introspection.TypeInfo = Nil, Assigns Value as Variant)
		  if valueType = Nil then
		    valueType = xojo.Introspection.GetType(Value)
		  end if
		  
		  if valueType.IsArray then // Arrays
		    AddFolderItem(key, valueType) = Value
		    
		  else // Single values
		    
		    Select case valueType.FullName
		      
		    case "Dictionary", "Xojo.Core.Dictionary"
		      AddFolderItem(key, valueType) = Value
		      
		    else
		      AddRow key.StringValue, DefineEncoding( Value, Encodings.UTF8 )
		      
		    End Select
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ArrayToAutos(Value as Variant, valueInfo as Xojo.Introspection.TypeInfo) As Auto()
		  dim TheArray() as Auto
		  
		  // Fit array into autoarray
		  dim ElementType as Xojo.Introspection.TypeInfo
		  ElementType = valueInfo.ArrayElementType
		  
		  Select case ElementType.FullName
		    
		  case "auto"
		    TheArray = Auto(value)
		    
		  case "string"
		    dim TheStrings() as string = value
		    for each StringValue as String in TheStrings
		      TheArray.Append StringValue
		    next
		    
		  case "Integer", "Int32", "Int64", "Single"
		    dim TheIntegers() as Integer = value
		    for each integerValue as Integer in TheIntegers
		      TheArray.Append integerValue
		    next
		    
		  case "Dictionary"
		    dim TheDictionaries() as Dictionary = value
		    for each dictValue as Dictionary in TheDictionaries
		      TheArray.Append dictValue
		    next
		    
		  else
		    Break
		    
		  end Select
		  
		  Return TheArray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub set(d as dictionary)
		  DeleteAllRows
		  dim info as Xojo.Introspection.TypeInfo
		  info = Xojo.Introspection.GetType(d)
		  
		  dim key as string
		  for each key in d.Keys
		    'dim var as Variant = d.Value( key ).Type
		    info = Xojo.Introspection.GetType(d.Value(key))
		    
		    if info.IsArray or d.Value(key) isa Dictionary or d.Value(key) isa Collection or d.Value(key).IsArray then
		      AddFolderItem(key, info) = d.Value(key)
		      
		    else
		      AddItem(key) = d.Value(key)
		      
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub set(d as xojo.core.dictionary)
		  DeleteAllRows
		  
		  For Each entry As Xojo.Core.DictionaryEntry In d
		    Dim info As Xojo.Introspection.TypeInfo
		    info = Xojo.Introspection.GetType(entry.Value)
		    dim key as string = CType( entry.key, String )
		    
		    if info.IsArray then
		      AddFolder key
		      RowTag(LastIndex) = "Folder"
		      CellTag(LastIndex,0) = entry.Value
		      #if DebugBuild then
		        Cell(LastIndex,1) = "# " + info.FullName
		      #endif
		      
		    else
		      
		      Select case info.FullName
		        
		      case "xojo.core.Dictionary"
		        AddFolder key
		        RowTag(LastIndex) = "Folder"
		        CellTag(LastIndex,0) = entry.Value
		        #if DebugBuild then
		          Cell(LastIndex,1) = "# " + info.FullName
		        #endif
		        
		      case "Boolean"
		        dim bool as Boolean = CType( entry.Value, Boolean )
		        AddRow key, Str(bool)
		        
		      case "Int32", "Integer", "Int64"
		        dim int as Integer = CType( entry.Value, Integer )
		        AddRow key, Str(int)
		        
		      case "Double"
		        dim doub as Double = CType( entry.Value, Double )
		        AddRow key, Str(doub)
		        
		      else
		        AddRow key, CType( entry.Value, String )
		        
		      End Select
		    end if
		    
		  Next
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag ViewBehavior
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
			Name="GridLinesHorizontalStyle"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Borders"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesVerticalStyle"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Borders"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasHeader"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
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
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
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
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
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
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
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
			Name="TabIndex"
			Visible=true
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
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
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
			Name="InitialValue"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="DefaultRowHeight"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
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
			Name="_ScrollOffset"
			Visible=false
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequiresSelection"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSource"
			Visible=true
			Group="Database Binding"
			InitialValue=""
			Type="String"
			EditorType="DataSource"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataField"
			Visible=true
			Group="Database Binding"
			InitialValue=""
			Type="String"
			EditorType="DataField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group=""
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlternatingRowColors"
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
			Name="IsFocused"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
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
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
