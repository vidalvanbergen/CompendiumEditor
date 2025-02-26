#tag Window
Begin Window wndBugReporter
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   300
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   3
   Resizeable      =   True
   Title           =   "#kReportThisError"
   Visible         =   True
   Width           =   480
   Begin CanvasLogo cvsLogo
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   64
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Visible         =   True
      Width           =   64
   End
   Begin TextArea txtUserDescription
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   123
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   125
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   0
      ValidationMask  =   ""
      Visible         =   True
      Width           =   440
   End
   Begin PushButton btnSendMail
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kEmailBugReport"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   320
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   260
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin PushButton btnCancel
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
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
      Left            =   228
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   260
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnSaveText
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kSaveTextFile"
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
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   260
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   132
   End
   Begin Label lblMessage
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   64
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   96
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "$ProductName$ has encountered a serious error. Please provide us with a detailed description of how and where this problem occurred, so that it can be fixed in a future release."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   364
   End
   Begin Label lblNote
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kNote"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   90
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   440
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AskToSend(sErrorType as String)
		  AskToSend(sErrorType, "", "")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AskToSend(sErrorType as String, sLocation as String, sStack as String)
		  AskToSend(sErrorType, sLocation, "", sStack, Nil)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AskToSend(sErrorType as String, sLocation as String, sOtherErr as String, sStack as String, err as RuntimeException)
		  // Shows the user a dialog allowing them to (optionally) enter a description of what was
		  // happening when the RuntimeException error occurred, and to decide whether to send the e-mail.
		  dim Subject as string = "[Bug Report] " + AppSettings.kAppName + " " + AppSettings.PrettyVersion
		  
		  
		  lblMessage.Text = lblMessage.Text.ReplaceAll("$ProductName$", AppSettings.kAppName)
		  
		  ShowModal
		  
		  dim Now as new DatePro
		  dim arsBody() as String
		  dim systemInfo() as String = GetSystemInformation
		  
		  if bSaveToFile then
		    arsBody.Append "Please email this file to " + AppSettings.kEmailAddress + ". Thanks!"
		    arsBody.Append ""
		  end if
		  arsBody.Append sErrorType
		  arsBody.Append "DateTime: " + now.SQLDateTime
		  arsBody.Append "Location: " + sLocation
		  if err <> Nil then
		    if err.Message <> "" then arsBody.Append "Message: " + err.Message
		    if err.Reason <> "" then arsBody.Append "Reason: " + err.Reason
		  end if
		  arsBody.Append ""
		  
		  if systemInfo <> Nil and systemInfo.Ubound > -1 then
		    arsBody.Append "_____ System Information _____"
		    arsBody.Append ""
		    for each infoLine as String in systemInfo
		      arsBody.Append infoLine
		    next
		    arsBody.Append ""
		  end if
		  
		  arsBody.Append "_____ User Description _____"
		  arsBody.Append ""
		  arsBody.Append txtUserDescription.Text
		  arsBody.Append ""
		  
		  arsBody.Append "_____ Stack _____"
		  arsBody.Append ""
		  arsBody.Append sStack
		  arsBody.Append ""
		  
		  if Helpers.LogMessages <> Nil and Helpers.LogMessages.Ubound > -1 then
		    arsBody.Append ""
		    arsBody.Append "_____ Log Messages _____"
		    arsBody.Append ""
		    for each LogMessage as string in Helpers.LogMessages
		      arsBody.Append LogMessage
		    next
		  end if
		  
		  if Trim(sOtherErr) <> "" then
		    arsBody.Append ""
		    arsBody.Append "_____ Other Messages _____"
		    arsBody.Append ""
		    arsBody.Append sOtherErr
		  end if
		  
		  dim sBody as String = Join(arsBody, EndOfLine)
		  
		  if bOkayToSend then
		    ShowURL "mailto:" + EncodeURLComponent(AppSettings.kEmailAddress) + "?subject=" + EncodeURLComponent(Subject) + "&body=" + EncodeURLComponent(sBody)
		  elseif bSaveToFile then
		    
		    dim ft as new FileType
		    ft.Name = "Log File"
		    ft.Extensions = ".txt"
		    
		    dim d as new Date
		    
		    dim sDefaultName as string = AppSettings.kAppName + " Error Report " + d.SQLDateTime.ReplaceAll(":", "-")
		    dim f as FolderItem = GetSaveFolderItem(ft, sDefaultName + ".txt")
		    if f = Nil then
		      // User cancelled
		      Return
		    end if
		    
		    Try
		      Dim tos as TextOutputStream = TextOutputStream.Create(f)
		      tos.Write sBody
		      tos.Close
		    Catch
		      modAlerts.MessageBox "Error", "Error saving Error report." + EndOfLine + "Please make an error report of this error."
		    End Try
		    
		  end if
		  
		  self.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSystemInformation() As String()
		  dim sInfo() as String
		  dim OS as String
		  dim result as Integer
		  
		  #if TargetMacOS then
		    sInfo.Append "macOS " + Helpers.macOSName
		    
		    Declare Function NSClassFromString Lib "AppKit" ( className As CFStringRef ) As Ptr
		    Declare Function processInfo Lib "AppKit" selector "processInfo" ( classRef As Ptr ) As Ptr
		    Dim myProcess As Ptr = processInfo( NSClassFromString( "NSProcessInfo" ) )
		    
		    Declare Function operatingSystemVersionString Lib "AppKit" selector "operatingSystemVersionString" ( NSProcessInfo As Ptr ) As CFStringRef
		    sInfo.Append "Version: " + Replace( operatingSystemVersionString( myProcess ), "Version ", "" )
		    
		  #elseif TargetWindows then
		    sInfo.Append Helpers.OSVersion
		    'sInfo.Append "Windows"
		    '
		    ''https://docs.microsoft.com/en-us/windows-hardware/drivers/ddi/content/wdm/nf-wdm-rtlgetversion
		    ''See the bottom of the following for a table of version numbers
		    ''https://docs.microsoft.com/en-gb/windows-hardware/drivers/ddi/content/wdm/ns-wdm-_osversioninfoexw
		    'Declare Function RtlGetVersion Lib "ntdll.dll" (ByRef lpVersionInformation As OSVERSIONINFOEXW) As Int32
		    '
		    'Dim ok As Int32
		    'Dim osVersionInfo As OSVERSIONINFOEXW
		    '
		    'osVersionInfo.dwOSVersionInfoSize = OSVERSIONINFOEXW.Size
		    'ok = RtlGetVersion(osVersionInfo)
		    '
		    'If ok = 0 Then
		    'sInfo.Append "Version: " + Str(osVersionInfo.dwMajorVersion) + "." + Str(osVersionInfo.dwMinorVersion) + " (Build " + Str(osVersionInfo.dwBuildNumber) + ")"
		    'End
		    
		  #elseif TargetLinux then
		    sInfo.Append Helpers.OSVersion
		    'sInfo.Append "Linux"
		    
		  #else
		    // Other platform
		    Break
		    sInfo.Append Keywords.kNotAvailable
		  #endif
		  
		  if Target32Bit then
		    sInfo.Append "Kind: 32-bit."
		  elseif Target64Bit then
		    sInfo.Append "Kind: 64-bit."
		  end if
		  
		  Return sInfo
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		bOkayToSend As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		bSaveToFile As Boolean = False
	#tag EndProperty


	#tag Constant, Name = kEmailBugReport, Type = String, Dynamic = True, Default = \"E-mail Bug Report", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"E-mail Bug Report"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"E-mail Bugrapport"
	#tag EndConstant

	#tag Constant, Name = kMessage, Type = String, Dynamic = True, Default = \"$ProductName$ has encountered a serious error. Please provide us with a detailed description of how and where this problem occurred\x2C so that it can be fixed in a future release.", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"$ProductName$ has encountered a serious error. Please provide us with a detailed description of how and where this problem occurred\x2C so that it can be fixed in a future release."
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"$ProductName$ heeft een ernstige fout aangetroffen. Met een gedetailleerde beschrijving van hoe en waar dit probleem is opgetreden kan deze opgelost worden in een toekomstige versie."
	#tag EndConstant

	#tag Constant, Name = kNoDescription, Type = String, Dynamic = True, Default = \"No Description.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"No Description."
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Geen beschrijving."
	#tag EndConstant

	#tag Constant, Name = kNoDescriptionMessage, Type = String, Dynamic = True, Default = \"To help improve our products\x2C please hep us out by telling us what you were doing leading up to the error.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"To help improve our products\x2C please hep us out by telling us what you were doing leading up to the error."
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"U kunt ons helpen onze producten te verbeteren door ons te vertellen wat u deed in de aanloop naar de fout."
	#tag EndConstant

	#tag Constant, Name = kNote, Type = String, Dynamic = True, Default = \"What were you doing when the problem occurred\?\nPlease be as detailed as possible:", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"What were you doing when the problem occurred\?\nPlease be as detailed as possible:"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Wat deed u toen het probleem optrad\?\nWees zo gedetailleerd mogelijk:"
	#tag EndConstant

	#tag Constant, Name = kReportThisError, Type = String, Dynamic = True, Default = \"Report This Error", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSaveTextFile, Type = String, Dynamic = True, Default = \"Save Text File", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Save Text File"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Bewaar Tekst Bestand"
	#tag EndConstant


