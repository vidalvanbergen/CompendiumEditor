#tag Class
Protected Class App
Inherits Application
	#tag Event
		Function CancelClose() As Boolean
		  // You've determined that you need to cancel the
		  // close, so...
		  'if appQuitting then // This "if" is not strictly necessary
		  Kaju.CancelUpdate
		  'end if
		  'return true
		End Function
	#tag EndEvent

	#tag Event
		Sub Close()
		  Prefs.Sync
		  AppSettings.UpdateInitiater = Nil
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  HelpDebug.Visible = DebugBuild or Keyboard.AsyncAltKey
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  AppSettings.AppInit
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  dim oReporter as new Vi_clsBugReporter
		  oReporter.Report(error)
		  
		  Return True
		End Function
	#tag EndEvent


	#tag MenuHandler
		Function HelpOnlineGuide() As Boolean Handles HelpOnlineGuide.Action
		  ShowURL "https://github.com/vidalvanbergen/CompendiumEditor/blob/main/GUIDE.md"
		  Return True
		  
		End Function
	#tag EndMenuHandler


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
