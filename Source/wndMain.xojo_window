#tag Window
Begin WindowPro wndMain
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   3
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   768
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   593336822
   MenuBarVisible  =   True
   MinimumHeight   =   425
   MinimumWidth    =   850
   Resizeable      =   True
   Title           =   "#AppSettings.kAppName"
   Type            =   0
   Visible         =   True
   Width           =   1024
   Begin DNDToolbar cvsToolbar
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   52
      Index           =   0
      InitialParent   =   ""
      IsDeactivated   =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   1024
      Begin CanvasButton cvsbtnEdit
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   False
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   526178303
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar$0"
         IsSelected      =   True
         Left            =   884
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Template        =   True
         Tooltip         =   "Edit Source"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   True
         Width           =   32
      End
      Begin CanvasButton cvsbtnCompileCompendium
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   2044971007
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar$0"
         IsSelected      =   True
         Left            =   928
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Template        =   True
         Tooltip         =   "Compendium Builder"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   True
         Width           =   32
      End
      Begin CanvasButton cvsbtnSettings
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   853008383
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar$0"
         IsSelected      =   True
         Left            =   972
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Template        =   True
         Tooltip         =   "Preferences"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   True
         Width           =   32
      End
      Begin CanvasButton cvsbtnCompendiumViewer
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   1744912383
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar$0"
         IsSelected      =   True
         Left            =   840
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Template        =   True
         Tooltip         =   "Edit Source"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   False
         Width           =   32
      End
      Begin Label lblTitle
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   32.0
         FontUnit        =   1
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar$0"
         Italic          =   False
         Left            =   75
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Compendium Editor"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   10
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   680
      End
      Begin CanvasButton cvsbtnExperiment1
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   845838335
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar$0"
         IsSelected      =   True
         Left            =   796
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Template        =   True
         Tooltip         =   "Edit Source"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   False
         Width           =   32
      End
   End
   Begin DNDToolbar cvsToolbar
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   44
      Index           =   1
      InitialParent   =   ""
      IsDeactivated   =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   724
      Transparent     =   True
      Visible         =   True
      Width           =   1024
      BeginSegmented AddRemoveButton arSources
         AddEnabled      =   False
         Enabled         =   True
         Height          =   24
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar$1"
         Left            =   339
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacControlStyle =   1
         RemoveEnabled   =   False
         Scope           =   0
         Segments        =   "+\n\nFalse\r-\n\nFalse"
         SelectionType   =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   False
         Top             =   734
         Transparent     =   True
         Visible         =   True
         Width           =   48
      End
      Begin Slider sldListSize
         AllowAutoDeactivate=   True
         AllowLiveScrolling=   True
         Enabled         =   True
         Height          =   24
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar$1"
         Left            =   20
         LineStep        =   1
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         MaximumValue    =   128
         MinimumValue    =   48
         PageStep        =   20
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TickMarkStyle   =   0
         Tooltip         =   ""
         Top             =   734
         Transparent     =   True
         Value           =   56
         Visible         =   True
         Width           =   150
      End
   End
   Begin EmbedControl embeddor
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
      Height          =   672
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   403
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   52
      Transparent     =   True
      Visible         =   True
      Width           =   621
   End
   Begin ListboxPro lstSources
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   True
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   5
      ColumnWidths    =   "*, 0, 0, 0, 0"
      DefaultRowHeight=   56
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   False
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   672
      IgnoreChange    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      IsFocused       =   False
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaxWidth        =   600
      MinWidth        =   200
      PrefName        =   ""
      RequiresSelection=   False
      Resizable       =   False
      RestoreOnChange =   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   52
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   402
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  Quit
		End Sub
	#tag EndEvent

	#tag Event
		Function ConstructToolbar(Toolbar as NSToolbar) As Boolean
		  
		  // Default toolbar settings
		  Toolbar.AllowsUserCustomization = True
		  Toolbar.AutosavesConfiguration = True
		  Toolbar.DisplayMode = NSToolbar.NSToolbarDisplayMode.NSToolbarDisplayModeIconOnly
		  
		  
		  // This is an array of items identifiers to specify the default items (and order) in toolbar
		  // this template is used the first time the app is launched and for defining the default set in toolbar customization
		  Toolbar.DefaultItems = Array( arSources.Name, NSToolbarFlexibleSpaceItemIdentifier, "mainEdit", "mainCompile", "mainExperimental", "mainSettings" )
		  
		  
		  // This is an array of items identifiers to specify all the allowed items in toolbar
		  // this template is used to populate the toolbar customization panel
		  Toolbar.AllowedItems = Array ( _
		  _ // Commonly used toolbar items
		  NSToolbarSpaceItemIdentifier, _
		  NSToolbarFlexibleSpaceItemIdentifier, _
		  NSToolbarCustomizeToolbarItemIdentifier, _
		  NSToolbarSeparatorItemIdentifier, arSources.Name, "mainOpen", "mainCompile", "mainExperimental", "mainSettings" ) ', _
		  '_ // Your toolbar items
		  'PushButton1.Name )
		  
		  
		  // Add toolbar items
		  'Toolbar.AddControl( PushButton1, "Pushbutton" ) // Simplified method to add customtoolbar items with controls
		  'Toolbar.AddButton( "mainAdvanced", NSImage.Advanced, "Advanced", "", "", False )
		  
		  Toolbar.AddControl arSources, "Add/Remove Source", "Add/Remove Selected Source"
		  Toolbar.AddButton "mainEdit", template_icon_edit_64, "Edit", "Edit Source", "Edit Selected Source", True
		  Toolbar.AddButton "mainCompile", template_icon_code_64, "Compile", "Compile Compendium", "Compile Compendium", True
		  'Toolbar.AddButton "mainOpen", template_compendium_bookshelf, "Open", "Open Sources Folder", "Open Sources Folder", True
		  Toolbar.AddButton "mainSettings", template_icon_settings_64, "Settings", "Settings", "Settings", True
		  #If DebugBuild or False then
		    Toolbar.AddButton "mainExperimental", template_icon_experiment_64, "Experiments", "Experiments", "Debug options", True
		  #Endif
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  // Check for updates at start-up
		  if AppSettings.Prefs.Value( "KUCheckForUpdatesAtStartUp", False ) then
		    AppSettings.CheckForUpdates
		  end if
		  
		  #if TargetMacOS then
		    if self.Toolbar <> Nil then
		      self.Toolbar.ItemByIdentifier( "mainEdit" ).Enabled = false '( lstSources.SelectedRowIndex > -1 )
		    end if
		  #endif
		  
		  SelectSourcesFolder(True)
		  'lstSources.SelectedRowIndex = 0
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  
		  if IsDarkMode then
		    g.DrawTiledImage PHBstyletilingbackgrounddark, self.Width, self.Height'-56
		  else
		    g.DrawTiledImage PHBstyletilingbackgroundlight, self.Width, self.Height'-56
		  end if
		  
		  'g.FillRect 0, 0, g.Width, g.Height
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  
		  'lstSources.Width = self.Width/2
		  'embeddor.Width = self.Width/2
		  'embeddor.Left = self.Width/2
		  '
		  'arSources.Left = (self.Width/2) - arSources.Width - 4
		  
		  'embeddor.AdjustScroller
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  
		  'lstSources.Width = self.Width/2
		  'embeddor.Width = self.Width/2
		  'embeddor.Left = self.Width/2
		  '
		  'arSources.Left = (self.Width/2) - arSources.Width - 4
		  
		  'embeddor.AdjustScroller
		End Sub
	#tag EndEvent

	#tag Event
		Sub Settings()
		  
		  #if TargetMacOS then
		    me.TitlebarAppearsTransparent = True
		    me.TitleVisible = False
		    me.FullSizeContentView = True
		  #endif
		  
		  self.PrefFrameName = "wndMain" // Allow window position to be saved.
		  #if false and TargetMacOS then
		    self.PrefToolbarName = "NSToolbarMain" // Activate toolbar support.
		    'me.ToolbarStyle = NSWindowToolbarStyle.Automatic 'Expanded
		    
		    'self.TitleVisible = False // Merge toolbar with titlebar.
		    'self.BorderBottomThickness = 56 // Put a metalic border on the bottom.
		  #else
		    'cvsToolbar(0).Top = 0
		    'cvsToolbar(0).Left = 0
		    'cvsToolbar(0).Width = self.Width
		    '
		    'lstSources.Top = cvsToolbar(0).Height
		    'lstSources.Height = self.Height - cvsToolbar(0).Height - cvsToolbar(1).Height
		    '
		    'embeddor.Top = cvsToolbar(0).Height
		    'embeddor.Height = self.Height - cvsToolbar(0).Height - cvsToolbar(1).Height
		  #endif
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarActions(Identifier as String, hitItem as NSMenuItem)
		  
		  Select case Identifier
		    
		  case "mainEdit"
		    OpenSourceEditorWindow
		    
		  case "mainCompile"
		    wndCompendiumBuilder.Show
		    
		  case "mainExperimental"
		    wndCompendiumBuilder.show
		    
		  case "mainSettings"
		    wndPreferences.Show
		    
		  End Select
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function CompendiumCompileCompendium(index as Integer) As Boolean Handles CompendiumCompileCompendium.Action
		  wndCompendiumBuilder.ShowWithin( self, 3 )
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CompendiumEditSource() As Boolean Handles CompendiumEditSource.Action
		  OpenSourceEditorWindow
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileRevealSource() As Boolean Handles FileRevealSource.Action
		  if lstSources.SelectedRowIndex > -1 then
		    var source as SourceCore = lstSources.RowTagAt( lstSources.SelectedRowIndex )
		    
		    if source <> Nil and source.ParentFolder <> Nil and source.ParentFolder.Exists then
		      #if TargetMacOS then
		        source.ParentFolder.RevealInFinder
		      #else
		        source.ParentFolder.Launch
		      #endif
		      
		    end if
		  end if
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSelectSourcesFolder(index as Integer) As Boolean Handles FileSelectSourcesFolder.Action
		  SelectSourcesFolder
		  Return True
		  
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub FolderAdd()
		  
		  
		  if lstSources.SelectedRowIndex > -1 and lstSources.RowTagAt( lstSources.SelectedRowIndex ) IsA SourceCore then
		    var source as SourceCore = lstSources.RowTagAt( lstSources.SelectedRowIndex )
		    var parent as FolderItem = source.ParentFolder 'lstSources.RowTagAt( lstSources.SelectedRowIndex )
		    
		    var SourceName as string = InputDialog.ShowPrompt( "Folder Name", "Enter a name for the folder:" )
		    var childname as string = SourceName.ReplaceAll(" ", "_")
		    childname = childname.ReplaceAll(":", "-")
		    
		    while childname.StartsWith(".")
		      childname = childname.Right(childname.Length-1)
		    wend
		    
		    if childname.Trim <> "" then
		      if not parent.Child( childname ).Exists then
		        parent.Child( childname ).CreateFolder
		        
		        lstSources.RowExpandableAt( lstSources.SelectedRowIndex ) = True
		        lstSources.RowExpandedAt( lstSources.SelectedRowIndex ) = False
		        lstSources.RowExpandedAt( lstSources.SelectedRowIndex ) = True
		      else
		        MessageBox "Could not create folder, item with the same name already exists."
		      end if
		    end if
		    
		  else
		    SelectSourcesFolder
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FolderRemove()
		  
		  var sourceFolders() as String = CommonModule.GetSourceFolderPaths
		  
		  
		  if lstSources.SelectedRowIndex > -1 and lstSources.RowTagAt( lstSources.SelectedRowIndex ) IsA SourceCore then
		    
		    var source as SourceCore = lstSources.RowTagAt( lstSources.SelectedRowIndex )
		    var f as FolderItem = source.ParentFolder 'lstSources.RowTagAt( lstSources.SelectedRowIndex )
		    
		    if sourceFolders.Contains( f.NativePath ) then
		      lstSources.RowExpandedAt( lstSources.SelectedRowIndex ) = False
		      lstSources.RemoveRowAt( lstSources.SelectedRowIndex )
		      
		      sourceFolders.RemoveAt( sourceFolders.IndexOf( f.NativePath ) )
		      Prefs.Value("sourcefolders") = sourceFolders
		      
		    elseif f <> Nil and f.Exists and f.IsReadable then
		      
		      Var dialog As New MessageDialog
		      dialog.Message = "Are you sure you want to move the selected folder to the trash?"
		      dialog.ActionButton.Caption = "Move to Trash"
		      dialog.CancelButton.Visible = True
		      dialog.CancelButton.Caption = "Cancel"
		      'dialog.AlternateActionButton.Visible = True
		      'dialog.AlternateActionButton.Caption = "Don't Save"
		      Var dialogButton As MessageDialogButton
		      dialogButton = dialog.ShowModalWithin(Self)
		      Select Case dialogButton
		      Case dialog.ActionButton
		        ' Save
		        f.MoveToTrash
		        lstSources.RemoveRowAt( lstSources.SelectedRowIndex )
		        
		      Case dialog.AlternateActionButton
		        ' Don't save
		      Case dialog.CancelButton
		        ' Cancel
		      End Select
		      
		      
		    end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenSourceEditorWindow()
		  if lstSources.SelectedRowIndex > -1 and lstSources.RowTagAt( lstSources.SelectedRowIndex ) IsA SourceCore then
		    var source as SourceCore = lstSources.RowTagAt( lstSources.SelectedRowIndex )
		    source.LoadFolder( source.ParentFolder )
		    
		    var AlreadyOpen as Boolean = False
		    
		    if SourceEditorWindows.LastIndex > -1 then
		      for index as Integer = 0 to SourceEditorWindows.LastIndex
		        if SourceEditorWindows(index).Source.ParentFolder.NativePath = source.ParentFolder.NativePath then
		          AlreadyOpen = True
		          SourceEditorWindows(index).Show
		          Exit
		        end if
		      next
		    end if
		    
		    if NOT AlreadyOpen then
		      var SourceEditorWindow as new wndSourceEditor
		      SourceEditorWindow.Load( Source )
		      
		      'SourceEditorWindows.Add( SourceEditorWindow )
		      SourceEditorWindows.Add SourceEditorWindow
		      
		      SourceEditorWindow.Show 'ModalWithin( self )
		    end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectSourcesFolder(UseDefault as boolean = False)
		  
		  
		  var sourceFolders() as String = CommonModule.GetSourceFolderPaths
		  
		  
		  if NOT UseDefault or sourceFolders.LastIndex = -1 then
		    var dlg as new SelectFolderDialog
		    dlg.ActionButtonCaption = "Select"
		    dlg.Title = "Select the Sources folder"
		    dlg.PromptText = "Select the folder containing Fight Club 5e XML files."
		    
		    var parent as FolderItem = dlg.ShowModal
		    
		    if parent <> Nil and parent.IsReadable and parent.IsFolder and NOT sourceFolders.Contains( parent.NativePath ) then
		      sourceFolders.Add parent.NativePath
		      sourceFolders.Sort
		      
		      prefs.Value("sourcefolders") = sourceFolders
		    end if
		  end if
		  
		  lstSources.RemoveAllRows
		  if sourceFolders.LastIndex > -1 then
		    
		    for each folderPath as String in sourceFolders
		      var folder as new FolderItem( folderPath, FolderItem.PathModes.Native )
		      
		      if folder <> Nil and folder.Exists and folder.IsReadable then
		        lstSources.AddExpandableRow folder.Name
		        lstSources.RowTagAt( lstSources.LastAddedRowIndex ) = new SourceCore( folder )
		        lstSources.RowExpandedAt( lstSources.LastAddedRowIndex ) = True
		      end if
		      
		    next
		    
		  end if
		  
		  '#if false then
		  'if false and parent <> Nil and parent.IsReadable and parent.IsFolder then
		  ''var t as new TimeFunction( "SelectSourcesFolder( " + Str( UseDefault ) + " )" )
		  '
		  'var alreadyInList as Boolean
		  'for row as Integer = lstSources.LastRowIndex DownTo 0
		  'if lstSources.RowTagAt( row ) IsA SourceCore then
		  '
		  'var rowSource as SourceCore = lstSources.RowTagAt( row )
		  'if rowSource.ParentFolder <> Nil and rowSource.ParentFolder.NativePath = parent.NativePath then
		  'alreadyInList = True
		  'Exit
		  'end if
		  '
		  'end if
		  'next
		  '
		  '
		  'if NOT alreadyInList then
		  'Prefs.Value("sourcefolder") = parent.NativePath
		  'var source as new SourceCore( parent )
		  '
		  '// Load Classes files
		  'var c as new Compendium
		  'var xmlFiles() as FolderItem
		  'FindXMLFiles( parent, xmlFiles )
		  '
		  'if xmlFiles <> Nil and xmlFiles.LastIndex > -1 then
		  'for i as Integer = 0 to xmlFiles.LastIndex
		  'if xmlFiles(i).name.Contains("class") then
		  'c.LoadXMLFile( xmlFiles(i) )
		  'end if
		  'next
		  'end if
		  'ClassesCompendium = c
		  '//
		  '
		  'lstSources.AddExpandableRow parent.Name
		  'lstSources.RowTagAt( lstSources.LastAddedRowIndex ) = source 'parent
		  'lstSources.RowExpandedAt( lstSources.LastAddedRowIndex ) = True
		  'end if
		  'else
		  '// not loaded
		  'end if
		  '#endif
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ClassesCompendium As Compendium
	#tag EndProperty

	#tag Property, Flags = &h0
		SourceEditorWindows() As wndSourceEditor
	#tag EndProperty

	#tag Property, Flags = &h0
		SourceInfoPanel As ccSourceInfo
	#tag EndProperty