#tag EndWindowCode

#tag Events cvsLogo
	#tag Event
		Sub Paint(g as Graphics)
		  dim TheAppIcon as Picture
		  dim maxSize as Integer = min( me.Width, me.Height )
		  
		  #if TargetMacOS then
		    TheAppIcon = App.ApplicationBundle.Icon(Max(me.Width, me.Height))
		  #else
		    // Add an image to the project named 'AppIcon'.
		    TheAppIcon = AppIcon
		  #endif
		  
		  if TheAppIcon <> Nil then
		    g.ScaleImage( TheAppIcon, g.Width, g.Height, ( g.Width / 2 ) - ( MaxSize / 2 ), ( g.Height / 2 ) - ( MaxSize / 2 ) )
		  end if
		  g.DrawCautionIcon 0, 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSendMail
	#tag Event
		Sub Action()
		  dim res as Boolean
		  
		  if Trim(txtUserDescription.Text) = "" then
		    res = AlertExtensions.AlertOKCancelDialog( kNoDescription, _
		    kNoDescriptionMessage, _
		    Keywords.Dialog.Buttons.kSubmit, Keywords.Dialog.Buttons.kCancel, True )
		    
		    if NOT res then
		      Return
		    end if
		  end if
		  
		  bOkayToSend = True
		  bSaveToFile = False
		  self.Hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  bOkayToSend = False
		  bSaveToFile = False
		  self.Hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSaveText
	#tag Event
		Sub Action()
		  dim res as Boolean
		  
		  if Trim(txtUserDescription.Text) = "" then
		    res = AlertExtensions.AlertOKCancelDialog( kNoDescription, _
		    kNoDescriptionMessage, _
		    Keywords.Dialog.Buttons.kSave, Keywords.Dialog.Buttons.kCancel, True )
		    
		    if NOT res then
		      Return
		    end if
		  end if
		  
		  bOkayToSend = False
		  bSaveToFile = True
		  self.Hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
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
		Name="Visible"
		Visible=true
		Group="Behavior"
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
	#tag ViewProperty
		Name="bOkayToSend"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="bSaveToFile"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
