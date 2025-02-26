#tag Class
Protected Class FGSourceListItem
	#tag Method, Flags = &h0
		Sub CollapseChildren()
		  // This method collapses all of this item's children
		  
		  dim child as FGSourceListItem
		  
		  if Children.Ubound < 0 then return ' no children to collapse
		  
		  for each child in Children
		    
		    child.Expanded = false
		    
		    child.ExpandChildren()
		    
		  next child
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(TheFolder as FolderItem)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExpandChildren()
		  // This method expands all of this item's children
		  
		  dim child as FGSourceListItem
		  
		  if Children.Ubound < 0 then return ' no children to expand
		  
		  for each child in Children
		    
		    child.Expanded = true
		    
		    child.ExpandChildren()
		    
		  next child
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexInParent() As Integer
		  // This method returns the index of this item in it's parent's children array
		  
		  dim i as integer
		  
		  if me.Parent = nil or me.Parent.Children.Ubound < 0 then return -1
		  
		  for i = 0 to me.Parent.Children.Ubound
		    
		    if me.Parent.Children(i) = me then
		      
		      return i
		      
		    end if
		    
		  next i
		  
		  return -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MySection() As FGSourceListItem
		  // This method returns this item's containing section.
		  // Returns nil if we're a section ourself or if we're root.
		  
		  if me.Section or me.Parent = nil then return nil
		  
		  select case level
		    
		  case 1
		    
		    return me.Parent
		    
		  case 2
		    
		    if me.Parent.Parent <> nil then return me.Parent.Parent
		    
		  case 3
		    
		    if me.Parent.Parent <> nil then
		      
		      if me.Parent.Parent.Parent <> nil then return me.Parent.Parent.Parent
		      
		    end if
		    
		  end select
		  
		  return nil ' must be a problem
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveChild(Child as FGSourceListItem) As FGSourceList.Error
		  // This method removes the passed FGSourceListItem if it can be found beneath this item in the tree.
		  // Returns a FGSourceList error code.
		  
		  'dim a as integer
		  dim error as FGSourceList.Error
		  
		  if child = nil then return FGSourceList.error.NilItem ' child doesn't exist
		  
		  if Children.Ubound < 0 then
		    return FGSourceList.error.ItemHasNoChildren ' this row has no children (therefore we aren't going to find the child!)
		  else
		    
		    for index as Integer = 0 to Children.Ubound
		      dim testItem as FGSourceListItem = Children(index)
		      if testItem = child then ' we have found the child - remove it
		        Children.Remove(index)
		        return FGSourceList.error.None
		      else ' check this child's children
		        error = testItem.RemoveChild(child)
		      end if
		      
		    next
		    
		  end if
		  
		  // Child not found
		  return FGSourceList.error.ChildNotFound
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TotalBadgeCount() As Integer
		  // This method returns the total badge count for this item and all of it's children
		  
		  dim result as integer
		  dim child as FGSourceListItem
		  
		  result = me.BadgeCount ' don't forget to include our badge count
		  
		  for each child in Children ' recursively count the badge totals in each of our children
		    result = result + child.TotalBadgeCount
		  next
		  
		  return result
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		#tag Note
			Used to determine whether the user can drag reorder this item's children within their hierarchy.
			Only functions if this item's section's AllowChildDragReordering property also = true AND FGSourceList.EnableDragReorder = true.
		#tag EndNote
		AllowChildDragReordering As Boolean = True
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mBadgeColor = &c000000 then
			    
			    return kDefaultBadgeColour
			    
			  else
			    
			    return mBadgeColor
			    
			  end if
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBadgeColor = value
			End Set
		#tag EndSetter
		BadgeColor As Color
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		BadgeCount As Integer = 0
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			Returns the width (in pixels) of this item's badge.
		#tag EndNote
		#tag Getter
			Get
			  // Create a temporary picture object so we can use it's Graphics object
			  dim p as Picture
			  p = new Picture(1, 1, Screen(0).Depth)
			  
			  if TotalBadgeCount = 0 then return 0
			  
			  if Expanded and badgeCount = 0 then
			    
			    return 0
			    
			  elseif Expanded and badgeCount > 0 then
			    
			    return p.Graphics.StringWidth( str(badgeCount) ) + 15
			    
			  else
			    
			    return p.Graphics.StringWidth( str(TotalBadgeCount) ) + 15
			    
			  end if
			  
			  return 0
			  
			End Get
		#tag EndGetter
		BadgeWidth As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		#tag Note
			If true then this item has a custom button that will be shown to the right of the name. ButtonImage != nil.
			
			If an image is provided for the optional ButtonHoverImage property then this image will be drawn when the mouse is hovering over the button.
			
			Images MUST be 16 pixels in height (within reason, they can be any width).
			
			If ButtonActive = true then clicking on this custom button will fire the ClickedButton() event by the source list. If false then clicking
			the button has no effect. This might be useful if you just want to display an icon rather than an actual button
		#tag EndNote
		Button As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			If true and Button = true then clicking on the custom button will fire the ClickedButton() event by the source list.
			If false then clicking the custom button will have no effect (useful if you just want to display an icon)
		#tag EndNote
		ButtonActive As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			
			
			This is optional. If Button = true then this image is drawn when the mouse cursor is hovering over the button.
		#tag EndNote
		ButtonHoverImage As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			If Button = true then this != nil.
		#tag EndNote
		ButtonImage As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			.
		#tag EndNote
		Children(-1) As FGSourceListItem
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			If true then this item can be collapsed / hidden.
			When an item is collapsed, it’s name remains visible in the source list but all of it’s children are hidden from view. Defaults to false.
		#tag EndNote
		Collapsible As Boolean = false
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mEjectButton
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if TargetWin32 ' disallow eject buttons on Windows (this is because shitty Windows doesn't properly handle unicode).
			    
			    mEjectButton = false
			    return
			    
			  #endif
			  
			  mEjectButton = value
			End Set
		#tag EndSetter
		EjectButton As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mExpanded
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // This method sets whether this item is expanded in the source list or not.
			  
			  if collapsible = false then
			    
			    mExpanded = true ' if an item isn't collapsible then it should always be expanded
			    return
			    
			  end if
			  
			  mExpanded = value
			  
			End Set
		#tag EndSetter
		Expanded As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		FolderIcon As MacIcon
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if Image <> Nil then
			    Return Image
			  else
			    Return mIcon
			  end if
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mIcon = value
			End Set
		#tag EndSetter
		Icon As Picture
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Image As NSImage
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Level 0 = a section.
			Level 1 = child of a section.
			Level 2 = child of a level 1 item.
			Level 3 = child of a level 2 item. This is the deepest level possible.
		#tag EndNote
		Level As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			The colour of this item's badge. If none is specified, it will default to the "standard" apple badge colour.
		#tag EndNote
		Private mBadgeColor As Color
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			If true then this item has an eject button
		#tag EndNote
		Private mEjectButton As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			If true then this item is currently expanded in the source list.
		#tag EndNote
		Private mExpanded As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			This item's icon. This is mandatory for all items EXCEPT sections (which cannot have an icon)
		#tag EndNote
		Private mIcon As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			The text to display in the source list.
		#tag EndNote
		Name As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Simply returns this item's number of children
			  
			  dim i, count as integer = 0
			  
			  if Children.Ubound < 0 then
			    
			    return 0
			    
			  else
			    
			    for i = 0 to Children.Ubound
			      
			      count = count + 1 ' remember to include this child in the count
			      
			      count = count + Children(i).NumberOfChildren
			      
			    next i
			    
			  end if
			  
			  return count
			  
			End Get
		#tag EndGetter
		NumberOfChildren As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		#tag Note
			This item's parent. Unless this item is the source list's root, it must not be nil.
		#tag EndNote
		Parent As FGSourceListItem
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			If this item is a section head then this property = true.
		#tag EndNote
		Section As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			By default, items show the total badge count of themselves and their children when they are collapsed. If this is set to True then a badge
			will never be shown next to this item.
			Badges can only be shown if EjectButton = false.
		#tag EndNote
		ShowBadge As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			This is simply a variant property that can be used to store any form of arbitrary data for this item.
		#tag EndNote
		Tag As Variant
	#tag EndProperty


	#tag Constant, Name = kDefaultBadgeColour, Type = Color, Dynamic = False, Default = \"&c99AAC5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Version, Type = String, Dynamic = False, Default = \"1.0.6", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowChildDragReordering"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BadgeColor"
			Visible=false
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BadgeCount"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BadgeWidth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Button"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ButtonActive"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ButtonHoverImage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ButtonImage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Collapsible"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="EjectButton"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Expanded"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Level"
			Visible=false
			Group="Behavior"
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
			Name="NumberOfChildren"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Section"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowBadge"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
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
		#tag ViewProperty
			Name="Icon"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
