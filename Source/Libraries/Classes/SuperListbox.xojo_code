#tag Class
Protected Class SuperListbox
Inherits Listbox
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  // Alternating Row colors
		  if AlternatingRowColors then
		    if row < me.ListCount and NOT me.Selected( row ) then
		      
		      #if TargetMacOS then
		        dim AlternatingRowBackgroundColors() as NSColor = NSColor.ControlAlternatingRowBackgroundColors
		        
		        g.ForeColor = AlternatingRowBackgroundColors(row mod 2)
		      #else
		        if row mod 2 = 0 then
		          g.ForeColor = HSL( 0, 0, 0, 5 )
		        else
		          g.ForeColor = HSL( 0, 0, 100 )
		        end if
		      #endif
		      
		      g.FillRect 0, 0, g.Width, g.Height
		    end if
		    
		  end if
		  
		  Return CellBackgroundPaint( g, row, column ) or AlternatingRowColors
		End Function
	#tag EndEvent

	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		  if RaiseEvent CellClick(row, column, x, y) then
		    Return True
		  else
		    
		    if IsContextualClick then
		      if me.SelCount > 1 and me.Selected(row) then
		        RecordSelection
		        RestoreOnChange = True
		      end if
		    end if
		    
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub Change()
		  '
		  if NOT IgnoreChange then
		    if RestoreOnChange then
		      RestoreSelection
		    else
		      
		    end if
		    
		    // Only raise the change() event if something has changed
		    'if me.ListIndex <> Me.LastSelectedIndex or me.SelCount <> me.LastSelectionCount then
		    'me.LastSelectedIndex = me.ListIndex
		    'me.LastSelectionCount = me.SelCount
		    RaiseEvent Change()
		    'end if
		    
		  end if
		  
		  RestoreOnChange = False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  if PrefName <> "" then
		    AppSettings.Prefs.Value( PrefName ) = me.Width
		  end if
		  
		  Close()
		End Sub
	#tag EndEvent

	#tag Event
		Sub CollapseRow(row As Integer)
		  if NOT Hierarchical then
		    dim parentIndent, subItemRow as Integer
		    parentIndent = me.RowIndent( row )
		    subItemRow = row+1
		    
		    while subItemRow <= me.LastIndex and me.RowIndent( subItemRow ) > parentIndent
		      me.RemoveRow row+1
		    wend
		  end if
		  
		  if me.RowHeight > -1 then
		    dim lastHeight as Integer = me.ListCount * me.RowHeight
		    dim meHeight as Integer = me.Height
		    if lastHeight < self.Height then
		      me.ScrollPosition = 0
		    end if
		  end if
		  
		  RaiseEvent CollapseRow(row)
		End Sub
	#tag EndEvent

	#tag Event
		Sub ExpandRow(row As Integer)
		  indentWhenAdding = RowIndent(row) + 1
		  RaiseEvent ExpandRow(row)
		  indentWhenAdding = 0
		End Sub
	#tag EndEvent

	#tag Event
		Sub GotFocus()
		  EditSelectAll.Enabled = True
		  IsFocused = True
		  RaiseEvent GotFocus
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  // If user customized keydown...
		  if KeyDown( key ) then
		    Return True
		  end if
		  
		  dim AscKey as Integer = Asc( key )
		  
		  // Let the system handle 'up', 'down' and 'tab' keys.
		  if AscKey = 30 or AscKey = 31 or AscKey = 9 then
		    Return False
		  end if
		  
		  // Cmd + 'Delete' = Remove row event.
		  if keyboard.AsyncCommandKey and AscKey = 8 then
		    dim row as Integer = me.ListIndex
		    
		    dim ARowHasBeenRemoved as Boolean = False
		    for index as Integer = me.LastIndex DownTo 0
		      if Selected( index ) then
		        dim ThisRowWasRemoved as Boolean = RemoveRow( index )
		        if NOT ARowHasBeenRemoved and ThisRowWasRemoved then
		          ARowHasBeenRemoved = True
		        end if
		      else
		        Continue
		      end if
		    next
		    
		    if ARowHasBeenRemoved then
		      if row <= me.LastIndex then
		        me.ListIndex = row
		      else
		        me.ListIndex = me.LastIndex
		      end if
		      
		      RaiseEvent Change()
		      
		      Return True
		    end if
		  end if
		  
		  
		  // Cmd + A = Select all
		  if Keyboard.AsyncCommandKey and Keyboard.AsyncKeyDown( &h00 ) then
		    me.IgnoreChange = True
		    for row as Integer = me.LastIndex DownTo 0
		      me.Selected(row) = True
		    next
		    me.IgnoreChange = False
		    
		    me.LastSelectionCount = me.SelCount
		    me.LastSelectedIndex = me.LastIndex
		    
		    RaiseEvent Change()
		    
		    Return True
		  end if
		  
		  
		  // Handle hierarchical folder rows.
		  if ListIndex > -1 and RowIsFolder( ListIndex ) then
		    if AscKey = 29 then
		      Expanded( ListIndex ) = True
		      Return True
		    elseif AscKey = 28 then
		      Expanded( ListIndex ) = False
		      Return True
		    end if
		  end if
		  
		  // Handle hierarchical folder sub rows.
		  if RowIndent( ListIndex ) > 0 and Asc( key ) = 28 then
		    if RowIsFolder( ListIndex ) and Expanded( ListIndex ) then
		      'Return False
		    else
		      dim currentIndent as Integer = RowIndent( ListIndex )
		      
		      for row as Integer = ListIndex DownTo 0
		        if RowIndent( row ) < currentIndent then
		          ListIndex = row
		          Return True
		        end if
		      next
		    end if // @END me.RowIsFolder and Expanded
		  end if // @ENd me.RowIndent > 0 and key = left
		  
		  
		  // Pressed 'Enter' or Pressed 'Return'
		  if AscKey = 13 or AscKey = 3 then
		    RaiseEvent Action
		    Return True
		  end if
		  
		  // record last keys pressed within 30 ticks intervals.
		  if ticks - LastKeyPressedAt <= 30 then
		    LastKeyPressed = LastKeyPressed + key
		  else
		    LastKeyPressed = key
		  end if
		  LastKeyPressedAt = Ticks
		  
		  // Search the list
		  if not Keyboard.AsyncControlKey and NOT Keyboard.AsyncAltKey and NOT Keyboard.AsyncCommandKey then // But not of cmd/ctrl/alt keys are pressed
		    for row as Integer = 0 to ListCount -1
		      for col as Integer = 0 to ColumnCount-1
		        
		        if Cell( row, col ).Left( LastKeyPressed.Len ).Lowercase = LastKeyPressed.Lowercase then
		          ListIndex = row
		          Return True
		        end if
		        
		      next // @END ColumnCount
		      
		    next // @END rowcount
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  'EditSelectAll.Enabled = False
		  IsFocused = False
		  RaiseEvent LostFocus
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  if me.Enabled and me.Visible and Resizable then
		    
		    if x < me.Width and x > me.Width - 4 and _
		      y < me.Height and y > 0 then
		      mXAnchor = x
		      UpdateControls
		      Return True
		    end if
		    
		  end if
		  
		  Return MouseDown( x, y )
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(x As Integer, y As Integer)
		  if mXAnchor > -1 and Resizable then
		    Drag( x - mXAnchor )
		  end if
		  
		  MouseDrag( x, y )
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  if Resizable then
		    if x < me.Width and x > ( me.Width - 4 ) and _
		      y < me.Height and y > 0 then
		      MouseCursor = System.Cursors.SplitterEastWest
		    else
		      MouseCursor = Nil
		    end if
		  end if
		  
		  MouseMove( x, y )
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  if Resizable then
		    mXAnchor = -1
		    LastWidth = me.Width
		    UpdateControls
		  end if
		  
		  MouseUp( x, y )
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Open()
		  LastWidth = me.Width
		  if PrefName <> "" and Resizable then
		    dim w as Integer = AppSettings.Prefs.Value( PrefName, me.Width )
		    
		    me.Drag( w - me.Width )
		    LastWidth = me.Width
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddFolder(Text as String)
		  Super.AddFolder(Text)
		  dim va(1) As Variant
		  va(0) = indentWhenAdding
		  'va(1) = true
		  Super.RowTag(LastIndex) = va
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRow(items() As String)
		  Super.AddRow(items)  
		  dim va(1) As Variant
		  va(0) = indentWhenAdding
		  'va(1) = false
		  Super.RowTag(LastIndex) = va
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRow(ParamArray items As String)
		  Super.AddRow(items)  
		  dim va(1) As Variant
		  va(0) = indentWhenAdding
		  'va(1) = false
		  Super.RowTag(LastIndex) = va
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Attach(ctrl as ContainerControl, moveOnly as Boolean = false)
		  'mAttached.Append ctrl._Control // this undocumented "_Control" access is necessary to make it work (as of RB 2008r1)
		  If moveOnly Then mCtrlsToMove.Append ctrl._Control
		  
		  AttachControl( ctrl._Control )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AttachControl(Ctrl as RectControl, MoveOnly as Boolean = False)
		  
		  If moveOnly Then mCtrlsToMove.Append ctrl
		  
		  dim d as New Dictionary
		  d.Value( "Left" ) = Ctrl.Left
		  d.Value( "Width" ) = Ctrl.Width
		  
		  AttachedControls.Value( ctrl ) = d
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Drag(Distance as Integer)
		  
		  if me.Enabled then
		    
		    if LastWidth + Distance < MinWidth then
		      Distance = MinWidth - LastWidth
		    end if
		    
		    if LastWidth + Distance > MaxWidth then
		      Distance = MaxWidth - LastWidth
		    end if
		    
		    
		    if Distance <> 0 then
		      VerticalDrag( Distance )
		      Moved( Distance )
		    end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasParent(row as Integer) As Boolean
		  Return ParentRowIndex(row) > -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertFolder(row As Integer, text As String, indent As Integer = 0)
		  Super.InsertFolder(row, text, indent)  
		  dim va(1) As Variant
		  va(0) = indent
		  'va(1) = true
		  Super.RowTag(row) = va
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertRow(row As Integer, text As String, indent As Integer = 0)
		  Super.InsertRow(row, text, indent)
		  dim va(1) As Variant
		  va(0) = indent
		  'va(1) = false
		  Super.RowTag(row) = va
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ParentRowIndex(row as Integer) As Integer
		  
		  dim currentIndent as Integer = me.RowIndent( row )
		  for i as Integer = row DownTo 0
		    if me.RowIndent(i) < currentIndent then
		      Return i
		    end if
		  next
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ParentRowName(row as Integer) As String
		  if HasParent(row) then
		    Return me.Cell(ParentRowIndex(row), 0)
		  else
		    Return ""
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RecordSelection()
		  if LastSelection = Nil then LastSelection = new Dictionary
		  LastSelection.Clear
		  for row as Integer = 0 to me.LastIndex
		    if me.Selected(row) then
		      LastSelection.Value( Cell( row, 1 ) ) = row
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RestoreSelection()
		  dim prev as Boolean = IgnoreChange
		  IgnoreChange = True
		  
		  if LastSelection <> Nil then
		    
		    for row as Integer = 0 to me.LastIndex
		      dim sel as Boolean = LastSelection.HasKey( Cell( row, 1 ) )
		      
		      if me.Selected(row) <> sel then
		        me.Selected(row) = sel
		      else
		        Continue
		      end if
		      
		    next // @NEXT row
		    
		  end if
		  
		  IgnoreChange = prev
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowIndent(row As integer) As Integer
		  if row > -1 then
		    dim va() As Variant = Super.RowTag(row)
		    return va(0)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowIsFoldera(row As integer) As Boolean
		  if me.ListIndex > -1 then
		    dim va() As Variant = Super.RowTag(row)
		    return va(1)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowTag(row As Integer) As Variant
		  if row > -1 then
		    dim va() As Variant = Super.RowTag(row)
		    if va.Ubound = 2 then return va(2)       //change to >= if adding RowTagN
		  end if
		  return nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RowTag(row As Integer, Assigns _value As Variant)
		  dim va() As Variant = Super.RowTag(row)
		  if va.Ubound = 1 then redim va(2)  //size up
		  va(2) = _value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowTagN(row As Integer, idx As integer) As Variant
		  if idx < 0 then return nil
		  if row > -1 then
		    dim va() As Variant = Super.RowTag(row)
		    idx = idx + 3
		    if va.Ubound >= idx then return va(idx)
		  end if
		  return nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RowTagN(row As Integer, idx As integer, Assigns _value As Variant)
		  if idx < 0 then return  //prevent data trashing
		  dim va() As Variant = Super.RowTag(row)
		  idx = idx + 3
		  if va.Ubound < idx then redim va(idx)  //size up
		  va(idx) = _value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedFolders() As FolderItem()
		  
		  dim folders() as FolderItem
		  for row as Integer = 0 to me.LastIndex
		    dim f as FolderItem
		    if me.Selected( row ) and me.Cell( row, 1 ) <> "" then
		      f = GetFolderItem(me.Cell(row,1), FolderItem.PathTypeNative)
		      
		      if f <> Nil and f.Exists then
		        folders.Append f
		      end if
		      
		    end if
		  next
		  
		  Return folders
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedRows() As Integer()
		  
		  dim selection() as Integer
		  for row as Integer = 0 to me.LastIndex
		    if me.Selected( row ) then
		      selection.Append row
		    end if
		  next
		  
		  Return selection
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateControls()
		  if mAttachedControls <> Nil and mAttachedControls.Count > 0 then
		    For each control as RectControl in mAttachedControls.Keys
		      AttachControl( control )
		    Next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub VerticalDrag(Distance as Integer)
		  
		  me.Width = LastWidth + Distance
		  
		  dim moveOnly as Boolean
		  
		  for each key as variant in AttachedControls.Keys
		    dim item as Dictionary = AttachedControls.Value( key )
		    
		    if key IsA RectControl then
		      
		      dim ctrl as RectControl = key
		      Dim OriginalLeft, OriginalWidth as Integer
		      OriginalLeft = item.Value("Left")
		      OriginalWidth = item.Value("Width")
		      
		      if ctrl <> Nil then
		        
		        moveOnly = mCtrlsToMove.IndexOf( ctrl ) >= 0
		        
		        ctrl.Left = OriginalLeft + Distance
		        if NOT moveOnly then
		          ctrl.Width = OriginalWidth - Distance
		        end if
		        
		      end if // ctrl <> Nil
		      
		    end if // item IsA RectControl
		  next
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Change()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CollapseRow(row as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ExpandRow(row As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GotFocus()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event KeyDown(Key as String) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LostFocus()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseDown(x as Integer, y as Integer) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseDrag(x as Integer, y as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseMove(x as Integer, y as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseUp(x as Integer, y as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Moved(Distance as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event RemoveRow(Row as Integer) As Boolean
	#tag EndHook


	#tag Property, Flags = &h0
		AlternatingRowColors As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mAttachedControls = Nil then
			    mAttachedControls = New Dictionary
			  end if
			  return mAttachedControls
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mAttachedControls = value
			End Set
		#tag EndSetter
		AttachedControls As Dictionary
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		IgnoreChange As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private indentWhenAdding As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		IsFocused As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastKeyPressed As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastKeyPressedAt As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastSelectedIndex As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastSelection As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastSelectionCount As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastWidth As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ListboxTag As Variant
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mAttachedControls As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		MaxWidth As Integer = 600
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCtrlsToMove() As RectControl
	#tag EndProperty

	#tag Property, Flags = &h0
		MinWidth As Integer = 200
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mXAnchor As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		PrefName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Resizable As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		RestoreOnChange As Boolean = False
	#tag EndProperty


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
			InitialValue=""
			Type="Integer"
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
	#tag EndViewBehavior
End Class
#tag EndClass
