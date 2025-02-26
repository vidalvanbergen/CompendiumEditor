#tag Window
Begin ContainerControlPro EmbedControl
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
   Height          =   300
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   300
   Begin Canvas ControlEmbeddor
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   300
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   286
   End
   Begin ScrollBar ControlScroller
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowLiveScrolling=   True
      Enabled         =   True
      Height          =   300
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   285
      LineStep        =   1
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   0
      MinimumValue    =   0
      PageStep        =   20
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   15
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Resized()
		  AdjustScroller
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  AdjustScroller
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AdjustScroller()
		  if ControlScroller <> Nil and EmbeddedControl <> Nil and ControlEmbeddor <> NIl then
		    ControlScroller.Maximum = EmbeddedControl.Height - ControlEmbeddor.Height
		    ControlScroller.LineStep = ControlEmbeddor.Height
		    ControlScroller.PageStep = ControlEmbeddor.Height
		    
		    if ControlScroller.Maximum <= 0 then
		      
		      ControlScroller.Value = 0
		      EmbeddedControl.Top = 0
		      'ControlEmbeddor.Scroll( 0, 0 )
		      
		      ControlScroller.Visible = False
		      ControlEmbeddor.Width = ControlEmbeddor.Parent.Width
		    else
		      ControlScroller.Visible = True
		      ControlEmbeddor.Width = ControlEmbeddor.Parent.Width - ControlScroller.Width
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Embed(TheControl as ContainerControl)
		  if TheControl <> Nil then
		    EmbeddedControl = TheControl
		    
		    EmbeddedControl.EmbedWithin(ControlEmbeddor, 0, 0, ControlEmbeddor.Width, Max(ControlEmbeddor.Height, EmbeddedControl.Height))
		  else
		    // TheControl = Nil
		    Break
		  end if
		  
		  AdjustScroller
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrollToTop()
		  AdjustScroller
		  ControlScroller.Value = 0
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		EmbeddedControl As ContainerControl
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pYScrollLast As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events ControlEmbeddor
	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  #Pragma Unused x
		  #Pragma Unused y
		  #Pragma Unused deltaX
		  
		  if ControlScroller.Visible then
		    ControlScroller.Value = ControlScroller.Value + (deltaY*6) // *6 to hurry it up a bit
		  end if
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ControlScroller
	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  #Pragma Unused x
		  #Pragma Unused y
		  #Pragma Unused deltaX
		  
		  if me.Visible then
		    ControlScroller.Value = ControlScroller.Value + (deltaY*6) // *6 to hurry it up a bit
		  end if
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub ValueChanged()
		  if me.Visible then
		    ControlEmbeddor.Scroll( 0, pYScrollLast - me.Value, 0, 0, ControlEmbeddor.Width, ControlEmbeddor.Height, True )
		    pYScrollLast = me.Value
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
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
		Group="Background"
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
