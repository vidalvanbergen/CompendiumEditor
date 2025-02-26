#tag Window
Begin ContainerControl ccCancelOK
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
   Height          =   54
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
   Width           =   252
   Begin PushButton btnRight
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#Keywords.Dialog.Buttons.kOK"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   132
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin PushButton btnLeft
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#Keywords.Dialog.Buttons.kCancel"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  '
		  #Pragma Unused x
		  #Pragma Unused y
		  #Pragma Unused base
		End Function
	#tag EndEvent

	#tag Event
		Sub ContentsChanged()
		  '
		End Sub
	#tag EndEvent

	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  '
		  #Pragma Unused hitItem
		End Function
	#tag EndEvent

	#tag Event
		Function DragEnter(obj As DragItem, action As Integer) As Boolean
		  '
		  #Pragma Unused obj
		  #Pragma Unused action
		End Function
	#tag EndEvent

	#tag Event
		Sub DragExit(obj As DragItem, action As Integer)
		  '
		  #Pragma Unused obj
		  #Pragma Unused action
		End Sub
	#tag EndEvent

	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  '
		  #Pragma Unused x
		  #Pragma Unused y
		  #Pragma Unused obj
		  #Pragma Unused action
		End Function
	#tag EndEvent

	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  '
		  #Pragma Unused obj
		  #Pragma Unused action
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  '
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  '
		  #Pragma Unused X
		  #Pragma Unused Y
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  '
		  #Pragma Unused X
		  #Pragma Unused Y
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  '
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  '
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  '
		  #Pragma Unused X
		  #Pragma Unused Y
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  '
		  #Pragma Unused X
		  #Pragma Unused Y
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, DeltaX as Integer, DeltaY as Integer) As Boolean
		  #Pragma Unused X
		  #Pragma Unused Y
		  #Pragma Unused DeltaX
		  #Pragma Unused DeltaY
		  '
		End Function
	#tag EndEvent

	#tag Event
		Sub Moved()
		  '
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  #if TargetMacOS then
		    btnLeft.Caption = Keywords.Dialog.Buttons.kCancel
		    btnLeft.Cancel = True
		    
		    btnRight.Caption = Keywords.Dialog.Buttons.kOK
		    btnRight.Default = True
		  #else
		    btnRight.Caption = Keywords.Dialog.Buttons.kCancel
		    btnRight.Cancel = True
		    
		    btnLeft.Caption = Keywords.Dialog.Buttons.kOK
		    btnLeft.Default = True
		  #endif
		  
		  RaiseEvent Open
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  '
		  #Pragma Unused g
		  #Pragma Unused areas
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CaptionCancel(Text as String)
		  
		  #if NOT TargetMacOS then
		    btnRight.Caption = Text
		  #else
		    btnLeft.Caption = Text
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CaptionOK(Text as String)
		  
		  #if TargetMacOS then
		    btnRight.Caption = Text
		  #else
		    btnLeft.Caption = Text
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OKButtonEnabled(IsEnabled as Boolean)
		  
		  #if TargetMacOS then
		    btnRight.Enabled = IsEnabled
		  #else
		    btnLeft.Enabled = IsEnabled
		  #endif
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ActionCancel()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ActionOK()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


#tag EndWindowCode

#tag Events btnRight
	#tag Event
		Sub Action()
		  
		  #if TargetMacOS then
		    RaiseEvent ActionOK
		  #else
		    RaiseEvent ActionCancel
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLeft
	#tag Event
		Sub Action()
		  
		  #if NOT TargetMacOS then
		    RaiseEvent ActionOK
		  #else
		    RaiseEvent ActionCancel
		  #endif
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
#tag EndViewBehavior
