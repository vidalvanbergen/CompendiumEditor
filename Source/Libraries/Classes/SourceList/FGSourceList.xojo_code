#tag Class
Protected Class FGSourceList
Inherits Listbox
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  // Set the background colour
		  if style = ListStyle.Mojave then
		    dim AlternatingRowBackgroundColors() as NSColor = NSColor.ControlAlternatingRowBackgroundColors
		    if IsDarkMode then
		      g.ForeColor = &c272727 'AlternatingRowBackgroundColors(1)
		    else
		      g.ForeColor = AlternatingRowBackgroundColors(1)
		    end if
		  elseif me.Active = false or me.Enabled = false then ' the control is on an inactive window
		    g.ForeColor = kColorSourceListBackgroundInactive
		  else
		    g.ForeColor = kColorSourceListBackground
		  end if
		  
		  g.FillRect( 0, 0, g.Width, g.Height )
		  
		  // Highlight the selected row with a gradient effect (but remember, sections are never highlighted)
		  if me.Selected( row ) and not ItemAtRowNumber( row ).Section then
		    if style = ListStyle.Mojave then
		      // Draw system color
		      g.ForeColor = NSColor.AlternateSelectedControlColor
		      g.FillRect( 0, 0, g.Width, g.Height )
		    else
		      HighlightRow(g)
		    end if
		  end if
		  
		  // Draw the right-hand border
		  if style = ListStyle.Mojave then
		    if IsDarkMode then
		      g.ForeColor = &c000000
		    else
		      g.ForeColor = NSColor.GridColor
		    end if
		  else
		    g.ForeColor = kColorBorder
		  end if
		  g.DrawLine(g.Width-1, 0, g.Width-1, g.Height-1)
		  
		  // Call our CellBackgroundPaint event
		  CellBackgroundPaint( g, row, column )
		  
		  return true
		End Function
	#tag EndEvent

	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  dim item as FGSourceListItem
		  dim indent as integer
		  
		  // Get the item clicked and check it's valid
		  item = ItemAtRowNumber( row )
		  if item = nil then return false
		  
		  // Remember that this item has been clicked
		  lastItemClicked = item
		  
		  // Work out the level of indentation for this item
		  select case me.Style
		    
		  case ListStyle.iTunes, ListStyle.Finder, ListStyle.Mojave
		    
		    if item.Level = 1 then indent = 0
		    if item.Level = 2 then indent = 16
		    if item.Level = 3 then indent = 32
		    
		  case ListStyle.Mail
		    
		    if item.Level = 1 then indent = 15
		    if item.Level = 2 then indent = 29
		    if item.Level = 3 then indent = 45
		    
		  end select
		  
		  if item.Section and item.Collapsible then
		    
		    select case me.Style
		      
		    case ListStyle.iTunes, ListStyle.Mojave ' iTunes style source lists have "show" and "hide" text that needs to be clicked on to toggle expansion
		      
		      // The user has clicked on a collapsible section. We will toggle the expansion state ONLY if the user clicked on the "show" or
		      // "hide" text to the right of the section name
		      if x > me.Width - 32 and x < me.Width - 5 and not IsContextualClick() then
		        
		        if item.Expanded then
		          
		          CollapseSection(item.Name)
		          
		          // Fire our custom event
		          CollapsedItem(item)
		          
		        else
		          
		          ExpandSection(item.Name)
		          
		          // Fire our custom event
		          ExpandedItem(item)
		          
		        end if
		        
		        // Prevent this item from being highlighted following this click
		        me.Selected(row) = false
		        me.InvalidateCell(row, 0)
		        return true
		        
		      end if
		      
		    case ListStyle.Finder ' Finder style source lists have a disclosure triangle
		      
		      // The user has clicked on a collapsible Finder-style source list section. We will toggle the expansion state ONLY if the
		      // user clicks on the disclosure triangle.
		      
		      if x >= 3 and x <= 11 and y >= 6 and y <= 14 and not IsContextualClick() then
		        
		        if item.Expanded then
		          
		          CollapseItemAtRow(row)
		          
		        else
		          
		          ExpandItemAtRow(row)
		          
		        end if
		        
		        // Prevent this item from being highlighted following this click
		        me.Selected(row) = false
		        me.InvalidateCell(row, 0)
		        return true
		        
		      end if
		      
		      if x <= indent then
		        
		        // The user has clicked too far to the left of the item to select it
		        me.Selected(row) = false
		        me.InvalidateCell(row, 0)
		        return true
		        
		      end if
		      
		    case ListStyle.Mail ' Mail style source lists also have a disclosure triangle
		      
		      // The user has clicked on a collapsible Mail-style source list section. We will toggle the expansion state ONLY if the
		      // user clicks on the disclosure triangle.
		      
		      if x >= 9 and x <= 17 and y >= 6 and y <= 14 and not IsContextualClick() then
		        
		        if item.Expanded then
		          
		          CollapseItemAtRow(row)
		          
		        else
		          
		          ExpandItemAtRow(row)
		          
		        end if
		        
		        // Prevent this item from being highlighted following this click
		        me.Selected(row) = false
		        me.InvalidateCell(row, 0)
		        return true
		        
		      end if
		      
		      if x <= indent then
		        
		        // The user has clicked too far to the left of the item to select it
		        me.Selected(row) = false
		        me.InvalidateCell(row, 0)
		        return true
		        
		      end if
		      
		    end select
		    
		  elseif item.Collapsible then
		    
		    // The user has clicked on a collapsible item. We will toggle the expansion state ONLY if the user clicks on the disclosure
		    // triangle.
		    
		    if x >= 3+indent and x <= 11+indent and y >= 6 and y <= 14 and not IsContextualClick() then
		      
		      if item.Expanded then
		        
		        CollapseItemAtRow(row)
		        
		      else
		        
		        ExpandItemAtRow(row)
		        
		      end if
		      
		      // Prevent this item from being highlighted following this click
		      me.Selected(row) = false
		      me.InvalidateCell(row, 0)
		      return true
		      
		    end if
		    
		    if x <= indent then
		      
		      // The user has clicked too far to the left of the item to select it
		      me.Selected(row) = false
		      me.InvalidateCell(row, 0)
		      return true
		      
		    end if
		    
		  end if
		  
		  // ##### Eject button ##### \\
		  
		  if item.EjectButton and x > me.Width - kEjectButtonWidth - 5 and x < me.Width - 5 and not IsContextualClick() then
		    
		    // User clicked on the eject button
		    ClickedEjectButton( item )
		    
		    // Prevent this item from being highlighted following this click
		    me.Selected(row) = false
		    me.InvalidateCell(row, 0)
		    return true
		    
		  end if
		  
		  // ##### Custom buttom ##### \\
		  
		  if item.Button and item.ButtonImage <> nil and item.ButtonActive and item.EjectButton and not IsContextualClick() then
		    // Both a custom button and an eject button
		    
		    if x > me.Width - item.ButtonImage.Width - kEjectButtonWidth - 10 and x < me.Width - kEjectButtonWidth - 10 then
		      
		      // User clicked the custom button
		      ClickedButton( item )
		      
		      // Prevent this item from being highlighted following this click
		      me.Selected(row) = false
		      me.InvalidateCell(row, 0)
		      return true
		      
		    end if
		    
		    
		    
		  elseif item.Button and item.ButtonImage <> nil and item.ButtonActive and not IsContextualClick() _
		    and item.ShowBadge and item.BadgeCount > 0 then ' both a custom button and a visible badge
		    
		    if x > me.Width - item.ButtonImage.Width - item.BadgeWidth - 10 and x < me.Width - item.BadgeWidth - 10 then
		      // User clicked on the custom button
		      ClickedButton( item )
		      
		      // Prevent this item from being highlighted following this click
		      me.Selected(row) = false
		      me.InvalidateCell(row, 0)
		      return true
		      
		    end if
		    
		    
		    
		  elseif item.Button and item.ButtonImage <> nil and item.ButtonActive and not IsContextualClick() then ' just a custom button
		    
		    if x > me.Width - item.ButtonImage.Width - 5 and x < me.Width - 5 then
		      // User clicked on the custom button
		      ClickedButton( item )
		      
		      // Prevent this item from being highlighted following this click
		      me.Selected(row) = false
		      me.InvalidateCell(row, 0)
		      return true
		      
		    end if
		    
		  end if
		  
		  // Fire our custom event for non-sections
		  if not item.Section and not IsContextualClick() then
		    
		    SelectedItem(item)
		    
		  elseif IsContextualClick() then
		    
		    'ContextualClickedItem(item)
		    // Prevent this item from being highlighted following this click
		    'me.Selected(row) = false
		    'me.ListIndex = -1
		    'me.InvalidateCell(row, 0)
		    'return true
		    
		  end if
		  
		  return false
		End Function
	#tag EndEvent

	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  dim item as FGSourceListItem
		  
		  // Get this item
		  item = ItemAtRowNumber(row)
		  if item = nil then ' this shouldn't happen
		    
		    mErrorCode = Error.Internal
		    mErrorMessage = "CellTextPaint: item = nil."
		    return true
		    
		  end if
		  
		  if item.Section then
		    
		    DrawSection( item, g, row )
		    
		  else
		    
		    DrawItem( item, g, row )
		    
		  end if
		  
		  // Fire our custom event
		  CellTextPaint(g, row, column, x, y)
		  
		  return true
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Close()
		  if PrefName <> "" then
		    AppSettings.Prefs.Value( PrefName ) = me.Width
		  end if
		  
		  RaiseEvent Close
		End Sub
	#tag EndEvent

	#tag Event
		Sub DoubleClick()
		  // The user double clicked in the source list
		  
		  // Check that the user double-clicked on an actual item
		  if lastItemClicked <> nil then
		    
		    // Fire our custom double click event and pass the clicked item
		    DoubleClickedItem(lastItemClicked)
		    
		  end if
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function DragReorderRows(newPosition as Integer, parentRow as Integer) As Boolean
		  // ParentRow does not apply to FGSourceList (as it is not hierarchical).
		  // Returning true from this event cancels the drag.
		  // This method assumes that the selected item's row will be deleted from the listbox (important for index reasons).
		  // NewPosition is the row position that the user has dragged ItemBeingDragged to.
		  
		  dim mySection, currentItemAtNewPosition as FGSourceListItem
		  dim index, oldPosition as integer
		  
		  
		  oldPosition = RowNumberOfItem(itemBeingDragged)
		  
		  
		  if itemBeingDragged = nil then return true ' cancel the drag
		  
		  if itemBeingDragged.Section then return true ' disallow the dragging of sections
		  
		  // Get this item's section
		  mySection = itemBeingDragged.MySection
		  
		  // Valid section?
		  if mySection = nil then return true ' this shouldn't happen
		  
		  // Does this item's section allow drag reordering?
		  if not mySection.AllowChildDragReordering then return true ' disallow the reorder
		  
		  // Does this item's parent allow it's children to be drag-reordered?
		  if not itemBeingDragged.Parent.AllowChildDragReordering then return true ' disallow the re-order
		  
		  // Get the item at newPosition
		  currentItemAtNewPosition = ItemAtRowNumber(newPosition)
		  if currentItemAtNewPosition = nil then return true ' shouldn't happen
		  
		  if currentItemAtNewPosition = itemBeingDragged then return true ' the user is trying to drag an item to it's existing position
		  
		  // Items can only be dragged within their existing section - check this is the case
		  if currentItemAtNewPosition.MySection <> itemBeingDragged.MySection then return true ' trying to drag to a different section
		  
		  // Items can only be dragged within their own parent
		  if currentItemAtNewPosition.Parent <> itemBeingDragged.Parent then return true ' user is trying to drag an item outside it parent
		  
		  'if currentItemAtNewPosition.Level > itemBeingDragged.Level then
		  if currentItemAtNewPosition.Level > itemBeingDragged.Level and newPosition > oldPosition then
		    
		    // This could happen if the user is dragging an item downwards in the source list underneath an expanded item. To remedy this, we
		    // need to get the item that is enclosing currentItemAtNewPosition that is at the same level as itemBeingDragged.
		    
		    if currentItemAtNewPosition.Parent <> nil then
		      
		      if currentItemAtNewPosition.Parent.Level = itemBeingDragged.Level then
		        
		        currentItemAtNewPosition = currentItemAtNewPosition.Parent
		        
		      else
		        
		        if currentItemAtNewPosition.Parent.Parent <> nil then
		          
		          if currentItemAtNewPosition.Parent.Parent.Level = itemBeingDragged.Level then
		            
		            currentItemAtNewPosition = currentItemAtNewPosition.Parent.Parent
		            
		          else
		            
		            if currentItemAtNewPosition.Parent.Parent.Parent <> nil then
		              
		              if currentItemAtNewPosition.Parent.Parent.Parent.Level = itemBeingDragged.Level then
		                
		                currentItemAtNewPosition = currentItemAtNewPosition.Parent.Parent.Parent
		                
		              else
		                
		                return true
		                
		              end if
		              
		            else
		              
		              return true
		              
		            end if
		            
		          end if
		          
		        else
		          
		          return true
		          
		        end if
		        
		      end if
		      
		    else
		      
		      return true
		      
		    end if
		    
		  end if
		  
		  // Items can only be dragged within their level - check this is the case
		  if currentItemAtNewPosition.Level <> itemBeingDragged.Level then return true ' trying to drag to a different level
		  
		  // Need to get the index of currentItemAtNewPosition in currentItemAtNewPosition.Parent.Children as this is where we
		  // need to insert itemBeingDragged
		  index = currentItemAtNewPosition.IndexInParent
		  if index = -1 then return true
		  
		  // Remove itemBeingDragged from the source list
		  me.RemoveItem(itemBeingDragged)
		  
		  // Re-insert the dragged item into the source list
		  currentItemAtNewPosition.Parent.Children.Insert( index, itemBeingDragged )
		  
		  // The drag is now complete.
		  itemBeingDragged = nil
		  Rebuild()
		  
		  return false
		  
		End Function
	#tag EndEvent

	#tag Event
		Function DragRow(drag As DragItem, row As Integer) As Boolean
		  // Get the item being dragged
		  ItemBeingDragged = ItemAtRowNumber( row )
		  
		  // Fire our custom event
		  DraggingItem( itemBeingDragged )
		  
		  // Allow the drag
		  return true
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub GotFocus()
		  dim a, limit as integer
		  
		  // Flag that we have focus
		  HasFocus = true
		  
		  // Because of a RectControl bug, we need to invalidate each cell (rather than the whole control at once, which is quicker)
		  if me.ListCount > 0 then
		    limit = me.ListCount - 1
		    
		    for a = 0 to limit
		      me.InvalidateCell( a, 0 )
		    next a
		    
		  end if
		  
		  
		  // Vidal's addition for no particular purpose.
		  me.Invalidate
		  
		  
		  // Fire our custom event
		  GotFocus()
		End Sub
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  dim a, limit as integer
		  
		  // Flag that we have lost the focus
		  HasFocus = false
		  
		  // RectControl bug workaround!
		  if me.ListCount > 0 then
		    limit = me.ListCount - 1
		    
		    for a = 0 to limit
		      me.InvalidateCell( a, 0 )
		    next a
		    
		  end if
		  me.Invalidate
		  
		  // Fire our custom event
		  LostFocus()
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  #pragma DisableBackgroundTasks
		  
		  // Update controls if Resizable
		  if me.Enabled and me.Visible and Resizable then
		    
		    if x < me.Width and x > me.Width - 4 and _
		      y < me.Height and y > 0 then    
		      UpdateControls
		      mXAnchor = x
		      Return True
		    end if
		    
		  end if
		  
		  
		  dim ium as FGSourceListItem = ItemUnderMouse
		  
		  if ium = nil or (ium.Section and not ium.Collapsible) then
		    // Clicked off of a valid row - force this valid row to remain highlighted
		    me.Selected(RowNumberOfItem(LastItemClicked)) = true
		    return true
		  end if
		  
		  Return MouseDown(x,y)
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
		Sub MouseEnter()
		  // The cursor has just entered the source list. Redraw the item underneath the cursor (as it may need to be refreshed)
		  me.InvalidateCell( RowNumberOfItem( ItemUnderMouse ), 0 )
		  
		  // Fire our custom event
		  MouseEnter()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  // Refresh whatever item was under the cursor just before the mouse left the source list (as it may need redrawing).
		  
		  me.InvalidateCell( RowNumberOfItem( ItemUnderMouse ), 0 )
		  
		  // When the cursor leaves the source list, reflect this in the mouse X and Y coordinates.
		  MouseX = -1
		  MouseY = -1
		  
		  // Fire our custom event
		  MouseExit()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  
		  
		  // Change the cursor when mouse is on the right edge of list if list is resizable.
		  if Resizable then
		    if x < me.Width and x > ( me.Width - 4 ) and _
		      y < me.Height and y > 0 then
		      MouseCursor = System.Cursors.SplitterEastWest
		    else
		      MouseCursor = Nil
		    end if
		  end if
		  
		  
		  
		  // The mouse has moved within the source list. Store the X and Y coordinates and then redraw the item under the mouse.
		  
		  dim row as integer
		  
		  MouseX = x
		  MouseY = y
		  
		  // If we are hovering over a valid row then redraw it
		  row = floor( y / me.DefaultRowHeight )
		  
		  if row > -1 and row <= (me.ListCount - 1) then
		    
		    me.InvalidateCell( LastRowInvalidated, 0 )
		    me.InvalidateCell( row, 0 )
		    LastRowInvalidated = row
		    
		  end if
		  
		  // Fire our event
		  MouseMove(X, Y)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  if Resizable then  
		    UpdateControls
		    mXAnchor = -1
		    LastWidth = me.Width
		  end if
		  
		  MouseUp( x, y )
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  // Initialise
		  Initialise()
		  
		  // Fire the Open event
		  Open()
		  
		  LastWidth = me.Width
		  if PrefName <> "" and Resizable then
		    dim w as Integer = AppSettings.Prefs.Value( PrefName, me.Width )
		    
		    me.Drag( w - me.Width )
		    LastWidth = me.Width
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddToSourceList(Item as FGSourceListItem)
		  // Internal use only
		  
		  // Used to physically add this item to the listbox.
		  
		  if item <> nil then
		    
		    me.AddRow(item.Name) ' add this row to the listbox
		    
		    if item.Expanded then
		      
		      ExpandRow( RowNumberOfItem(item) )
		      
		    end if
		    
		  end if 
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendItem(Item as FGSourceListItem, SectionName as String, Level1Index as Integer = -1, Level2Index as Integer = -1)
		  // Used to append Item to an existing section or item in the specified section
		  // Indexes are zero-based.
		  // Level1Index and Level2Index are both optional (as they're not required if the user is just trying to append an item to a section)
		  
		  dim section, level1, level2 as FGSourceListItem
		  
		  // Reset errors
		  ResetErrors()
		  
		  // Check that item != nil
		  if item = nil then
		    
		    mErrorCode = error.NilItem
		    mErrorMessage = "Unable to append the passed item as item = nil."
		    return
		    
		  end if
		  
		  // Check that item has a name and an icon
		  if item.Name = "" then
		    
		    mErrorCode = error.InvalidItemName
		    mErrorMessage = "Invalid item name."
		    return
		    
		  elseif item.Icon = nil then
		    
		    mErrorCode =error.NoItemIcon
		    mErrorMessage = "You must specify an icon for this item."
		    return
		    
		  end if
		  
		  // Check that this section exists
		  if not SectionWithNameExists(sectionName) then
		    
		    mErrorCode = error.SectionDoesNotExist
		    mErrorMessage = "Unable to append the passed item to the section named " + chr(34) + sectionName + chr(34) + _
		    " as this section does not exist in the source list."
		    return
		    
		  end if
		  
		  // Get the requested section
		  section = GetSection( SectionName )
		  
		  if level1Index = -1 and level2Index = -1 then 'append item to the specified section
		    
		    item.Level = 1
		    item.Parent = section
		    item.Collapsible = true
		    section.Children.Append(item)
		    
		    // Remember the index of this item
		    mLastItemIndex = section.Children.Ubound
		    
		    // Reflect the changes in the source list
		    Rebuild()
		    
		    return ' we're done
		    
		  end if
		  
		  if level2Index = -1 then ' append item to the specified level 1 item
		    
		    // Check that there is an existing level 1 item at level1Index
		    if level1Index < 0 or level1Index > section.Children.Ubound then
		      
		      mErrorCode = error.InvalidParentIndex
		      mErrorMessage = "Invalid Level1Index parameter."
		      return
		      
		    end if
		    
		    // Get the specified level 1 item
		    level1 = section.Children(level1Index)
		    
		    // Append item to the level 1 item
		    item.Level = 2
		    item.Parent = level1
		    item.Section = false
		    item.Collapsible = true
		    redim item.Children(-1)
		    level1.Children.Append(item)
		    
		    // Remember the index of this item
		    mLastItemIndex = level1.Children.Ubound
		    
		    // Reflect the changes in the source list
		    Rebuild()
		    
		    return ' we're done
		    
		  end if
		  
		  // The user wants to append item to a level 2 item. First check that there is an existing level 1 item at level1Index
		  if level1Index < 0 or level1Index > section.Children.Ubound then
		    
		    mErrorCode = error.InvalidParentIndex
		    mErrorMessage = "Invalid Level1Index parameter."
		    return
		    
		  end if
		  
		  // Get the specified level 1 item
		  level1 = section.Children(level1Index)
		  
		  // Check that there is an existing level 2 item at level2Index
		  if level2Index < 0 or level2Index > level1.Children.Ubound then
		    
		    mErrorCode = error.InvalidParentIndex
		    mErrorMessage = "Invalid Level2Index parameter."
		    return
		    
		  end if
		  
		  // Get the specified level 2 item
		  level2 = level1.Children(level2Index)
		  
		  // Append item to the level 2 item
		  item.Level = 3
		  item.Parent = level2
		  item.Section = false
		  item.Collapsible = false
		  redim item.Children(-1)
		  level2.Children.Append(item)
		  
		  // Remember the index of this item
		  mLastItemIndex = level2.Children.Ubound
		  
		  // Reflect the changes in the source list
		  Rebuild()
		  
		  return ' we're done
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendSection(SectionName as String, Collapsible as Boolean = false, AllowChildReordering as Boolean = False)
		  // Append a new section to the source list. Name != "" and must be unique amongst the sections in the source list. Collapsible and
		  // the ability to reorder this section's children defaults to false.
		  
		  // Reset error properties
		  ResetErrors()
		  
		  // Check the name
		  if sectionName = "" then
		    
		    mErrorCode = error.SectionNameInvalid
		    mErrorMessage = "Section names cannot be nil."
		    return
		    
		  end if
		  
		  if SectionWithNameExists(sectionName) then
		    
		    mErrorCode = error.SectionNameNotUnique
		    mErrorMessage = "Section names must be unique within a source list."
		    return
		    
		  end if
		  
		  // Create this section
		  dim section as new FGSourceListItem
		  section.Name = sectionName
		  section.Collapsible = Collapsible
		  section.AllowChildDragReordering = AllowChildReordering
		  section.Expanded = true ' all new sections start off expanded
		  section.Level = 0
		  section.Parent = root
		  section.Section = true
		  
		  // Append this section to the source list
		  root.Children.Append(section)
		  me.AddRow(section.Name)
		  
		  // Remember the index of this item
		  mLastItemIndex = root.Children.Ubound
		  
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
		  If moveOnly and mCtrlsToMove.IndexOf(Ctrl) = -1 Then
		    mCtrlsToMove.Append ctrl
		  End If
		  
		  dim d as New Dictionary
		  d.Value( "Left" ) = Ctrl.Left
		  d.Value( "Width" ) = Ctrl.Width
		  d.Value( "MoveOnly" ) = MoveOnly
		  
		  AttachedControls.Value( ctrl ) = d
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  // This method is used to remove all items from the source list except for the root
		  
		  redim root.Children(-1)
		  
		  Rebuild()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CollapsedDisclosedTriangle(Indent as Integer) As Integer()
		  // This method returns an array of coordinates to be used by the Graphics.FillPolygon method. It constructs a collapsed disclosure
		  // triangle.
		  // Indent is the number of pixels to indent the triangle by.
		  
		  return Array(0, 3+indent, 6, 3+indent, 14, 11+indent, 10)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CollapseItemAtIndex(CollapseChildren as Boolean, SectionName as String, Level1Index as Integer, Level2Index as Integer = -1)
		  // This method collapses an item at the specified index. If CollapseChildren = true then all children of the specified
		  //item are also collapsed.
		  
		  dim section, level1, level2 as FGSourceListItem
		  
		  // Reset errors
		  ResetErrors()
		  
		  // Get the specified section
		  if not SectionWithNameExists( sectionName ) then
		    
		    mErrorCode = error.SectionDoesNotExist
		    mErrorMessage = "There is no section named " + chr(34) + sectionName + chr(34) + " in the source list."
		    return
		    
		  end if
		  
		  // Get the section
		  section = GetSection( sectionName )
		  
		  // Is this a valid level1Index?
		  if level1Index < 0 or level1Index > section.Children.Ubound then
		    
		    mErrorCode = error.InvalidIndex
		    mErrorMessage = "Invalid Level1Index."
		    return
		    
		  end if
		  
		  if level2Index = -1 then ' the user wants to collapse a level 1 item
		    
		    // Get this level 1 item
		    level1 = section.Children(level1Index)
		    
		    // Collapse it
		    level1.Expanded = false
		    
		    if CollapseChildren then level1.CollapseChildren() ' the user wants to collapse all of this item's children as well
		    
		    Rebuild()
		    
		    return
		    
		  end if
		  
		  // We've got this far - must be trying to collapse a level 2 item
		  // Is this a valid level2Index?
		  if level2Index < 0 or level2Index > level1.Children.Ubound then
		    
		    mErrorCode = error.InvalidIndex
		    mErrorMessage = "Invalid Level1Index."
		    return
		    
		  end if
		  
		  // Get this level 2 item
		  level2 = level1.Children(level2Index)
		  
		  // Collapse it
		  level2.Expanded = false
		  
		  if CollapseChildren then level2.CollapseChildren() ' the user wants to collapse all of this item's children as well
		  
		  Rebuild()
		  
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CollapseItemAtRow(Row as Integer)
		  // Collapses the item at the passed row
		  
		  dim item as FGSourceListItem
		  
		  // Get the requested row
		  item = ItemAtRowNumber(row)
		  
		  if item <> nil then item.Expanded = false
		  
		  // Rebuild the source list to reflect the change
		  Rebuild()
		  
		  // Fire our custom event
		  CollapsedItem(item)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CollapseSection(SectionName as String)
		  // Collapses the specified section IF this section is collapsible
		  
		  dim section as FGSourceListItem
		  
		  // Reset errors
		  ResetErrors()
		  
		  // Does this section exist?
		  if not SectionWithNameExists( sectionName ) then
		    
		    mErrorCode = error.SectionDoesNotExist
		    mErrorMessage = "Unable to collapse section " + chr(34) + sectionName + chr(34) + _
		    " as there is no section with this name in the source list."
		    return
		    
		  end if
		  
		  // Get this section
		  for each section in root.Children
		    
		    if section.Name = sectionName then exit
		    
		  next
		  
		  // Collapse this section only if collapsible
		  if section.Collapsible then
		    
		    section.Expanded = false
		    Rebuild()
		    
		    // Fire our custom event
		    CollapsedItem(section)
		    
		    return
		    
		  else
		    
		    mErrorCode = error.SectionNotCollapsible
		    mErrorMessage = "Section " + chr(34) + sectionName + chr(34) + " is not collapsible."
		    return
		    
		  end if
		  
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

	#tag Method, Flags = &h21
		Private Sub DrawBadge(Item as FGSourceListItem, g as Graphics, Selected as Boolean)
		  // Internal use only.
		  
		  // This method draws the passed item's badge count on the right-hand side.
		  
		  #pragma DisableBackgroundTasks
		  
		  #if TargetWin32
		    dim UseGDIPlusTemp as Boolean = App.UseGDIPlus
		    App.UseGDIPlus = True
		  #endif
		  
		  dim bubble as picture
		  dim stringWidth, numberToDraw as integer
		  
		  if item.Expanded then ' just draw our badge count
		    
		    numberToDraw = item.BadgeCount
		    
		  else ' draw our AND our children's badge count
		    
		    numberToDraw = item.TotalBadgeCount
		    
		  end if
		  
		  if numberToDraw = 0 then
		    #if TargetWin32
		      App.UseGDIPlus = UseGDIPlusTemp
		    #endif
		    return ' nothing to draw
		  end if
		  
		  // ################################### Bubble picture ##################################### \\
		  // Work out how long and wide the bubble needs to be to fit the number in and define the bubble picture to be 10 pixels wider
		  // and 6 pixels taller
		  g.TextSize = 11
		  g.Bold = true
		  bubble = new Picture( item.BadgeWidth, g.TextHeight + 1, 32 )
		  
		  if selected = false then
		    
		    bubble.Graphics.ForeColor = item.BadgeColor
		    bubble.Graphics.FillRect( 0, 0, bubble.Graphics.Width, bubble.Graphics.Height)
		    
		  end if
		  
		  // ##################################### Bubble mask ####################################### \\
		  // Fill the mask white
		  bubble.Mask.Graphics.ForeColor = &cFFFFFF
		  bubble.Mask.Graphics.FillRect(0, 0, bubble.Width, bubble.Height)
		  // Now draw the black rounded rectangle (that will allow the gradient to show through behind)
		  bubble.Mask.Graphics.ForeColor = &c000000
		  bubble.Mask.Graphics.FillRoundRect( 0, 0, bubble.Width, bubble.Height, 13, 13 )
		  
		  // ##################################### Draw the number ##################################### \\
		  bubble.Graphics.Bold = true
		  bubble.Graphics.TextSize = 11
		  bubble.Graphics.TextFont = "Arial Bold"
		  
		  if selected = false then ' this row is not selected - the text needs to be drawn in white
		    bubble.Graphics.ForeColor = &cFFFFFF
		    
		  else ' this row is selected, this means we need to set the colour of the text of the number to the same as the gradient row highlight
		    
		    if me.Active = false or me.Enabled = false or me.HasFocus = false then
		      
		      select case Style
		        
		      case ListStyle.iTunes
		        
		        bubble.Graphics.ForeColor = kGradientLostFocusItunesEndColour
		        
		      case ListStyle.Finder
		        
		        bubble.Graphics.ForeColor = kGradientLostFocusFinderEndColour
		        
		      case ListStyle.Mail
		        
		        bubble.Graphics.ForeColor = kGradientLostFocusMailEndColour
		        
		      end select
		      
		    else
		      
		      select case Style
		        
		      case ListStyle.iTunes
		        
		        bubble.Graphics.ForeColor = kGradientItunesEndColour
		        
		      case ListStyle.Finder
		        
		        bubble.Graphics.ForeColor = kGradientFinderEndColour
		        
		      case ListStyle.Mail
		        
		        bubble.Graphics.ForeColor = kGradientMailEndColour
		        
		      end select
		      
		    end if
		    
		  end if
		  
		  // Need to work out the width of the string
		  stringWidth = bubble.Graphics.StringWidth( str(numberToDraw) )
		  
		  // Draw the number (we need to change the offset slightly when using Cocoa) - NEW 1.0.6
		  '#if TargetCocoa
		  'bubble.Graphics.DrawString( str(numberToDraw), (bubble.Width / 2) -  ( stringWidth / 2 ), (bubble.Height/2) + (bubble.Graphics.TextSize/2) - 1 )
		  '#else
		  bubble.Graphics.DrawString( str(numberToDraw), (bubble.Width / 2) -  ( stringWidth / 2 ), bubble.Graphics.TextSize )
		  '#endif
		  
		  // ############################ Draw the bubble onto the passed Graphics object ##################### \\
		  g.DrawPicture( bubble, g.Width - bubble.Width - 5, (g.Height / 2) - (bubble.Height / 2) )
		  
		  #if TargetWin32
		    App.UseGDIPlus = UseGDIPlusTemp
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawCustomButton(g as Graphics, Item as FGSourceListItem)
		  // Internal use only.
		  
		  // This method draws this item's custom button on the right of this item. It can appear in combination with EITHER an eject button or a badge
		  
		  #pragma DisableBackgroundTasks
		  
		  dim hover as boolean = false
		  
		  if item.ButtonImage = nil then return ' this item doesn't have a custom button
		  
		  // Is the mouse hovering over the custom button?
		  if item.ButtonHoverImage <> nil and ItemUnderMouse = item then ' the user is hovering over this item's row and there is a hover image
		    
		    select case item.EjectButton
		      
		    case true
		      
		      if MouseX > me.Width - item.ButtonImage.Width - kEjectButtonWidth - 10 and MouseX < me.Width - kEjectButtonWidth - 10 then
		        
		        hover = true ' user is hovering over the custom button
		        
		      end if
		      
		    case false
		      
		      if item.BadgeCount > 0 and item.ShowBadge then ' this item has both a custom button and a visible badge
		        
		        if MouseX > me.Width - item.ButtonImage.Width - item.BadgeWidth - 10 and MouseX < me.Width - item.BadgeWidth - 10 then
		          
		          hover = true ' user is hovering over the custom button
		          
		        end if
		        
		      else
		        
		        if MouseX > me.Width - item.ButtonImage.Width - 5 and MouseX < me.Width - 5 then
		          
		          hover = true ' user is hovering over the custom button
		          
		        end if
		        
		      end if
		      
		    end select
		    
		  end if
		  
		  
		  select case hover
		    
		  case true
		    
		    if item.EjectButton then ' draw the hover image for this selected item to the left of the eject button
		      
		      g.DrawPicture( item.ButtonHoverImage, g.Width - item.ButtonHoverImage.Width - kEjectButtonWidth - 10, 2 )
		      
		    elseif item.BadgeCount > 0 and item.ShowBadge = true then ' draw the hover image for this selected item to the left of the badge
		      
		      g.DrawPicture( item.ButtonHoverImage, g.Width - item.ButtonHoverImage.Width - item.BadgeWidth - 10, 2 )
		      
		    else ' draw the hover image for this selected item to right of this item
		      
		      g.DrawPicture( item.ButtonHoverImage, g.Width - item.ButtonHoverImage.Width - 5, 2 )
		      
		    end if
		    
		  case false
		    
		    if item.EjectButton then ' draw the standard image for this selected item to the left of the eject button
		      
		      g.DrawPicture( item.ButtonImage, g.Width - item.ButtonImage.Width - kEjectButtonWidth - 10, 2 )
		      
		    elseif item.BadgeCount > 0 and item.ShowBadge = true then ' draw the standard image for this selected item to the left of the badge
		      
		      g.DrawPicture( item.ButtonImage, g.Width - item.ButtonImage.Width - item.BadgeWidth - 10, 2 )
		      
		    else ' draw the standard image for this selected item to right of this item
		      
		      g.DrawPicture( item.ButtonImage, g.Width - item.ButtonImage.Width - 5, 2 )
		      
		    end if
		    
		  end select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawEjectButton(g as Graphics, Item as FGSourceListItem, Selected as Boolean)
		  // Internal use only.
		  
		  // This method draws an eject icon on the far right of this item.
		  
		  #pragma DisableBackgroundTasks
		  
		  dim hover as boolean = false
		  
		  // Set the font parameters
		  g.TextFont = "Lucida Grande"
		  
		  select case me.Style
		    
		  case ListStyle.iTunes, ListStyle.Mojave
		    
		    g.TextSize = 12
		    
		  case ListStyle.Finder, ListStyle.Mail
		    
		    g.TextSize = 14
		    
		  end select
		  
		  // Is the mouse hovering over the eject button?
		  if ItemUnderMouse = item then ' the user is hovering over this item's row
		    
		    if MouseX > me.Width - 20 and MouseX < me.Width - 7 then
		      
		      hover = true ' user is hovering over the eject button
		      
		    end if
		    
		  end if
		  
		  if selected then ' this row is selected
		    
		    select case hover
		      
		    case true ' hovering over a selected eject button
		      
		      select case me.Style
		        
		      case ListStyle.iTunes
		        
		        g.ForeColor = kGradientItunesEndColour
		        g.FillOval( g.Width - 21, 3, 14, 14 )
		        g.ForeColor = &cFFFFFF
		        g.DrawString( EjectIcon, g.Width - kEjectButtonWidth - 3, g.TextHeight - 1 )
		        
		      case ListStyle.Finder, ListStyle.Mail
		        
		        g.ForeColor = &c365A7C
		        g.FillOval( g.Width - 22, 1, 18, 18 )
		        g.ForeColor = &cFFFFFF
		        g.DrawString( EjectIcon, g.Width - kEjectButtonWidth - 3, g.TextHeight - 2 )
		        
		      case ListStyle.Mojave
		        
		        g.ForeColor = NSColor.AlternateSelectedControlTextColor 'NSColor.SecondaryLabelColor 'NSColor.TextColor
		        g.FillOval( g.Width - 21, 3, 14, 14 )
		        g.ForeColor = NSColor.AlternateSelectedControlColor 'NSColor.ControlBackgroundColor
		        g.DrawString( EjectIcon, g.Width - kEjectButtonWidth - 3, g.TextHeight - 1 )
		        
		      end select
		      
		    case false ' selected row but NOT hovering over the eject button
		      
		      select case me.Style
		        
		      case ListStyle.iTunes
		        
		        g.ForeColor = &cFFFFFF
		        g.FillOval( g.Width - 21, 3, 14, 14 )
		        g.ForeColor = kGradientItunesEndColour
		        g.DrawString( EjectIcon, g.Width - kEjectButtonWidth - 3, g.TextHeight - 1 )
		        
		      case ListStyle.Finder, ListStyle.Mail
		        
		        g.ForeColor = &cD3E3F2
		        g.DrawString( EjectIcon, g.Width - kEjectButtonWidth - 3, g.TextHeight - 2 )
		        
		      case ListStyle.Mojave
		        
		        g.ForeColor = NSColor.AlternateSelectedControlTextColor 'TextColor 'NSColor.SecondaryLabelColor
		        g.DrawString( EjectIcon, g.Width - kEjectButtonWidth - 3, g.TextHeight - 1 )
		        
		      end select
		      
		    end select
		    
		  else ' this row is unselected
		    
		    select case hover
		      
		    case true ' hovering over an unselected eject button
		      
		      select case me.Style
		        
		      case ListStyle.iTunes
		        
		        g.ForeColor = &c6482A0
		        g.FillOval( g.Width - 21, 3, 14, 14 )
		        g.ForeColor = &cFFFFFF
		        g.DrawString( EjectIcon, g.Width - kEjectButtonWidth - 3, g.TextHeight - 1 )
		        
		      case ListStyle.Finder, ListStyle.Mail
		        
		        g.ForeColor = &c7F8285
		        g.FillOval( g.Width - 22, 1, 18, 18 )
		        g.ForeColor = &cFFFFFF
		        g.DrawString( EjectIcon, g.Width - kEjectButtonWidth - 3, g.TextHeight - 2 )
		        
		      case ListStyle.Mojave
		        
		        g.ForeColor = NSColor.SecondaryLabelColor 'NSColor.TextColor '&c7F8285
		        g.FillOval( g.Width - 21, 3, 14, 14 )
		        g.ForeColor = NSColor.ControlBackgroundColor '&cFFFFFF
		        g.DrawString( EjectIcon, g.Width - kEjectButtonWidth - 3, g.TextHeight - 1 )
		        
		      end select
		      
		    case false ' NOT hovering over an unselected eject button
		      
		      select case me.Style
		        
		      case ListStyle.iTunes
		        
		        g.ForeColor = FGSourceListItem.kDefaultBadgeColour
		        g.FillOval( g.Width - 21, 3, 14, 14 )
		        g.ForeColor = &cFFFFFF
		        g.DrawString( EjectIcon, g.Width - kEjectButtonWidth - 3, g.TextHeight - 1 )
		        
		      case ListStyle.Finder, ListStyle.Mail
		        
		        g.ForeColor = &c4D4F51
		        g.DrawString( EjectIcon, g.Width - kEjectButtonWidth - 3, g.TextHeight - 2 )
		        
		      case ListStyle.Mojave
		        
		        g.ForeColor = NSColor.SecondaryLabelColor 'NSColor.TextColor '&c4D4F51
		        g.DrawString( EjectIcon, g.Width - kEjectButtonWidth - 3, g.TextHeight - 1 )
		        
		      end select
		      
		    end select
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawItem(Item as FGSourceListItem, g as Graphics, Row as Integer)
		  // This method draws the passed item (not a section) to the source list
		  
		  #pragma DisableBackgroundTasks
		  
		  dim indent, availableWidth as integer
		  
		  // Work out the level of indentation for this item
		  select case me.Style
		    
		  case ListStyle.Finder, ListStyle.iTunes, ListStyle.Mojave
		    
		    if item.Level = 1 then indent = 0
		    if item.Level = 2 then indent = 16
		    if item.Level = 3 then indent = 32
		    
		  case ListStyle.Mail
		    
		    if item.Level = 1 then indent = 15
		    if item.Level = 2 then indent = 29
		    if item.Level = 3 then indent = 45
		    
		  end select
		  
		  // Do we need to draw a disclosure triangle?
		  if item.NumberOfChildren > 0 then ' yes we do
		    
		    if me.Selected(row) then
		      
		      g.ForeColor = &cE5EEF7 ' off-white colour
		      
		    else
		      
		      g.ForeColor = &c818F9D ' greyish
		      
		    end if
		    
		    if item.Expanded then
		      
		      g.FillPolygon( ExpandedDisclosedTriangle(indent) )
		      
		    else
		      
		      g.FillPolygon( CollapsedDisclosedTriangle(indent) )
		      
		    end if
		    
		  end if
		  
		  // ########## Eject icon ########## \\
		  
		  if item.EjectButton then
		    
		    // Draw an eject icon on the far right of this row
		    DrawEjectButton( g, item, me.Selected(row) )
		    
		  end if
		  
		  // ########## Badges ########## \\
		  
		  if item.TotalBadgeCount > 0 and item.ShowBadge and not item.EjectButton then ' ejectable items cannot show badges
		    
		    DrawBadge( item, g, me.Selected(row) )
		    
		  end if
		  
		  // ########## Custom button ########## \\
		  
		  'if not item.ShowBadge and item.Button then ' items showing a badge cannot have a custom button
		  if item.Button then
		    
		    // Draw the custom buttom on the far right of this row (but to the left of an eject button, if present)
		    DrawCustomButton( g, item )
		    
		  end if
		  
		  // ########## Text and icons ########## \\
		  // Set the font style
		  g.TextSize = 11
		  
		  // Is this item selected?
		  if me.Selected(row) then
		    
		    g.Bold = true
		    if Style = ListStyle.Mojave then
		      g.ForeColor = NSColor.AlternateSelectedControlTextColor
		    else
		      g.ForeColor = &cFFFFFF
		    end if
		    
		  else
		    
		    g.Bold = false
		    if Style = ListStyle.Mojave then
		      g.ForeColor = NSColor.TextColor
		    end if
		    
		  end if
		  
		  // Draw the icon
		  if item.FolderIcon <> Nil then
		    item.FolderIcon.Size = 16*self.Window.ScaleFactor
		    g.DrawPicture item.FolderIcon, indent + 14, 2, 16, 16,   0, 0, item.FolderIcon.Size, item.FolderIcon.Size
		  else
		    g.DrawPicture item.Icon, indent + 14, 2, 16, 16,   0, 0, item.Icon.Width, item.Icon.Height
		  end if
		  'end if
		  
		  
		  // Draw the name. We need to limit the length of the name so it fits on the row. The length available for the name depends on whether
		  // a badge is present or not
		  if item.EjectButton and item.Button and item.ButtonImage <> nil then ' eject button and custom button
		    
		    availableWidth = me.Width - indent - item.ButtonImage.Width - 65
		    
		  elseif item.EjectButton then ' just an eject button
		    
		    availableWidth = me.Width - indent - 65
		    
		  elseif item.ShowBadge and item.Button and item.ButtonImage <> nil then ' both a custom button and a badge
		    
		    availableWidth = me.Width - indent - item.BadgeWidth - item.ButtonImage.Width - 55
		    
		  elseif item.ShowBadge then ' just a badge
		    
		    availableWidth = me.Width - indent - item.BadgeWidth - 47
		    
		  elseif item.Button and item.ButtonImage <> nil then ' just a custom button
		    
		    availableWidth = me.Width - indent - item.ButtonImage.Width - 45
		    
		  else ' no accessories
		    
		    availableWidth = me.Width - indent
		    
		  end if
		  
		  g.DrawString( item.Name, indent + 35, 14, availableWidth, true )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawSection(Section as FGSourceListItem, g as Graphics, Row as Integer)
		  // This method draws the passed section to the source list
		  
		  #pragma DisableBackgroundTasks
		  
		  dim indent as integer = 0
		  
		  select case me.Style
		    
		  case ListStyle.Mojave
		    
		    g.Bold = True
		    g.ForeColor = NSColor.SecondaryLabelColor
		    g.TextSize = 11
		    g.DrawString( Section.Name, 1, g.TextHeight+2 )
		    
		    if Section.Collapsible and ItemUnderMouse = Section then
		      g.TextSize = 10
		      if Section.Expanded then
		        g.DrawString( kHide, g.Width - g.StringWidth(kHide) - 5, g.TextHeight + 2 ) ' show the "hide" prompt
		      else 'if NOT Section.Expanded then
		        g.DrawString( kShow, g.Width - g.StringWidth(kShow) - 5, g.TextHeight + 2 ) ' show the "sjpw" prompt
		      end if
		      
		    end if
		    
		  case ListStyle.iTunes
		    
		    g.Bold = true
		    g.ForeColor = kColorSectionItunes
		    g.TextSize = 11
		    g.DrawString( section.Name, 1, g.TextHeight + 2 )
		    
		    if section.Collapsible and ItemUnderMouse = section then ' hovering over a collapsible section...
		      
		      g.ForeColor = &c727481
		      g.TextSize = 10
		      
		      if section.Expanded then
		        g.DrawString( kHide, g.Width - g.StringWidth("Hide") - 5, g.TextHeight + 2 ) ' show the "hide" prompt
		      else'if not section.Expanded then
		        g.DrawString( "Show", g.Width - g.StringWidth("Show") - 5, g.TextHeight + 2 ) ' show the "show" prompt
		      end if
		      
		    end if
		    
		  case ListStyle.Finder
		    
		    // Do we need to draw a disclosure triangle?
		    if section.Collapsible then ' yes we do
		      
		      indent = 14
		      g.ForeColor = &c818F9D ' greyish colour for the disclosure triangle
		      
		      if section.Expanded then
		        
		        g.FillPolygon( ExpandedDisclosedTriangle(0) )
		        
		      else
		        
		        g.FillPolygon( CollapsedDisclosedTriangle(0) )
		        
		      end if
		      
		    end if
		    
		    // Draw the section's name
		    g.Bold = true
		    g.ForeColor = kColorSectionItunes
		    g.TextSize = 11
		    g.DrawString( section.Name, 1 + indent, g.TextHeight + 1 )
		    
		  case ListStyle.Mail
		    
		    // Do we need to draw a disclosure triangle?
		    if section.Collapsible then ' yes we do
		      
		      indent = 17
		      g.ForeColor = &c818F9D ' greyish colour for the disclosure triangle
		      
		      if section.Expanded then
		        
		        g.FillPolygon( ExpandedDisclosedTriangle(3) )
		        
		      else
		        
		        g.FillPolygon( CollapsedDisclosedTriangle(3) )
		        
		      end if
		      
		      // Draw the section's name
		      g.Bold = true
		      g.ForeColor = kColorSectionItunes
		      g.TextSize = 11
		      g.DrawString( section.Name, 1 + indent, g.TextHeight + 1 )
		      
		    else ' not collapsible
		      
		      // Draw the section's name
		      g.Bold = true
		      g.ForeColor = kColorSectionItunes
		      g.TextSize = 11
		      g.DrawString( section.Name, 7 + indent, g.TextHeight + 1 )
		      
		    end if
		    
		  end select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ExpandedDisclosedTriangle(Indent as Integer) As Integer()
		  // This method returns an array of coordinates to be used by the Graphics.FillPolygon method. It constructs an expanded disclosure
		  // triangle.
		  // Indent is the number of pixels to indent the triangle by.
		  
		  return Array(0, 3+indent, 6, 11+indent, 6, 7+indent, 14)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExpandItemAtIndex(ExpandChildren as Boolean, SectionName as String, Level1Index as Integer, Level2Index as Integer = -1)
		  // This method expands an item at the specified index. If ExpandChildren = true then all children of the specified
		  //item are also expanded.
		  
		  dim section, level1, level2 as FGSourceListItem
		  
		  // Reset errors
		  ResetErrors()
		  
		  // Get the specified section
		  if not SectionWithNameExists( sectionName ) then
		    
		    mErrorCode = error.SectionDoesNotExist
		    mErrorMessage = "There is no section named " + chr(34) + sectionName + chr(34) + " in the source list."
		    return
		    
		  end if
		  
		  // Get the section
		  section = GetSection( sectionName )
		  
		  // Is this a valid level1Index?
		  if level1Index < 0 or level1Index > section.Children.Ubound then
		    
		    mErrorCode = error.InvalidIndex
		    mErrorMessage = "Invalid Level1Index."
		    return
		    
		  end if
		  
		  if level2Index = -1 then ' the user wants to expand a level 1 item
		    
		    // Get this level 1 item
		    level1 = section.Children(level1Index)
		    
		    // Expand it
		    level1.Expanded = true
		    
		    if ExpandChildren then level1.ExpandChildren() ' the user wants to expand all of this item's children as well
		    
		    Rebuild()
		    
		    return
		    
		  end if
		  
		  // We've got this far - must be trying to expand a level 2 item
		  // Is this a valid level2Index?
		  if level2Index < 0 or level2Index > level1.Children.Ubound then
		    
		    mErrorCode = error.InvalidIndex
		    mErrorMessage = "Invalid Level1Index."
		    return
		    
		  end if
		  
		  // Get this level 2 item
		  level2 = level1.Children(level2Index)
		  
		  // Expand it
		  level2.Expanded = true
		  
		  if ExpandChildren then level2.ExpandChildren() ' the user wants to expand all of this item's children as well
		  
		  Rebuild()
		  
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExpandItemAtRow(Row as Integer)
		  // Expands the item at the passed row
		  
		  dim item as FGSourceListItem
		  
		  // Get the requested row
		  item = ItemAtRowNumber(row)
		  
		  if item <> nil then item.Expanded = true
		  
		  // Rebuild the source list to reflect the change
		  Rebuild()
		  
		  // Fire our custom event
		  ExpandedItem(item)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ExpandRow(Row as Integer)
		  // Expand this item
		  
		  dim item, child as FGSourceListItem
		  
		  item = ItemAtRowNumber(row)
		  
		  if item = nil then return
		  
		  // Flag that this item is expanded
		  item.Expanded = true
		  
		  // Display this item's top-level children (if any)
		  if item.NumberOfChildren > 0 then
		    
		    for each child in item.Children
		      
		      AddToSourceList(child)
		      
		    next child
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExpandSection(SectionName as String)
		  // Expands the specified section
		  
		  dim section as FGSourceListItem
		  
		  // Reset errors
		  ResetErrors()
		  
		  // Does this section exist?
		  if not SectionWithNameExists( sectionName ) then
		    
		    mErrorCode = error.SectionDoesNotExist
		    mErrorMessage = "Unable to expand section " + chr(34) + sectionName + chr(34) + _
		    " as there is no section with this name in the source list."
		    return
		    
		  end if
		  
		  // Find this section and expand it
		  for each section in root.Children
		    
		    if section.Name = sectionName then
		      
		      section.Expanded = true
		      Rebuild()
		      
		      // Fire our custom event
		      ExpandedItem(section)
		      
		      return
		      
		    end if
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSection(SectionName as String) As FGSourceListItem
		  // This methods returns the requested section
		  
		  dim section as FGSourceListItem
		  
		  // Reset errors
		  ResetErrors()
		  
		  if not SectionWithNameExists( sectionName ) then
		    
		    mErrorCode = error.SectionDoesNotExist
		    mErrorMessage = "There is no section named " + chr(34) + sectionName + chr(34) + "."
		    return nil
		    
		  end if
		  
		  for each section in root.Children
		    
		    if section.Name = sectionName then return section
		    
		  next
		  
		  return nil ' should never get to this line
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HighlightRow(g as Graphics)
		  // Internal use only
		  
		  // Fills the passed graphics object with a gradient colour.
		  
		  dim i as integer
		  dim ratio, endratio as double
		  dim startColor, endColor, topColor as Color
		  
		  // Determine colours
		  select case me.Style
		    
		  case ListStyle.iTunes
		    
		    if me.Active = false or me.Enabled = false or me.HasFocus = false then
		      
		      startColor = kGradientLostFocusItunesStartColour
		      endColor = kGradientLostFocusItunesEndColour
		      topColor = kGradientLostFocusItunesTopColour
		      
		    else
		      
		      startColor = kGradientItunesStartColour
		      endColor = kGradientItunesEndColour
		      topColor = kGradientItunesTopColour
		      
		    end if
		    
		  case ListStyle.Finder
		    
		    if me.Active = false or me.Enabled = false or me.HasFocus = false then
		      
		      startColor = kGradientLostFocusFinderStartColour
		      endColor = kGradientLostFocusFinderEndColour
		      topColor = kGradientLostFocusFinderTopColour
		      
		    else
		      
		      startColor = kGradientFinderStartColour
		      endColor = kGradientFinderEndColour
		      topColor = kGradientFinderTopColour
		      
		    end if
		    
		  case ListStyle.Mail
		    
		    if me.Active = false or me.Enabled = false or me.HasFocus = false then
		      
		      startColor = kGradientLostFocusMailStartColour
		      endColor = kGradientLostFocusMailEndColour
		      topColor = kGradientLostFocusMailTopColour
		      
		    else
		      
		      startColor = kGradientMailStartColour
		      endColor = kGradientMailEndColour
		      topColor = kGradientMailTopColour
		      
		    end if
		    
		  end select
		  
		  // Draw the gradient (line by line, to make a solid filled row)
		  if me.Style = ListStyle.iTunes or me.Style = ListStyle.Finder or me.Style = ListStyle.Mail then
		    for i = 0 to g.Height
		      
		      // Determine the current line's colour
		      ratio = (( g.Height - i ) / g.Height )
		      endratio = ( i / g.Height )
		      
		      g.ForeColor = rgb(endColor.Red * endratio + startColor.Red * ratio, endColor.Green * endratio + _
		      startColor.Green * ratio, endColor.Blue * endratio + startColor.Blue * ratio)
		      
		      // Draw the step
		      g.DrawLine 0, i, g.Width, i
		      
		    next
		    
		    g.ForeColor = topColor
		    g.DrawLine 0, 0, g.Width, 0
		  else
		    'if me.Style = ListStyle.Mojave then
		    g.ForeColor = nscolor.AlternateSelectedControlColor
		    g.FillRect 0, 0, g.Width, g.Height
		    'end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Initialise()
		  // Called when FGSourceList is first created
		  
		  // Create the root item and set it's level
		  root = new FGSourceListItem
		  root.Name = "root"
		  
		  // Set some listbox properties (when the scrollbar is enabled it messes up right-edge detection of the source list
		  me.ScrollBarVertical = false
		  me.AutoHideScrollbars = false
		  if me.DefaultRowHeight = -1 then
		    me.DefaultRowHeight = 20
		  end if
		  
		  // Ensures that the correct background colour is painted
		  me.HasFocus = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertEmptySection(SectionName as String, Index as Integer, Collapsible as Boolean = False)
		  // Creates an empty section named SectionName and inserts it at the specified index. SectionName != "" and must be unique amongst the
		  // sections in the source list. Collapsible defaults to false.
		  
		  // Reset error properties
		  ResetErrors()
		  
		  // Check the name
		  if sectionName = "" then
		    
		    mErrorCode = error.SectionNameInvalid
		    mErrorMessage = "Section names cannot be nil."
		    return
		    
		  end if
		  
		  if SectionWithNameExists(sectionName) then
		    
		    mErrorCode = error.SectionNameNotUnique
		    mErrorMessage = "Section names must be unique within a source list."
		    return
		    
		  end if
		  
		  // Check that the index is valid
		  if index < 0 or index > root.Children.Ubound + 1 then
		    
		    mErrorCode = error.InvalidIndex
		    mErrorMessage = "Cannot insert section as specified index is invalid."
		    return
		    
		  end if
		  
		  // Create this section
		  dim section as new FGSourceListItem
		  section.Name = sectionName
		  section.Collapsible = Collapsible
		  section.Expanded = true ' all new sections start off expanded
		  section.Level = 0
		  section.Parent = root
		  section.Section = true
		  
		  // Add this section to the source list at the specified index
		  root.Children.Insert( index, section )
		  me.InsertRow( RowNumberOfItem( section ), section.Name )
		  
		  // Remember the index of this item
		  mLastItemIndex = index
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertItem(Item as FGSourceListItem, SectionName as String, Level1Index as Integer, Level2Index as Integer = -1, Level3Index as Integer = -1)
		  // Takes a user-created level 1, 2 or 3 item and inserts it at the specified index in the specified section.
		  // Sections are inserted with either the [InsertEmptySection] or [InsertSection] methods.
		  
		  dim section, level1, level2 as FGSourceListItem
		  
		  // Reset errors
		  ResetErrors()
		  
		  // Check that this section exists
		  if not SectionWithNameExists(sectionName) then
		    
		    mErrorCode = error.SectionDoesNotExist
		    mErrorMessage = "Unable to insert item as the section named " + chr(34) + sectionName + chr(34) + " does not exist in the source list."
		    return
		    
		  end if
		  
		  // Get the requested section
		  section = GetSection( SectionName )
		  
		  // Do some VERY basic error checking on the passed item
		  if item = nil then
		    
		    mErrorCode = error.NilItem
		    mErrorMessage = "Unable to insert the passed item as item = nil."
		    return
		    
		  elseif item.Name = "" then
		    
		    mErrorCode = error.InvalidItemName
		    mErrorMessage = "Unable to insert item as it's name is invalid"
		    return
		    
		  end if
		  
		  if level2Index = -1 then ' user is trying to insert a level 1 item
		    
		    // Check that this is a valid index
		    if level1Index < 0 or level1Index > section.Children.Ubound + 1 then
		      
		      mErrorCode = error.InvalidIndex
		      mErrorMessage = "Unable to insert item as Level1Index is invalid."
		      return
		      
		    end if
		    
		    // Make sure this item's level has been set correctly (and set it if it hasn't)
		    item.Level = 1
		    
		    // Set this item's parent
		    item.Parent = section
		    
		    // Insert this item
		    section.Children.Insert(Level1Index, item)
		    
		    // Reflect the changes in the source list
		    Rebuild()
		    
		    return ' we're done
		    
		  end if
		  
		  if Level3Index = -1 then ' user is trying to insert a level 2 item
		    
		    // Check that level1Index is valid
		    if level1Index < 0 or level1Index > section.Children.Ubound then
		      
		      mErrorCode = error.InvalidParentIndex
		      mErrorMessage = "Invalid Level1Index."
		      return
		      
		    end if
		    
		    // Get this level 1 item
		    level1 = section.Children(level1Index)
		    
		    // Check that this is a valid index
		    if level2Index < 0 or level2Index > level1.Children.Ubound + 1 then
		      
		      mErrorCode = error.InvalidIndex
		      mErrorMessage = "Unable to insert item as Level2Index is invalid."
		      return
		      
		    end if
		    
		    // Make sure this item's level has been set correctly (and set it if it hasn't)
		    item.Level = 2
		    
		    // Set this item's parent
		    item.Parent = level1
		    
		    // Insert this item
		    level1.Children.Insert(Level2Index, item)
		    
		    // Reflect the changes in the source list
		    Rebuild()
		    
		    return ' we're done
		    
		  end if
		  
		  // The user is trying to insert a level 3 item - check that level1Index is valid
		  if level1Index < 0 or level1Index > section.Children.Ubound then
		    
		    mErrorCode = error.InvalidParentIndex
		    mErrorMessage = "Invalid Level1Index."
		    return
		    
		  end if
		  
		  // Get this level 1 item
		  level1 = section.Children(level1Index)
		  
		  // Check that this level2 item exists
		  if level2Index < 0 or level2Index > level1.Children.Ubound then
		    
		    mErrorCode = error.ItemDoesNotExist
		    mErrorMessage = "There is no item at the specified Level2Index."
		    return
		    
		  end if
		  
		  // Get this level 2 item
		  level2 = level1.Children(level2Index)
		  
		  // Check that this is a valid index
		  if level3Index < 0 or level3Index > level2.Children.Ubound + 1 then
		    
		    mErrorCode = error.InvalidIndex
		    mErrorMessage = "Unable to insert item as Level3Index is invalid."
		    return
		    
		  end if
		  
		  // Make sure this item's level has been set correctly (and set it if it hasn't)
		  item.Level = 3
		  
		  // Set this item's parent
		  item.Parent =level2
		  
		  // Insert this item
		  level2.Children.Insert(Level3Index, item)
		  
		  // Reflect the changes in the source list
		  Rebuild()
		  
		  return ' we're done
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertSection(Section as FGSourceListItem, Index as Integer)
		  // Takes a user-created section item and inserts it at the specified index. SectionName != "" and must be unique amongst the
		  // sections in the source list.
		  
		  // Reset error properties
		  ResetErrors()
		  
		  // Check the name
		  if section.Name = "" then
		    
		    mErrorCode = error.SectionNameInvalid
		    mErrorMessage = "Section names cannot be nil."
		    return
		    
		  end if
		  
		  if SectionWithNameExists(section.Name) then
		    
		    mErrorCode = error.SectionNameNotUnique
		    mErrorMessage = "Section names must be unique within a source list."
		    return
		    
		  end if
		  
		  // Check that the index is valid
		  if index < 0 or index > root.Children.Ubound + 1 then
		    
		    mErrorCode = error.InvalidIndex
		    mErrorMessage = "Cannot insert section as specified index is invalid."
		    return
		    
		  end if
		  
		  // Force some section properties onto the passed FGSourceListItem (they should have been set correctly by the user though...)
		  // NB: No error checking is performed on this section's children's levels, etc.
		  section.Level = 0
		  section.Parent = root
		  section.Section = true
		  
		  // Insert this section to the source list at the specified index
		  root.Children.Insert( index, section )
		  me.InsertRow( RowNumberOfItem( section ), section.Name )
		  
		  // Remember the index of this item
		  mLastItemIndex = index
		  
		  Rebuild()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ItemAtRowNumber(Row as Integer) As FGSourceListItem
		  // This method returns the item at the specified row. Only visible rows are counted.
		  // Row 0 is the first visible row
		  
		  dim count as integer = -1
		  dim section, level1, level2, level3 as FGSourceListItem
		  
		  // Reset errors
		  ResetErrors()
		  
		  // Check for a valid row number
		  if row < 0 or row > me.ListCount then
		    
		    mErrorCode = error.Internal
		    mErrorMessage = "ItemAtRowNumber: invalid row number"
		    return nil
		    
		  end if
		  
		  if sectionCount = 0 then return nil ' there are no items in the source list
		  
		  // Start looping to find the item at the requested row
		  for each section in root.Children
		    
		    count = count + 1
		    
		    if count = row then return section
		    
		    if section.NumberOfChildren > 0 and section.Expanded then ' this section is expanded - count the number of visible children
		      
		      for each level1 in section.Children
		        
		        count = count + 1
		        
		        if count = row then return level1
		        
		        if level1.NumberOfChildren > 0 and level1.Expanded then
		          
		          for each level2 in level1.Children
		            
		            count = count + 1
		            
		            if count = row then return level2
		            
		            if level2.NumberOfChildren > 0 and level2.Expanded then
		              
		              for each level3 in level2.Children
		                
		                count = count + 1
		                
		                if count = row then return level3
		                
		              next level3
		              
		            end if
		            
		          next level2
		          
		        end if
		        
		      next level1
		      
		    end if
		    
		  next section
		  
		  return nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ItemUnderMouse() As FGSourceListItem
		  // This method returns the item currently under the mouse cursor.
		  
		  dim row as integer
		  
		  // Is the cursor within the source list?
		  if MouseX < 0 or MouseY < 0 then
		    return nil ' not in the source list
		  end if
		  
		  // What row are we hovering over and is it valid?
		  row = floor( MouseY / me.DefaultRowHeight )
		  if row > me.ListCount - 1 then
		    return nil ' we are hovering over a part of the listbox that doesn't have a row
		  end if
		  
		  // Return the item under the mouse
		  return ItemAtRowNumber( row )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Rebuild()
		  // This method rebuilds the entire source list using the data stored in root
		  
		  dim item as FGSourceListItem
		  
		  if root = nil then return
		  
		  // Delete the listbox
		  me.DeleteAllRows()
		  
		  if sectionCount > 0 then
		    
		    for each item in root.Children
		      
		      AddToSourceList( item )
		      
		    next item
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveItem(Item as FGSourceListItem)
		  // Removes the passed item from the source list.
		  // Note: The user needs to call FGSourceList.Rebuild() after calling this method as the source list does not refresh immediately after
		  // calling this method.
		  
		  // Reset errors
		  ResetErrors()
		  
		  // Check for a nil object
		  if item = nil then
		    
		    mErrorCode = error.NilItem
		    mErrorMessage = "Unable to remove item from source list as item = nil."
		    return
		    
		  end if
		  
		  // Check item != root
		  if item = root then
		    
		    mErrorCode = error.CannotRemoveRootItem
		    mErrorMessage = "You cannot remove the root item."
		    return
		    
		  end if
		  
		  // Remove this item from root
		  mErrorCode = root.RemoveChild(item)
		  
		  // Handle any errors generated
		  select case mErrorCode
		    
		  case error.None ' successfully remove the item
		    mErrorMessage = ""
		    
		  case error.NilItem
		    mErrorMessage = "Unable to remove item as item = nil."
		    
		  case error.ItemHasNoChildren
		    mErrorMessage = "Unable to remove item as the source list is empty."
		    
		  case error.ChildNotFound
		    mErrorMessage = "Unable to remove item as it is not present in the source list."
		    
		  end select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveItem(SectionName as String, Level1Index as Integer, Level2Index as Integer = - 1, Level3Index as Integer = - 1)
		  // This method removes the item from the specified section and index. Children of this item are also removed.
		  // Sections are removed with the [RemoveSection] method.
		  // If the user holds a reference to the item in question, it can also be removed with the RemoveItem(Item) method.
		  
		  dim section, level1, level2 as FGSourceListItem
		  
		  // Reset errors
		  ResetErrors()
		  
		  // Check that this section exists
		  if not SectionWithNameExists(sectionName) then
		    
		    mErrorCode = error.SectionDoesNotExist
		    mErrorMessage = "Unable to remove item as the section named " + chr(34) + sectionName + chr(34) + _
		    " does not exist in the source list."
		    return
		    
		  end if
		  
		  // Get the requested section
		  section = GetSection( SectionName )
		  
		  if level2Index = -1 then ' user is trying to remove a level 1 item
		    
		    // Check that this item exists
		    if level1Index < 0 or level1Index > section.Children.Ubound then
		      
		      mErrorCode = error.ItemDoesNotExist
		      mErrorMessage = "There is no item at the specified Level1Index."
		      return
		      
		    end if
		    
		    // Remove this item
		    section.Children.Remove(level1Index)
		    
		    // Reflect the changes in the source list
		    Rebuild()
		    
		    return ' we're done
		    
		  end if
		  
		  if Level3Index = -1 then ' user is trying to remove a level 2 item
		    
		    // Check that level1Index is valid
		    if level1Index < 0 or level1Index > section.Children.Ubound then
		      
		      mErrorCode = error.InvalidParentIndex
		      mErrorMessage = "Invalid Level1Index."
		      return
		      
		    end if
		    
		    // Get this level 1 item
		    level1 = section.Children(level1Index)
		    
		    // Check that this level2 item exists
		    if level2Index < 0 or level2Index > level1.Children.Ubound then
		      
		      mErrorCode = error.ItemDoesNotExist
		      mErrorMessage = "There is no item at the specified Level2Index."
		      return
		      
		    end if
		    
		    // Remove this item
		    level1.Children.Remove(level2Index)
		    
		    // Reflect the changes in the source list
		    Rebuild()
		    
		    return ' we're done
		    
		  end if
		  
		  // The user is trying to remove a level 3 item - check that level1Index is valid
		  if level1Index < 0 or level1Index > section.Children.Ubound then
		    
		    mErrorCode = error.InvalidParentIndex
		    mErrorMessage = "Invalid Level1Index."
		    return
		    
		  end if
		  
		  // Get this level 1 item
		  level1 = section.Children(level1Index)
		  
		  // Check that this level2 item exists
		  if level2Index < 0 or level2Index > level1.Children.Ubound then
		    
		    mErrorCode = error.ItemDoesNotExist
		    mErrorMessage = "There is no item at the specified Level2Index."
		    return
		    
		  end if
		  
		  // Get this level 2 item
		  level2 = level1.Children(level2Index)
		  
		  // Check that this level3 item exists
		  if level3Index < 0 or level3Index > level2.Children.Ubound then
		    
		    mErrorCode = error.ItemDoesNotExist
		    mErrorMessage = "There is no item at the specified Level3Index."
		    return
		    
		  end if
		  
		  // Remove this item
		  level2.Children.Remove(level3Index)
		  
		  // Reflect the changes in the source list
		  Rebuild()
		  
		  return ' we're done
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveSection(SectionName as String)
		  // Removes the specified section and all of it's children from the source list
		  
		  dim i as integer
		  
		  // Reset errors
		  ResetErrors()
		  
		  // Does this section exist?
		  if not SectionWithNameExists( sectionName ) then
		    
		    mErrorCode = error.SectionDoesNotExist
		    mErrorMessage = "Cannot remove section named " + chr(34) + sectionName + chr(34) + " as it does not exist in the source list."
		    return
		    
		  end if
		  
		  // Get the index of this section
		  for i = 0 to root.Children.Ubound
		    
		    if root.Children(i).Name = sectionName then exit
		    
		  next i
		  
		  // Remove this section from the source list
		  root.Children.Remove( i )
		  
		  // Reflect our changes in the source list
		  Rebuild()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ResetErrors()
		  // This method simply resets the error properties
		  
		  mErrorCode = Error.None
		  mErrorMessage = ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowNumberOfItem(Item as FGSourceListItem) As Integer
		  // Returns the row number of item.
		  // Only top level items, and items inside expanded items are counted in row number.
		  // Row 0 is the first visible row.
		  // Returns -1 if this item is not found in the source list.
		  
		  dim row as integer = -1
		  dim section, level1, level2, level3 as FGSourceListItem
		  
		  // Reset errors
		  ResetErrors()
		  
		  // Check that item is valid
		  if item = nil then
		    
		    mErrorCode = error.Internal
		    mErrorMessage = "RowNumberOfItem: item = nil."
		    return -1
		    
		  end if
		  
		  if sectionCount = 0 then return -1 ' there are no items in the source list
		  
		  // Start looping to find the row number of the specified item
		  for each section in root.Children
		    
		    row = row + 1
		    
		    if section = item then return row
		    
		    if section.NumberOfChildren > 0 and section.Expanded then ' this section is expanded - count the number of visible children
		      
		      for each level1 in section.Children
		        
		        row = row + 1
		        
		        if level1 = item then return row
		        
		        if level1.NumberOfChildren > 0 and level1.Expanded then
		          
		          for each level2 in level1.Children
		            
		            row = row + 1
		            
		            if level2 = item then return row
		            
		            if level2.NumberOfChildren > 0 and level2.Expanded then
		              
		              for each level3 in level2.Children
		                
		                row = row + 1
		                
		                if level3 = item then return row
		                
		              next level3
		              
		            end if
		            
		          next level2
		          
		        end if
		        
		      next level1
		      
		    end if
		    
		  next section
		  
		  return -1 ' we didn't find the specified item in the source list
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionCount() As Integer
		  // This method returns the number of sections in the source list.
		  
		  // Reset error properties
		  ResetErrors()
		  
		  return root.Children.Ubound + 1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionWithNameExists(SectionName as String) As Boolean
		  // This method returns true if a section named SectionName exists in the source list
		  
		  dim section as FGSourceListItem
		  
		  if me.SectionCount = 0 then
		    
		    return false ' no sections have been defined
		    
		  else
		    
		    for each section in root.Children
		      
		      if section.Name = sectionName then return true
		      
		    next
		    
		  end if
		  
		  return false ' didn't find a section with this name
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateControls()
		  if mAttachedControls <> Nil and mAttachedControls.Count > 0 then
		    For each control as RectControl in mAttachedControls.Keys
		      AttachControl( control, mCtrlsToMove.IndexOf(control) > -1 )
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
		Event CellBackgroundPaint(g as Graphics, row as Integer, column as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CellTextPaint(g as Graphics, row as Integer, column as Integer, x as Integer, y as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ClickedButton(Item as FGSourceListItem)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ClickedEjectButton(Item as FGSourceListItem)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CollapsedItem(Item as FGSourceListItem)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ContextualClickedItem(Item as FGSourceListItem)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DoubleClickedItem(Item as FGsourceListItem)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DraggingItem(Item as FGSourceListItem)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ExpandedItem(Item as FGSourceListItem)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GotFocus()
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
		Event MouseEnter()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseExit()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseMove(X as Integer, Y as Integer)
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
		Event SelectedItem(Item as FGSourceListItem)
	#tag EndHook


	#tag Note, Name = About FGSourceList
		- Apple's HIG states that source lists should not contain more than two levels of hierarchy
		- Rebuild() must be called by the user after the following methods to accurately update the source list:
		     [RemoveItem]
		
		
		CURRENT PUBLIC METHODS:
		
		Adding sections:
		- AppendSection
		- InsertEmptySection
		- InsertSection
		
		Adding items:
		- AppendItem
		- InsertItem
		
		Removing sections:
		- RemoveSection
		
		Removing items:
		- RemoveItem(item)
		- RemoveItem(sectionName, index)
		
		Expanding / collapsing items and sections
		- ExpandSection
		- CollapseSection
		- ExpandItemAtIndex
		- ExpandItemAtRow
		- CollapseItemAtIndex
		- CollapseItemAtRow
		
		Misc:
		- Clear
		- Rebuild
		- ItemAtRowNumber
		- SectionCount
		- SectionWithNameExists
		
		CUSTOM EVENTS:
		
		- CollapsedSection
		- ContextualClickedItem
		- DoubleClickedItem
		- DraggingItem
		- ExpandedSection
		- SelectedItem
		
	#tag EndNote

	#tag Note, Name = To Do
		Cocoa support
		- Disclosure triangles not being drawn for sections
		
		
	#tag EndNote


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

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  return Encodings.UTF8.Chr(&h23CF)
			  
			End Get
		#tag EndGetter
		Private EjectIcon As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mErrorCode
			End Get
		#tag EndGetter
		ErrorCode As Error
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mErrorMessage
			End Get
		#tag EndGetter
		ErrorMessage As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private HasFocus As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Nil if nothing being dragged.
		#tag EndNote
		Private ItemBeingDragged As FGSourceListItem
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim AlternatingRowBackgroundColors() as NSColor = NSColor.ControlAlternatingRowBackgroundColors
			  Return AlternatingRowBackgroundColors(1)
			End Get
		#tag EndGetter
		kColorSourceListBackgroundMojave As Color
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private LastItemClicked As FGSourceListItem
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mLastItemIndex
			End Get
		#tag EndGetter
		LastItemIndex As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private LastRowInvalidated As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastWidth As Integer
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

	#tag Property, Flags = &h21
		#tag Note
			After every method call by FGSourceList, ErrorCode and ErrorMessage are set. ErrorCode = 0 = no error.
		#tag EndNote
		Private mErrorCode As Error
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			After every method call by FGSourceList, ErrorCode and ErrorMessage are set.
		#tag EndNote
		Private mErrorMessage As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MinWidth As Integer = 200
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			The index of the last item added to the source list.
			Updated by the various FGSourceList [append] and [add] methods.
		#tag EndNote
		Private mLastItemIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			The X coordinate of the mouse cursor in the source list.
			= -1 if the cursor is not within the source list.
		#tag EndNote
		Private MouseX As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			The Y coordinate of the mouse cursor in the source list.
			= -1 if the cursor is not within the source list.
		#tag EndNote
		Private MouseY As Integer = -1
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

	#tag Property, Flags = &h21
		#tag Note
			The root is the uppermost level of the tree. It must exist for the source list to function.
		#tag EndNote
		Private Root As FGSourceListItem
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Determines the style of the source list. Options are:
			
			- iTunes 10
		#tag EndNote
		Style As ListStyle
	#tag EndProperty


	#tag Constant, Name = kColorBorder, Type = Color, Dynamic = False, Default = \"&c9F9F9F", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kColorSectionItunes, Type = Color, Dynamic = False, Default = \"&c515F6E", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kColorSourceListBackground, Type = Color, Dynamic = False, Default = \"&cD1D7DF", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kColorSourceListBackgroundInactive, Type = Color, Dynamic = False, Default = \"&cEDEDED", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kColorSourceListBackgroundMojave, Type = Color, Dynamic = False, Default = \"&c333131", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kEjectButtonWidth, Type = Double, Dynamic = False, Default = \"16", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientFinderEndColour, Type = Color, Dynamic = False, Default = \"&c1C58AE", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientFinderStartColour, Type = Color, Dynamic = False, Default = \"&c5B92D5", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientFinderTopColour, Type = Color, Dynamic = False, Default = \"&c4580C8", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientItunesEndColour, Type = Color, Dynamic = False, Default = \"&c1C58AE", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientItunesStartColour, Type = Color, Dynamic = False, Default = \"&c5B92D5", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientItunesTopColour, Type = Color, Dynamic = False, Default = \"&c4580C8", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientLostFocusFinderEndColour, Type = Color, Dynamic = False, Default = \"&c9B9B9B", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientLostFocusFinderStartColour, Type = Color, Dynamic = False, Default = \"&cC2C2C2", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientLostFocusFinderTopColour, Type = Color, Dynamic = False, Default = \"&cA8A8A8", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientLostFocusItunesEndColour, Type = Color, Dynamic = False, Default = \"&c8498B6", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientLostFocusItunesStartColour, Type = Color, Dynamic = False, Default = \"&cB0BED6", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientLostFocusItunesTopColour, Type = Color, Dynamic = False, Default = \"&cA2B0CA", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientLostFocusMailEndColour, Type = Color, Dynamic = False, Default = \"&c9C9C9C", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientLostFocusMailStartColour, Type = Color, Dynamic = False, Default = \"&cBEBEBE", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientLostFocusMailTopColour, Type = Color, Dynamic = False, Default = \"&cA8A8A8", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientMailEndColour, Type = Color, Dynamic = False, Default = \"&c8296B6", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientMailStartColour, Type = Color, Dynamic = False, Default = \"&CADBBD4", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGradientMailTopColour, Type = Color, Dynamic = False, Default = \"&cA2B0C9", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kHide, Type = String, Dynamic = True, Default = \"Hide", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Hide"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Verberg"
	#tag EndConstant

	#tag Constant, Name = kShow, Type = String, Dynamic = True, Default = \"Show", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Show"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Toon"
	#tag EndConstant

	#tag Constant, Name = Version, Type = String, Dynamic = False, Default = \"1.0.6", Scope = Public
	#tag EndConstant


	#tag Enum, Name = Error, Flags = &h0
		None
		  Internal
		  NilItem
		  CannotRemoveRootItem
		  SectionNameNotUnique
		  SectionNameInvalid
		  SectionDoesNotExist
		  SectionNotCollapsible
		  InvalidParentIndex
		  InvalidItemName
		  InvalidIndex
		  NoItemIcon
		  ItemDoesNotExist
		  ItemHasNoChildren
		ChildNotFound
	#tag EndEnum

	#tag Enum, Name = ListStyle, Type = Integer, Flags = &h0
		Finder
		  Mail
		  iTunes
		Mojave
	#tag EndEnum


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
			Name="Index"
			Visible=true
			Group="ID"
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
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
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
			Name="Transparent"
			Visible=true
			Group="Appearance"
			InitialValue="False"
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
			Name="RequiresSelection"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ErrorMessage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastItemIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Style"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="ListStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Finder"
				"1 - Mail"
				"2 - iTunes"
				"3 - Mojave"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="kColorSourceListBackgroundMojave"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
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
			Name="Resizable"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
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
			Name="MinWidth"
			Visible=true
			Group="Behavior"
			InitialValue="200"
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
			Name="InitialParent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
			Name="ErrorCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Error"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Internal"
				"2 - NilItem"
				"3 - CannotRemoveRootItem"
				"4 - SectionNameNotUnique"
				"5 - SectionNameInvalid"
				"6 - SectionDoesNotExist"
				"7 - SectionNotCollapsible"
				"8 - InvalidParentIndex"
				"9 - InvalidItemName"
				"10 - InvalidIndex"
				"11 - NoItemIcon"
				"12 - ItemDoesNotExist"
				"13 - ItemHasNoChildren"
				"14 - ChildNotFound"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
