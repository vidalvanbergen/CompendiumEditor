#tag Window
Begin Window DebugLogWND
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   3
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   442
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Debug Log"
   Visible         =   True
   Width           =   305
   Begin CheckBox AllowReportCB
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Allow report"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   2
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Allow debug reports when checked"
      Top             =   2
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   93
   End
   Begin CheckBox ImmediateReportCB
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Immediate report"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   99
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Force immediate refreshing when check (very time consuming). If unchecked, debug reports will be displayed only when the window refreshes."
      Top             =   2
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   116
   End
   Begin TextArea LogTA
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFAFAFA00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   401
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   1
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   21
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   0
      ValidationMask  =   ""
      Visible         =   True
      Width           =   303
   End
   Begin Canvas Canvas1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   12
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   6
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Number of errors reported"
      Top             =   426
      Transparent     =   True
      Visible         =   True
      Width           =   12
   End
   Begin Canvas Canvas2
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   12
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   75
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Number of warnings reported"
      Top             =   426
      Transparent     =   True
      Visible         =   True
      Width           =   12
   End
   Begin Canvas Canvas3
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   12
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   148
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Number of simple reports reported"
      Top             =   426
      Transparent     =   True
      Visible         =   True
      Width           =   12
   End
   Begin Label ErrorCountLBL
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   22
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Number of errors reported"
      Top             =   425
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   41
   End
   Begin Label WarningCountLBL
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   92
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Number of warnings reported"
      Top             =   425
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   41
   End
   Begin Label ReportCountLBL
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   165
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Number of simple reports reported"
      Top             =   425
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   41
   End
   Begin Label Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   218
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "F18"
      TextAlignment   =   0
      TextColor       =   &c66666600
      Tooltip         =   "Momentarily stops immediate report"
      Top             =   426
      Transparent     =   False
      Underline       =   False
      Visible         =   False
      Width           =   26
   End
   Begin Label Label2
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   247
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "F19"
      TextAlignment   =   0
      TextColor       =   &c66666600
      Tooltip         =   "Disable immediate report"
      Top             =   426
      Transparent     =   False
      Underline       =   False
      Visible         =   False
      Width           =   26
   End
   Begin PopupArrow PopupArrow1
      AllowAutoDeactivate=   False
      Enabled         =   True
      FacingDirection =   3
      Height          =   10
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   276
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Window Menu"
      Top             =   430
      Transparent     =   False
      Visible         =   False
      Width           =   10
   End
   Begin CheckBox SyslogCB
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Syslog"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   227
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Also log Errors and Warnings to the System log"
      Top             =   2
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   67
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  
		  #if DebugReportOptions.AllowDebugReport AND NOT (DebugReportOptions.AutomaticallyDisableInFinalBuilds AND NOT DebugBuild)
		    //Position window. Check for prefs file
		    
		    if DebugReportModule.Prefs<>nil then
		      dim wbounds( 3 ) as string
		      
		      wbounds( 0 ) = Str( self.Left )
		      wbounds( 1 ) = Str( self.Top )
		      wbounds( 2 ) = Str( self.Width )
		      wbounds( 3 ) = Str( self.Height )
		      
		      DebugReportModule.Prefs.Value( "WindowBounds" ) = Join( wbounds, " " )
		      
		      DebugReportModule.Prefs.WriteOnDisk
		    end if
		  #endif
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  #if DebugReportOptions.AllowDebugReport AND NOT (DebugReportOptions.AutomaticallyDisableInFinalBuilds AND NOT DebugBuild)
		    
		    //If the window is displayed via Show, the DebugReportModule has not been inited yet
		    DebugReportModule.init
		    
		    //Position window. Check for prefs file
		    if DebugReportModule.Prefs<>nil then
		      if DebugReportModule.prefs.HasKey( "WindowBounds" ) then
		        dim wbounds() as string
		        wbounds = Split( DebugReportModule.prefs.Value( "WindowBounds" ), " " )
		        
		        me.Left = Val( wbounds( 0 ))
		        me.Top = Val( wbounds( 1 ))
		        me.Width = Val( wbounds( 2 ))
		        me.Height = Val( wbounds( 3 ))
		        
		      else
		        me.Left = Screen( 0 ).AvailableWidth - me.Width
		      end if
		      
		    else //Use default
		      me.Left = Screen( 0 ).AvailableWidth - me.Width
		      
		    end if
		    
		    'DebugReportModule.debugNotificationObserver = new NotificationObserver( "" ) //Register for all notifications
		    'AddHandler   DebugReportModule.debugNotificationObserver.HandleNotification, AddressOf  DebugReportModule.HandleReceivedNotification
		    
		  #endif
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #pragma unused g
		  #if RBVersion >= 2012.02
		    #pragma unused areas
		  #endif
		  
		  WarningCountLBL.Text = Str( DebugReportModule.WarningCnt )
		  ErrorCountLBL.Text = Str( DebugReportModule.ErrorCnt )
		  ReportCountLBL.Text = Str( DebugReportModule.ReportCnt )
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h21
		Private nsma As NSAttributedString
	#tag EndProperty


#tag EndWindowCode

#tag Events LogTA
	#tag Event
		Sub Open()
		  #if TargetMacOS
		    nsma = me.AttributedString
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas1
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.ForeColor = &c9C3120
		  g.FillOval   0, 0, 12, 12
		  
		  #if RBVersion >= 2012.02
		    #pragma unused areas
		  #endif
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas2
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.ForeColor = &c0000FF
		  g.FillOval   0, 0, 12, 12
		  
		  #if RBVersion >= 2012.02
		    #pragma unused areas
		  #endif
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas3
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.ForeColor = &c000000
		  g.FillOval   0, 0, 12, 12
		  
		  #if RBVersion >= 2012.02
		    #pragma unused areas
		  #endif
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupArrow1
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #pragma unused X
		  #pragma unused Y
		  
		  dim base as new MenuItem( "MENU" )
		  dim mi as MenuItem
		  
		  base.Append   new Menuitem( "Copy", "_COPY_" )
		  base.Append   new Menuitem( "Clear", "_CLEAR_" )
		  base.Append   new Menuitem( "-" )
		  'base.Append   new Menuitem( "Save log to Desktop", "_SAVE_" )  //Not implemented yet
		  'base.Append   new Menuitem( "-" )
		  base.Append   new MenuItem( "List objects in memory", "_OBJECTS_" )
		  
		  mi = base.PopUp
		  if mi is nil then return false // Added by Kem Tekinay. Prevents crash if the user doesn't select anything
		  
		  select case mi.Tag
		  case "_COPY_"
		    dim clip as new Clipboard
		    
		    clip.Text = LogTA.SelText
		    
		  case "_CLEAR_"
		    LogTA.Text = ""
		    LogTA.ScrollPosition = 0
		    
		  case "_SAVE_"  //Unimplemented yet
		    'beep
		    
		  case "_OBJECTS_"
		    dim imax as integer = Runtime.ObjectCount - 1
		    
		    DReportTitled   "Objects in memory"
		    
		    for i as integer=0 to imax
		      dim s as string = Runtime.ObjectClass( i )
		      
		      if s.Instr( "MenuItem" )=0 then
		        QReport   s + " (" + Str( Runtime.ObjectRefs( i )) + ")"
		      end if
		    next
		    
		  end select
		End Function
	#tag EndEvent
#tag EndEvents
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
		Name="Interfaces"
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
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
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
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
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
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