#tag EndWindowCode

#tag Events cvsbtnEdit
	#tag Event
		Sub Action()
		  OpenSourceEditorWindow
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsbtnCompileCompendium
	#tag Event
		Sub Action()
		  wndCompendiumBuilder.ShowWithin( self, 3 )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsbtnSettings
	#tag Event
		Sub Action()
		  wndPreferences.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsbtnCompendiumViewer
	#tag Event
		Sub Action()
		  wndCompendiumViewer.Show
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Visible = DebugBuild
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblTitle
	#tag Event
		Sub Open()
		  me.Visible = TargetMacOS
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsbtnExperiment1
	#tag Event
		Sub Action()
		  wndCompendiumViewer.Show
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Visible = DebugBuild
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events arSources
	#tag Event
		Sub ActionAdd()
		  FolderAdd
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionRemove()
		  FolderRemove
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Tooltip = "Add/Remove Folder"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sldListSize
	#tag Event
		Sub ValueChanged()
		  lstSources.DefaultRowHeight = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  #if TargetMacOS then
		    me.ControlSize = NSControlSize.NSSmallControlSize
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events embeddor
	#tag Event
		Sub Open()
		  if SourceInfoPanel = Nil then
		    SourceInfoPanel = new ccSourceInfo
		    'SourceInfoPanel.EmbedWithin( embeddor, 0, 0, SourceInfoPanel.Width, SourceInfoPanel.Height )
		    embeddor.Embed( SourceInfoPanel )
		    embeddor.AdjustScroller
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstSources
	#tag Event
		Sub Action()
		  if me.SelectedRowIndex > -1 then
		    OpenSourceEditorWindow
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub RowExpanded(row As Integer)
		  'var t as new TimeFunction("ExpandRow")
		  
		  if me.RowTagAt( row ) isA SourceCore then
		    var source as SourceCore = me.RowTagAt( row )
		    
		    
		    // Get folders
		    var folders() as FolderItem
		    var names() as string
		    
		    if source <> Nil and source.ParentFolder <> Nil and source.ParentFolder.Exists and source.ParentFolder.IsFolder then
		      
		      for each child as FolderItem in source.ParentFolder.Children
		        if child <> Nil and child.Exists and child.Visible and child.IsReadable and child.IsFolder then
		          folders.Add child
		          names.Add child.Name
		        end if // @END child <> Nil and IsA folder
		      next // @NEXT child
		      
		    end if // @END source <> Nil and IsA Folder
		    
		    // Sort by name
		    names.SortWith( folders )
		    
		    
		    for each folder as FolderItem in folders
		      var folderSource as new SourceCore
		      folderSource.LoadFolder( folder )
		      
		      if folderSource.ContainsFolder then
		        me.AddExpandableRow folder.Name
		        if folderSource.SourceInfo <> Nil then
		          me.CellTextAt( me.LastAddedRowIndex, 1 ) = folderSource.SourceInfo.Lookup("name", "")
		          me.CellTextAt( me.LastAddedRowIndex, 2 ) = folderSource.SourceInfo.Lookup("publisher", "")
		        end if
		        me.RowTagAt( me.LastAddedRowIndex ) = folderSource
		      else
		        if folderSource.SourceInfo <> Nil then
		          me.AddRow folder.Name, folderSource.SourceInfo.Lookup( "name", "" ), folderSource.SourceInfo.Lookup("publisher", "")
		        else
		          me.AddRow folder.Name ', folderSource.SourceInfo.Lookup( "name", "" ), folderSource.SourceInfo.Lookup("publisher", "")
		        end if
		        me.RowTagAt( me.LastAddedRowIndex ) = folderSource
		      end if
		      
		    next
		    
		  end if // @END rowtag IsA SourceCore
		End Sub
	#tag EndEvent
	#tag Event
		Function PaintCellBackground(g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  
		  if NOT me.RowSelectedAt( row ) then
		    
		    if row mod 2 = 0 then
		      if IsDarkMode then
		        g.ForeColor = RowAlternatingDarkModeColorLight '&c0C1024
		      else
		        g.ForeColor = RowAlternatingLightModeColorLight '&cE6E0C6
		      end if
		    else
		      if IsDarkMode then
		        g.ForeColor = RowAlternatingDarkModeColorDark '&c090A1A
		      else
		        g.ForeColor = RowAlternatingLightModeColorDark '&cF1ECD9
		      end if
		    end if
		    
		    'g.DrawAlternatingRows( row )
		    
		  else
		    
		    g.ForeColor = SelectionColor '&c7F1C14
		  end if
		  
		  g.FillRectangle 0, 0, g.Width, g.Height
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function PaintCellText(g as Graphics, row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		  if row > -1 and row <= me.LastRowIndex and column = 0 then
		    
		    // Fetch image
		    var image as Picture
		    if me.RowTagAt( row ) IsA SourceCore then
		      var source as SourceCore = me.RowTagAt( row )
		      
		      if me.RowHeight <= 64 and source.CoverImageThumbnail <> Nil then
		        image = source.CoverImageThumbnail
		      elseif source.CoverImageMedium <> Nil then
		        image = source.CoverImageMedium
		      else
		        // Use default foldericon
		      end if
		    end if
		    
		    // Fetch data
		    var name, publisher as String
		    name = me.CellTextAt( row, 0 )
		    if me.CellTextAt(row, 1) <> "" then
		      name = me.CellTextAt( row, 1 ) 'source.SourceInfo.Lookup("name", "")
		    end if
		    publisher = me.CellTextAt( row, 2 ) 'source.SourceInfo.Lookup("publisher", "")
		    
		    var padding as Integer = 2
		    if me.DefaultRowHeight >= 28 then
		      padding = 4
		    end if
		    
		    // Draw Cover
		    if image <> Nil then
		      Dim Factor as Double = min( (g.Height-(padding*4)) / image.Width, (g.Height-(padding*2)) / image.Height )
		      
		      Dim NewWidth as Double = image.Width * Factor
		      Dim NewHeight as Double = image.Height * Factor
		      
		      g.DrawPicture image, padding, (g.Height/2) - (NewHeight/2), NewWidth, NewHeight, 0, 0, image.Width, image.Height
		      
		      g.forecolor = HeaderStartColor '&cB2271C
		      g.DrawRectangle padding-1, (g.Height/2) - (NewHeight/2) - 1, NewWidth + 2, NewHeight + 2
		      
		      // Draw Folder
		    else
		      Dim Factor as Double = min( (g.Height-(padding*4)) / foldericonred.Width, (g.Height-(padding*2)) / foldericonred.Height )
		      
		      Dim NewWidth as Double = foldericonred.Width * Factor
		      Dim NewHeight as Double = foldericonred.Height * Factor
		      
		      g.DrawPicture foldericonred, padding, (g.Height/2) - (NewHeight/2), NewWidth, NewHeight, 0, 0, foldericonred.Width, foldericonred.Height
		      
		    end if
		    
		    
		    // Draw Name & Publisher
		    g.ForeColor = color.TextColor
		    if me.RowSelectedAt( row ) then
		      g.ForeColor = &cFFFFFF
		    end if
		    
		    
		    if publisher = "" then
		      g.DrawText name, me.RowHeight, g.FontAscent + (g.Height / 2) - (g.TextHeight / 2)
		    else
		      g.DrawText name, me.RowHeight, g.FontAscent + (g.Height / 2) - (g.TextHeight) - padding
		      
		      
		      if me.RowSelectedAt(row) or IsDarkMode then
		        g.ForeColor = &cFFFFFF80 'HSL( 0, 0, 100, 50 )
		      else
		        g.ForeColor = &C00000080 'HSL( 0, 0, 0, 50 )
		      end if
		      
		      g.TextSize = 12
		      g.DrawText publisher, me.RowHeight, g.FontAscent + (g.Height / 2) + padding' - padding' - (g.TextHeight)
		      
		      
		    end if
		    
		  end if
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub SelectionChanged()
		  cvsbtnEdit.Enabled = ( me.SelectedRowIndex > -1 )
		  arSources.RemoveEnabled = me.SelectedRowIndex > -1
		  
		  #if TargetMacOS then
		    if self.Toolbar <> Nil then
		      self.Toolbar.ItemByIdentifier( "mainEdit" ).Enabled = ( me.SelectedRowIndex > -1 )
		    end if
		  #endif
		  
		  // Embed info panel
		  if SourceInfoPanel = Nil then
		    SourceInfoPanel = new ccSourceInfo
		    embeddor.Embed( SourceInfoPanel )
		    embeddor.AdjustScroller
		  end if
		  
		  if lstSources.SelectedRowIndex > -1 and lstSources.RowTagAt( lstSources.SelectedRowIndex ) IsA SourceCore then
		    SourceInfoPanel.Load( me.RowTagAt( lstSources.SelectedRowIndex ) )
		  else
		    SourceInfoPanel.Reset
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  if me.SelectedRowIndex > -1 and me.RowTagAt( me.SelectedRowIndex ) IsA SourceCore then
		    var source as SourceCore = me.RowTagAt( me.SelectedRowIndex )
		    
		    if source.ParentFolder <> Nil and source.ParentFolder.Exists then
		      
		      var RevealInFinder as String = "Reveal in Finder"
		      #if NOT TargetMacOS then
		        RevealInFinder = "Reveal in Explorer"
		      #endif
		      
		      base.AddMenu new DesktopMenuItem( RevealInFinder, source.ParentFolder )
		      base.AddMenu new DesktopMenuItem( "-" )
		      base.AddMenu new DesktopMenuItem( "Add source folder", source )
		      base.AddMenu new DesktopMenuItem( "Remove """ + me.CellTextAt( me.SelectedRowIndex, 0 ) + """")
		    end if
		    
		    base.AddMenu new DesktopMenuItem("Edit Source")
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  
		  if selectedItem <> Nil then
		    
		    Select case selectedItem.Text
		      
		    case "Reveal in Finder", "Reveal in Explorer"
		      var f as FolderItem = selectedItem.Tag
		      #if TargetMacOS then
		        f.RevealInFinder
		      #else
		        f.Launch
		      #endif
		      
		    case "Add source folder"
		      FolderAdd
		      
		    case "Remove """ + me.CellTextAt( me.SelectedRowIndex, 0 ) + """"
		      FolderRemove
		      
		    case "Edit Source"
		      OpenSourceEditorWindow
		      
		    End Select
		    
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub DoublePressed()
		  if me.SelectedRowIndex > -1 then
		    OpenSourceEditorWindow
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function RemoveRow(Row as Integer) As Boolean
		  if row > -1 then
		    FolderRemove
		    Return True
		  end if
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
