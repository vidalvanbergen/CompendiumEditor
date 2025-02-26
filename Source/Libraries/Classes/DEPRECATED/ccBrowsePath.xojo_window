#tag Window
Begin ContainerControl ccBrowsePath
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   True
   HasBackgroundColor=   False
   Height          =   22
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   300
   Begin Label lblName
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "..."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   208
   End
   Begin PushButton btnBrowse
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kBrowse"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   220
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  #Pragma Unused x
		  #Pragma Unused y
		  
		  base.Append New MenuItem( FileMenuItemShowInFinder.LocalizedText, "ShowInFinder" )
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  if hitItem <> Nil then
		    
		    Select case hitItem.Text
		      
		      // Reveal in finder
		    case FileMenuItemShowInFinder.LocalizedText
		      if pFolderItem <> Nil and pFolderItem.Exists then
		        pFolderItem.RevealInFinder
		      end if
		      
		      //
		      
		    End Select
		    
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  dim lblWidth as Integer = self.Width - btnBrowse.Width - 10
		  
		  #if TargetMacOS then
		    lblName.Width = lblWidth - 22
		    lblName.Left = 22
		  #else
		    lblName.Width = lblWidth
		    lblName.Left = 0
		  #endif
		  
		  RaiseEvent Open
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma Unused areas
		  
		  #if TargetMacOS then
		    if pFolderItem <> Nil and pFolderItem.Exists then
		      
		      dim folderIcon as Picture = pFolderItem.Icon
		      if folderIcon <> Nil then
		        g.DrawPicture folderIcon, 2, 2, 16, 16, 0, 0, folderIcon.Width, folderIcon.Height
		      end if
		      
		    end if
		  #endif
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SetDialogSettings(Title as String, Prompt as String = "")
		  pDialogTitle = Title
		  pDialogPrompt = Prompt
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetFolderItem(TheFolderItem as FolderItem)
		  if TheFolderItem <> Nil and TheFolderItem.Exists then
		    pFolderItem = TheFolderItem
		    
		    #if TargetMacOS then
		      pFolderIcon = pFolderItem.Icon( 16 )
		    #endif
		    
		    lblName.Text = TheFolderItem.Name
		    lblName.HelpTag = TheFolderItem.NativePath
		    self.Invalidate
		  end if
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event FolderChanged(TheFolderItem as FolderItem)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag Property, Flags = &h0
		pDialogPrompt As String
	#tag EndProperty

	#tag Property, Flags = &h0
		pDialogTitle As String
	#tag EndProperty

	#tag Property, Flags = &h0
		pFolderIcon As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		pFolderItem As FolderItem
	#tag EndProperty


	#tag Constant, Name = kBrowse, Type = String, Dynamic = True, Default = \"Browse", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Browse"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Zoek"
	#tag EndConstant


#tag EndWindowCode

#tag Events btnBrowse
	#tag Event
		Sub Action()
		  dim dlg as new SelectFolderDialog
		  dlg.ActionButtonCaption = Keywords.Dialog.Buttons.kOK
		  dlg.CancelButtonCaption = Keywords.Dialog.Buttons.kCancel
		  'dlg.InitialDirectory = SpecialFolder.Documents
		  
		  if pDialogTitle <> "" then
		    dlg.Title = pDialogTitle
		  end if
		  
		  if pDialogPrompt <> "" then
		    dlg.PromptText = pDialogPrompt
		  end if
		  
		  dim f as FolderItem = dlg.ShowModal
		  if f <> Nil and f.Exists then
		    SetFolderItem( f )
		    FolderChanged( f )
		  else
		    'MessageBox "Couldn't select folder item."
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
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
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
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
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
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
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
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
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="300"
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
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
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
		Name="pDialogTitle"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="pDialogPrompt"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="pFolderIcon"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
