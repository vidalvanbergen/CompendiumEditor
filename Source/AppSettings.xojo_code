#tag Module
Protected Module AppSettings
	#tag Method, Flags = &h1
		Protected Sub AppInit()
		  ExperimentalMode = Keyboard.AsyncShiftKey
		  #if TargetMacOS then
		    InitializeKaju
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CheckForUpdates(AllowInteraction as Boolean = True)
		  
		  Dim Interaction As Integer
		  If AllowInteraction Then
		    Interaction = Kaju.UpdateChecker.kAllowUpdateWindow + Kaju.UpdateChecker.kAllowErrorDialog '= 136
		  Else
		    Interaction = 0
		  End If
		  
		  UpdateChecker.ExecuteAsync
		  
		  Dim status As String
		  
		  Select Case UpdateChecker.Result
		  Case Kaju.UpdateChecker.ResultType.UpdateAlreadyInProgress
		    status = "Update already in progress"
		    MessageBox status
		    
		  Case Kaju.UpdateChecker.ResultType.UnsupportedOS
		    status = "This OS is not supported (missing required tools)"
		    MessageBox status
		    
		  Case Kaju.UpdateChecker.ResultType.NoWritePermission
		    status = "Aborted (no write permission)"
		    MessageBox status
		    
		  Case Kaju.UpdateChecker.ResultType.Error
		    status = "Error, user chose to try later"
		    
		  Case Kaju.UpdateChecker.ResultType.IgnoredUpdateAvailable
		    status = "Updates available, but ignored"
		    
		  Case Kaju.UpdateChecker.ResultType.NoUpdateAvailable
		    status = "No updates available"
		    
		  Case Kaju.UpdateChecker.ResultType.UpdateAvailable
		    status = "Updates available"
		    
		  Case Kaju.UpdateChecker.ResultType.RequiredUpdateAvailable
		    status = "Required update available"
		    
		  Else
		    status = "UNKNOWN RESULT"
		    
		  End
		  
		  
		  #if DebugBuild then
		    'MessageBox status
		  #Endif
		  
		  Log "Kaju.CheckForUpdates :: " + status
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HandleError(error as RuntimeException, Location as string = "", otherErr as String = "")
		  Log Location, error, 3
		  
		  dim oReporter as new Vi_clsBugReporter
		  oReporter.Report(error, location, otherErr)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub InitializeKaju()
		  if UpdateChecker = Nil and SupportFolder <> Nil then
		    UpdateChecker = new Kaju.UpdateChecker( SupportFolder )
		  else
		    #if DebugBuild then
		      MessageBox  "Could not initiate updatechecker"
		    #endif
		    
		    Return
		  end if
		  
		  UpdateChecker.ServerPublicRSAKey = kPublicRSAKey
		  UpdateChecker.UpdateURL = kUpdateFileURL
		  
		  #if TargetMacOS then
		    UpdateChecker.DefaultImage = App.ApplicationBundle.Icon(128)
		  #else
		    UpdateChecker.DefaultImage = AppIcon
		  #endif
		  UpdateChecker.DefaultUseTransparency = true
		  
		  dim Interaction as Integer = Kaju.UpdateChecker.kAllowUpdateWindow + Kaju.UpdateChecker.kAllowErrorDialog '= 136
		  
		  UpdateChecker.HonorIgnored = True
		  UpdateChecker.AllowedInteraction = Interaction
		  UpdateChecker.AllowedStage = 0
		  UpdateChecker.AllowRedirection = True
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected ExperimentalMode As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Static gPrefs as TTsSmartPreferences
			  if gPrefs = Nil then
			    gPrefs = New TTsSmartPreferences( kAppName )
			  end if
			  Return gPrefs
			End Get
		#tag EndGetter
		Protected Prefs As TTsSmartPreferences
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Static gPrettyVersion as String
			  
			  if gPrettyVersion = "" then
			    
			    gPrettyVersion = App.MajorVersion.ToText + "." + App.MinorVersion.ToText
			    
			    if App.BugVersion > 0 then
			      gPrettyVersion = gPrettyVersion + "." + App.BugVersion.ToText
			    end if
			    
			    select case App.StageCode
			    case App.Beta
			      gPrettyVersion = gPrettyVersion + "b" + App.NonReleaseVersion.ToText
			    case App.Alpha
			      gPrettyVersion = gPrettyVersion + "a" + App.NonReleaseVersion.ToText
			    case App.Development
			      gPrettyVersion = gPrettyVersion + "dev" + App.NonReleaseVersion.ToText
			    else
			      '
			    end select
			    
			  end if
			  
			  // v0.0(.0)(α/β/dev)
			  Return gPrettyVersion
			End Get
		#tag EndGetter
		Protected PrettyVersion As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static gSupportFolder as FolderItem
			  if gSupportFolder = Nil then
			    #if DebugBuild and TargetMacOS then
			      gSupportFolder = App.ApplicationBundle.Parent.Child("debug-Application Support").Child( AppSettings.kAppName )
			    #else
			      gSupportFolder = SpecialFolder.ApplicationData.Child( AppSettings.kAppName )
			    #endif
			    
			    if NOT gSupportFolder.Exists then
			      gSupportFolder.CreateAsFolder
			    end if
			  end if
			  
			  Return gSupportFolder
			End Get
		#tag EndGetter
		SupportFolder As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected UpdateChecker As Kaju.UpdateChecker
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected UpdateInitiater As Kaju.UpdateInitiater
	#tag EndProperty


	#tag Constant, Name = kAppCopyright, Type = String, Dynamic = False, Default = \"\xC2\xA9 2025 Vianna van Bergen.", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kAppIdentifier, Type = String, Dynamic = False, Default = \"com.viannaeuphoria.compendiumeditor", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kAppName, Type = String, Dynamic = False, Default = \"Compendium Editor", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCompanyName, Type = String, Dynamic = False, Default = \"Vitalis Software", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCopyright, Type = String, Dynamic = False, Default = \"\xC2\xA9 2025 Vianna van Bergen.\nAll Rights Reserved", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kDonationURL, Type = String, Dynamic = False, Default = \"https://www.paypal.com/cgi-bin/webscr\?cmd\x3D_donations&business\x3Dvidal%2evanbergen@gmail.com&lc\x3DNL&item_name\x3DCompendium%20Editor&currency_code\x3DEUR&bn\x3DPP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kEmailAddress, Type = String, Dynamic = False, Default = \"vidal.vanbergen@gmail.com", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kPublicRSAKey, Type = String, Dynamic = False, Default = \"30820120300D06092A864886F70D01010105000382010D0030820108028201010097A7ED58EBAA83BCBC631B719178BE83E6E84BD4BBD1E21A9205A0ED59ECF1C2D52F8619DA192CC1A415FB180F1AF440C8BEF2A33B3966D05B0D40B6EBE86DE6400B1171CBDE3FED99A5FEF3F98CFC31DA074B204BA63C28CA0FE193D05153ECDF625ADFE550B5BD49A4ECD80642AE0437B6A67B671D8A8E4B0BBF7259CAA35226D2E98776F7835A16E0612329AE876F4FA19B96C71A3F210AE9C5079819C41D1C92FD2D2461E83A57089AB8CC7DF5F93E7CD2025B8C7A7034032FE2156B2E34032453651A68F27D37A707D2F81AD35F206EAFE7503D7DC8A4B402F68F00D9458AF331A4D2F6E94B0AC006AF60B3571744BA7BC5B11366D4D0EE69FB6E25A4F1020111", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUpdateFileURL, Type = String, Dynamic = False, Default = \"https://vidalvanbergen.github.io/CompendiumEditor/Updates/appcast.json", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kWebsiteURL, Type = String, Dynamic = False, Default = \"https://vitalis.heliohost.org/", Scope = Protected
	#tag EndConstant


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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
			InitialValue="0"
			Type="Integer"
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
	#tag EndViewBehavior
End Module
#tag EndModule
