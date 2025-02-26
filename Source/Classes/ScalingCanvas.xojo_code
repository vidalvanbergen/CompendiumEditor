#tag Class
Protected Class ScalingCanvas
Inherits Canvas
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  base.Append new MenuItem( "Select Image" )
		  if me.ImageFile <> Nil and me.ImageFile.Exists then
		    base.Append new MenuItem( "Remove Image" )
		    base.Append new MenuItem( "-" )
		    #if TargetMacOS then
		      base.Append new MenuItem( "Reveal in Finder" )
		    #else
		      base.Append new MenuItem( "Reveal File" )
		    #endif
		  end if
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  if hitItem <> Nil then
		    
		    Select case hitItem.Text
		      
		    case "Reveal File in Finder"
		      if hitItem.Tag IsA FolderItem then
		        var f as FolderItem = hitItem.Tag
		        
		        f.RevealInFinder
		      end if
		      
		    case "Reveal File"
		      if hitItem.Tag IsA FolderItem then
		        var f as FolderItem = hitItem.Tag
		        
		        f.Parent.Launch
		      end if
		      
		      
		    case "Select Image"
		      SelectImageFile
		      
		    case "Remove Image"
		      RemoveImageFile
		      
		    End Select
		    
		    Return True
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Function DragEnter(obj As DragItem, action As Integer) As Boolean
		  #Pragma Unused action
		  
		  if AllowDrop then
		    tmpImage = Image
		    MouseCursor = System.Cursors.Copy
		    
		    if obj.PictureAvailable then
		      me.Image = obj.Picture
		    elseif obj.FolderItemAvailable then
		      me.Image = Picture.Open(obj.FolderItem)
		    end if
		    me.Invalidate
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub DragExit(obj As DragItem, action As Integer)
		  #Pragma Unused obj
		  #Pragma Unused action
		  
		  if AllowDrop then
		    me.Image = tmpImage
		    me.Invalidate
		    
		    MouseCursor = System.Cursors.StandardPointer
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  #Pragma Unused action
		  
		  if AllowDrop then
		    
		    if obj.PictureAvailable and BackdropChanged(obj.Picture) then
		      me.Image = obj.Picture
		      
		    elseif obj.FolderItemAvailable and BackdropChanged(obj.FolderItem) then
		      me.Image = Picture.Open(obj.FolderItem)
		      'me.ImageFile = obj.FolderItem
		    else
		      me.Image = tmpImage
		    end if
		    
		    MouseCursor = System.Cursors.StandardPointer
		    me.tmpImage = Nil
		    me.Invalidate
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  'if AllowDrop then
		  self.AcceptPictureDrop
		  self.AcceptFileDrop(FileTypeImages.All)
		  'end if
		  
		  RaiseEvent Open()
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  if tmpImage <> Nil or Image <> Nil then
		    var currentimage as Picture = tmpImage
		    if Image <> Nil then
		      currentimage = Image
		    end if
		    dim factor as Double = Min( Min( g.Width / currentimage.Width, g.Height / currentimage.Height ), 1.0)
		    dim newWidth as Double = currentimage.Width * factor
		    dim newHeight as Double = currentimage.Height * factor
		    dim top as Double = 0
		    
		    if NOT AlignedWithTop then
		      top = (g.Height/2) - (newHeight/2)
		    end if
		    
		    g.DrawPicture currentimage, (g.Width/2) - (newWidth/2), top, newWidth, newHeight,  0, 0, currentimage.Width, currentimage.Height
		    
		    if DrawBorder then
		      g.ForeColor = BorderColor 'HSL( 0, 0, 0, 20 )
		      g.DrawRect 0, 0, g.Width, g.Height
		      'g.DrawRect (g.Width/2) - (newWidth/2), top, newWidth, newHeight
		    end if
		    
		  elseif AllowDrop then
		    g.ForeColor = BorderColor
		    g.DrawRect 0, 0, g.Width, g.Height
		    
		    dim dropobjecticon as Picture = template_dropobject
		    dropobjecticon = template_dropobject.IconTemplateSetColor(BorderColor)
		    
		    if dropobjecticon.Width > 32 then
		      g.DrawPicture dropobjecticon, (g.Width/2) - (32/2), (g.Height/2) - (32/2), 32, 32,  0, 0, dropobjecticon.Width, dropobjecticon.Height
		    else
		      g.DrawPicture dropobjecticon, (g.Width/2) - (32/2), (g.Height/2) - (32/2)
		    end if
		    
		    'g.DrawPicture template_download, (g.Width/2) - (16/2), (g.Height/2) - (16/2), 16, 16,  0, 0, template_download.Width, template_download.Height
		  end if
		  
		  RaiseEvent Paint()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddImageFile(f as FolderItem)
		  if f <> Nil and f.Exists and BackdropChanged(f) then
		    'me.Image = Picture.Open(f)
		    'me.ImageFile = f
		    me.Invalidate
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveImageFile()
		  
		  if ImageFile <> Nil and ImageFile.Exists then
		    
		    Var d As New MessageDialog                   ' declare the MessageDialog object
		    Var b As MessageDialogButton                 ' for handling the result
		    d.IconType = MessageDialog.IconTypes.Caution ' display warning icon
		    d.ActionButton.Caption = "Delete"
		    d.CancelButton.Visible = True                ' show the Cancel button
		    'd.AlternateActionButton.Visible = True       ' show the "Don't Save" button
		    'd.AlternateActionButton.Caption = "Don't Save"
		    d.Message = "Are you sure you want to delete the existing image?"
		    'd.Explanation = "If you don't save, your changes will be lost."
		    
		    b = d.ShowModal                              ' display the dialog
		    Select Case b                                ' determine which button was pressed.
		    Case d.ActionButton
		      ' user pressed Delete
		      #if TargetMacOS then
		        ImageFile.MoveToTrash
		      #else
		        ImageFile.Delete
		      #endif
		      
		      Image = Nil
		      ImageFile = Nil
		      
		      me.Invalidate
		      
		      RaiseEvent ImageRemoved()
		      
		      'Case d.AlternateActionButton
		      ' user pressed Don't Save
		    Case d.CancelButton
		      ' user pressed Cancel
		      'Return False
		    End Select
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectImageFile()
		  Var jpegType As New FileType
		  jpegType.Name = "image/jpeg"
		  jpegType.Extensions = "jpg;jpeg"
		  
		  Var pngType As New FileType
		  pngType.Name = "image/png"
		  pngType.Extensions = "png"
		  
		  Var f As FolderItem
		  
		  ' The actual FileTypes are converted to strings automatically for use
		  ' with OpenFileDialog
		  f = FolderItem.ShowOpenFileDialog(jpegType + pngType)
		  
		  if f <> Nil then
		    AddImageFile( f )
		  end if
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event BackdropChanged(Obj as Variant) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ImageRemoved()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Paint()
	#tag EndHook


	#tag Property, Flags = &h0
		AlignedWithTop As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		AllowDrop As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		BorderColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		DrawBorder As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Image As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		ImageFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		tmpImage As Picture
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
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="AllowFocus"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabs"
			Visible=true
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
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DrawBorder"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowDrop"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="tmpImage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlignedWithTop"
			Visible=true
			Group="Behavior"
			InitialValue="False"
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
			Name="InitialParent"
			Visible=false
			Group=""
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
