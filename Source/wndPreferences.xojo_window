#tag Window
Begin WindowPro wndPreferences
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   3
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   True
   Height          =   614
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   593336822
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "#MenuItemPreferences.LocalizedText"
   Type            =   0
   Visible         =   True
   Width           =   600
   Begin PagePanel ppPrefs
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   614
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   2
      Panels          =   ""
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   600
      Begin Separator sepArray
         AllowAutoDeactivate=   True
         Enabled         =   True
         Height          =   4
         Index           =   0
         InitialParent   =   "ppPrefs"
         Left            =   268
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   583
         Transparent     =   False
         Visible         =   False
         Width           =   64
      End
      Begin Separator sepArray
         AllowAutoDeactivate=   True
         Enabled         =   True
         Height          =   4
         Index           =   1
         InitialParent   =   "ppPrefs"
         Left            =   268
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   312
         Transparent     =   False
         Visible         =   False
         Width           =   64
      End
      Begin PreferenceCheckbox chkAutomaticUpdates
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "#kCheckboxAutomaticUpdates"
         DataField       =   ""
         DataSource      =   ""
         DefaultsName    =   "KUCheckForUpdatesAtStartUp"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "ppPrefs"
         Italic          =   False
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   543
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   250
      End
      Begin GroupBox grpSourceMultiline
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Save multiple sources as:"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   106
         Index           =   -2147483648
         InitialParent   =   "ppPrefs"
         Italic          =   False
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   20
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
         Begin RadioButton rdoSourceMultiLine
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "Multiline"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   0
            InitialParent   =   "grpSourceMultiline"
            Italic          =   False
            Left            =   195
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   "Source:	Player's Handbook p. 128,\n		Dungeon Master's Manual p. 256"
            Top             =   56
            Transparent     =   False
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   210
         End
         Begin RadioButton rdoSourceMultiLine
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "Single Line"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   1
            InitialParent   =   "grpSourceMultiline"
            Italic          =   False
            Left            =   195
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   "Source:	Player's Handbook p. 128, Dungeon Master's Manual p. 256"
            Top             =   88
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   210
         End
      End
      Begin GroupBox grpIndentCharacters
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "XML Indent character:"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   141
         Index           =   -2147483648
         InitialParent   =   "ppPrefs"
         Italic          =   False
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   256
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
         Begin RadioButton rdoXMLIndentCharacter
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "4 Spaces"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   2
            InitialParent   =   "grpIndentCharacters"
            Italic          =   False
            Left            =   195
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   356
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   210
         End
         Begin RadioButton rdoXMLIndentCharacter
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "Tab"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   0
            InitialParent   =   "grpIndentCharacters"
            Italic          =   False
            Left            =   195
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   292
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   210
         End
         Begin RadioButton rdoXMLIndentCharacter
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "2 Spaces"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   1
            InitialParent   =   "grpIndentCharacters"
            Italic          =   False
            Left            =   195
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   324
            Transparent     =   False
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   210
         End
      End
      Begin GroupBox grpDescriptionMultiTextTags
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Description <text> tags:"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   106
         Index           =   -2147483648
         InitialParent   =   "ppPrefs"
         Italic          =   False
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   138
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
         Begin RadioButton rdoDescriptionMultiTextTags
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "Single encompassing tag"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   0
            InitialParent   =   "grpDescriptionMultiTextTags"
            Italic          =   False
            Left            =   195
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   "<text>Line 1\n\nLine 2</text>"
            Top             =   174
            Transparent     =   False
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   210
         End
         Begin RadioButton rdoDescriptionMultiTextTags
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "One per new line"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   1
            InitialParent   =   "grpDescriptionMultiTextTags"
            Italic          =   False
            Left            =   195
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   "<text>Line 1</text>\n<text/>\n<text>Line 2</text>"
            Top             =   206
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   210
         End
      End
      Begin GroupBox grpSubclassBeforeFeatureName
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Subclass Features:"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   106
         Index           =   -2147483648
         InitialParent   =   "ppPrefs"
         Italic          =   False
         Left            =   175
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   409
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
         Begin RadioButton rdoSubclassBeforeFeatureName
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "Subclass name: Feature name"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   0
            InitialParent   =   "grpSubclassBeforeFeatureName"
            Italic          =   False
            Left            =   195
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   445
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   210
         End
         Begin RadioButton rdoSubclassBeforeFeatureName
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "Feature name (Subclass name)"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   1
            InitialParent   =   "grpSubclassBeforeFeatureName"
            Italic          =   False
            Left            =   195
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   477
            Transparent     =   False
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   210
         End
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  Prefs.Sync
		End Sub
	#tag EndEvent

	#tag Event
		Function ConstructToolbar(Toolbar as NSToolbar) As Boolean
		  Toolbar.AllowsUserCustomization = False
		  Toolbar.DisplayMode = NSToolbar.NSToolbarDisplayMode.NSToolbarDisplayModeIconAndLabel
		  'Toolbar.AutosavesConfiguration = True
		  
		  // This is an array of items identifiers to specify the default items (and order) in toolbar
		  // this template is used the first time the app is launched and for defining the default set in toolbar customization
		  Toolbar.DefaultItems = Array( _
		  NSToolbarFlexibleSpaceItemIdentifier, _
		  "PrefsGeneral", _
		  "PrefsAdvanced", _
		  NSToolbarFlexibleSpaceItemIdentifier )
		  
		  
		  // This is an array of items identifiers to specify all the allowed items in toolbar
		  // this template is used to populate the toolbar customization panel
		  Toolbar.AllowedItems = Array( _
		  NSToolbarSpaceItemIdentifier, _
		  NSToolbarFlexibleSpaceItemIdentifier, _
		  NSToolbarCustomizeToolbarItemIdentifier, _
		  NSToolbarSeparatorItemIdentifier, _  
		  _ 'NSToolbarShowFontsItemIdentifier, _
		  _ 'NSToolbarShowColorsItemIdentifier, _
		  _ 'NSToolbarPrintItemIdentifier, _
		  _
		  "PrefsGeneral", _
		  "PrefsAdvanced" )
		  
		  // This (optional) array define the items which allows selection (as in Preferences panel often is used)
		  Toolbar.SelectableItems = array( _
		  "PrefsGeneral", _
		  "PrefsAdvanced")
		  
		  // Add toolbar button items using simplified extensions
		  Toolbar.AddButton( "PrefsGeneral", NSImage.PreferencesGeneral, Keywords.kGeneral ) // ( Unique Identifier, Button image, toolbar label )
		  Toolbar.AddButton( "PrefsAdvanced", NSImage.Advanced, Keywords.kAdvanced )
		  
		  // Since we want a couple of selecable toolbar buttons
		  // Select one as a starting point
		  Toolbar.SelectedItemIdentifier = AppSettings.Prefs.Value( "LastPrefSelection", "PrefsGeneral" )
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub Settings()
		  #if TargetMacOS then
		    'self.PrefFrameName = "wndPreferences"
		    'self.PrefToolbarName = "PreferencesToolbar"
		    'self.ToolbarStyle = NSWindowToolbarStyle.Preference
		  #else
		    
		  #endif
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarActions(Identifier as String, hitItem as NSMenuItem)
		  Select case Identifier
		  case "prefsGeneral"
		    PanelFlipper(0)
		  case "prefsAdvanced"
		    PanelFlipper(1)
		  End Select
		  
		  Prefs.Value("LastPrefSelection") = Identifier
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub PanelFlipper(Index as Integer)
		  // First hide the page panel, do the (smooth-)resize, flip the panel and then show it again.
		  ppPrefs.Visible = False
		  
		  #if TargetMacOS then
		    self.SmoothResize( self.Width, sepArray(Index).Top )
		  #else
		    self.Height = sepArray(Index).Top
		  #endif
		  
		  'self.Height = sepArray(Index).Top
		  ppPrefs.SelectedPanelIndex = Index
		  ppPrefs.Visible = True
		End Sub
	#tag EndMethod


	#tag Constant, Name = kCheckboxAutomaticUpdates, Type = String, Dynamic = True, Default = \"Automatically Check For Updates", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Automatically Check For Updates"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Automatisch zoeken naar updates"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Kontrollera uppdateringar automatiskt"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Automatisch nach Updates suchen"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"V\xC3\xA9rifier automatiquement les mises \xC3\xA0 jours"
	#tag EndConstant


#tag EndWindowCode

#tag Events ppPrefs
	#tag Event
		Sub Open()
		  Select case Prefs.Value("LastPrefSelection", "PrefsGeneral")
		  case "PrefsGeneral"
		    PanelFlipper(0)
		  case "PrefsAdvanced"
		    PanelFlipper(1)
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkAutomaticUpdates
	#tag Event
		Sub Action()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rdoSourceMultiLine
	#tag Event
		Sub Action(index as Integer)
		  AppPrefs.SourceMultiline = (index = 0)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open(index as Integer)
		  
		  Select case AppPrefs.SourceMultiline 'AppSettings.Prefs.Value("SourceMultiline", True)
		    
		  case True
		    rdoSourceMultiLine(0).Value = True
		  case False
		    rdoSourceMultiLine(1).Value = True
		    
		  else
		    Break
		  End Select
		  
		  #if TargetWindows then
		    me.Tooltip = me.Tooltip.Replace( chr(9) + chr(9), chr(9) )
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rdoXMLIndentCharacter
	#tag Event
		Sub Action(index as Integer)
		  
		  Select case index
		    
		  case 0
		    AppPrefs.IndentCharacters = chr(9)
		    'AppSettings.Prefs.Value("IndentCharacters") = chr(9)
		  case 1
		    AppPrefs.IndentCharacters = "  "
		    'AppSettings.Prefs.Value("IndentCharacters") = "  "
		  case 2
		    AppPrefs.IndentCharacters = "    "
		    'AppSettings.Prefs.Value("IndentCharacters") = "    "
		    
		  End Select
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open(index as Integer)
		  
		  
		  Select case AppPrefs.IndentCharacters
		    
		  case chr(9)
		    rdoXMLIndentCharacter(0).Value = True
		  case "  "
		    rdoXMLIndentCharacter(1).Value = True
		  case "    "
		    rdoXMLIndentCharacter(2).Value = True
		    
		  else
		    Break
		    
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rdoDescriptionMultiTextTags
	#tag Event
		Sub Action(index as Integer)
		  AppSettings.Prefs.Value( "DescriptionMultiTextTags" ) = (index = 1)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open(index as Integer)
		  Select case AppSettings.Prefs.Value("DescriptionMultiTextTags", False)
		    
		  case True
		    rdoDescriptionMultiTextTags(0).Value = True
		  case False
		    rdoDescriptionMultiTextTags(1).Value = True
		    
		  else
		    Break
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rdoSubclassBeforeFeatureName
	#tag Event
		Sub Action(index as Integer)
		  AppPrefs.SubclassBeforeFeatureName = (index = 0)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open(index as Integer)
		  Select case AppPrefs.SubclassBeforeFeatureName
		    
		  case False
		    rdoSubclassBeforeFeatureName(0).Value = True
		  case True
		    rdoSubclassBeforeFeatureName(1).Value = True
		    
		  else
		    Break
		  End Select
		End Sub
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
