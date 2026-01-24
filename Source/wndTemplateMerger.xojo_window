#tag DesktopWindow
Begin DesktopWindowPro wndTemplateMerger
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   3
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   True
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   600
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Template Merger"
   Type            =   0
   Visible         =   True
   Width           =   964
   Begin DesktopCanvas cvsBackend
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   560
      Index           =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Visible         =   True
      Width           =   300
      Begin ListboxPro lstItems
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   3
         ColumnWidths    =   "*,30,0"
         DefaultRowHeight=   46
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLineStyle   =   0
         HasBorder       =   True
         HasHeader       =   False
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   410
         IgnoreChange    =   False
         Index           =   0
         InitialParent   =   "cvsBackend$0"
         InitialValue    =   ""
         IsFocused       =   False
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaxWidth        =   600
         MinWidth        =   200
         PrefName        =   ""
         RequiresSelection=   False
         Resizable       =   False
         RestoreOnChange =   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   128
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   300
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopButton btnReset
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Clear List"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "cvsBackend$0"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   547
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   260
      End
      Begin DesktopButton btnLoadBaseFolder
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Add Items from Folder"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsBackend$0"
         Italic          =   False
         Left            =   70
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   64
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      Begin DesktopButton btnLoadBase
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Add Items from File"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsBackend$0"
         Italic          =   False
         Left            =   70
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   96
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      Begin DesktopLabel lblArray
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "cvsBackend$0"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Base Items"
         TextAlignment   =   2
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   32
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   260
      End
   End
   Begin DesktopCanvas cvsBackend
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   560
      Index           =   1
      Left            =   332
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Visible         =   True
      Width           =   300
      Begin ListboxPro lstItems
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   3
         ColumnWidths    =   "*,0,0"
         DefaultRowHeight=   46
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLineStyle   =   0
         HasBorder       =   True
         HasHeader       =   False
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   410
         IgnoreChange    =   False
         Index           =   1
         InitialParent   =   "cvsBackend$1"
         InitialValue    =   ""
         IsFocused       =   False
         Italic          =   False
         Left            =   332
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaxWidth        =   600
         MinWidth        =   200
         PrefName        =   ""
         RequiresSelection=   False
         Resizable       =   False
         RestoreOnChange =   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   128
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   300
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopButton btnReset
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Clear List"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "cvsBackend$1"
         Italic          =   False
         Left            =   352
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   547
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   260
      End
      Begin DesktopButton btnLoadTemplate
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Add Templates from File"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsBackend$1"
         Italic          =   False
         Left            =   382
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   96
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      Begin DesktopButton btnLoadTemplateFolder
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Add Templates from Folder"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsBackend$1"
         Italic          =   False
         Left            =   382
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   64
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      Begin DesktopLabel lblArray
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "cvsBackend$1"
         Italic          =   False
         Left            =   352
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Item Templates"
         TextAlignment   =   2
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   32
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   260
      End
   End
   Begin DesktopCanvas cvsBackend
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   560
      Index           =   2
      Left            =   644
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Visible         =   True
      Width           =   300
      Begin ListboxPro lstItems
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   3
         ColumnWidths    =   "*,0,0"
         DefaultRowHeight=   26
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLineStyle   =   0
         HasBorder       =   True
         HasHeader       =   False
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   410
         IgnoreChange    =   False
         Index           =   2
         InitialParent   =   "cvsBackend$2"
         InitialValue    =   ""
         IsFocused       =   False
         Italic          =   False
         Left            =   644
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaxWidth        =   600
         MinWidth        =   200
         PrefName        =   ""
         RequiresSelection=   False
         Resizable       =   False
         RestoreOnChange =   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   128
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   300
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopButton btnReset
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Clear List"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "cvsBackend$2"
         Italic          =   False
         Left            =   664
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   547
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   260
      End
      Begin DesktopButton btnSave
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Save to File"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsBackend$2"
         Italic          =   False
         Left            =   694
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   96
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      Begin DesktopButton btnMerge
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Merge Items with Templates"
         Default         =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsBackend$2"
         Italic          =   False
         Left            =   694
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   64
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      Begin DesktopLabel lblArray
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "cvsBackend$2"
         Italic          =   False
         Left            =   664
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Merged Items Preview"
         TextAlignment   =   2
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   32
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   260
      End
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Function ConstructToolbar(Toolbar as NSToolbar) As Boolean
		  
		  // Default toolbar settings
		  Toolbar.AllowsUserCustomization = True
		  Toolbar.AutosavesConfiguration = True
		  Toolbar.DisplayMode = NSToolbar.NSToolbarDisplayMode.NSToolbarDisplayModeIconOnly
		  
		  
		  // This is an array of items identifiers to specify the default items (and order) in toolbar
		  // this template is used the first time the app is launched and for defining the default set in toolbar customization
		  'Toolbar.DefaultItems = Array(  )
		  
		  
		  // This is an array of items identifiers to specify all the allowed items in toolbar
		  // this template is used to populate the toolbar customization panel
		  Toolbar.AllowedItems = Array ( _
		  _ // Commonly used toolbar items
		  NSToolbarSpaceItemIdentifier, _
		  NSToolbarFlexibleSpaceItemIdentifier, _
		  NSToolbarCustomizeToolbarItemIdentifier, _
		  NSToolbarSeparatorItemIdentifier ) ', _
		  '_ // Your toolbar items
		  'PushButton1.Name )
		  
		  
		  // Add toolbar items
		  'Toolbar.AddControl( SegmentedButton1, "Button" )
		  'Toolbar.AddControl( PushButton1, "Pushbutton" ) // Simplified method to add customtoolbar items with controls
		  'Toolbar.AddButton( "mainAdvanced", NSImage.Advanced, "Advanced", "", "", False )
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  if IsDarkMode then
		    g.DrawTiledImage PHBstyletilingbackgrounddark, self.Width, self.Height'-56
		  else
		    g.DrawTiledImage PHBstyletilingbackgroundlight, self.Width, self.Height'-56
		  end if
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Settings()
		  'self.TitlebarAppearsTransparent = True
		  'me.TitleVisible = False
		  'me.FullSizeContentView = True
		  
		  'self.PrefFrameName = "wndTemplateMerger" // Allow window position to be saved.
		  'self.PrefToolbarName = "NSToolbarMain" // Activate toolbar support.
		  'self.TitleVisible = False // Merge toolbar with titlebar.
		  'self.BorderBottomThickness = 24 // Put a metalic border on the bottom.
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarActions(Identifier as String, hitItem as NSMenuItem)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub LoadFolder(f as FolderItem, Template as Boolean)
		  if f = Nil then Return
		  
		  SaveDestinationParent = f
		  
		  LoadFolderRecursive(f, Template)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFolderRecursive(f as FolderItem, Template as Boolean = False)
		  if NOT f.IsFolder then Return
		  
		  for each item as FolderItem in f.Children
		    if item = Nil OR NOT item.Exists OR NOT item.Visible or item.Name.Contains("#") then Continue
		    
		    if NOT item.IsFolder and item.Extension = "xml" then
		      ReadBaseFile(item, Template)
		    elseif item.IsFolder then
		      LoadFolderRecursive(item, Template)
		    end if
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Match(ItemTemplateDict as Dictionary, ItemDict as Dictionary, ItemNode as XMLNode) As Boolean
		  'if ItemTemplateNode = Nil or ItemNode = Nil then Return False
		  if ItemTemplateDict = Nil or ItemDict = Nil then Return False
		  
		  'var templateDict as Dictionary = ItemTemplateNode.ToSimpleDict
		  'var itemDict as Dictionary = ItemNode.ToSimpleDict
		  
		  // Item Details
		  var itemName, itemDetail, itemType, itemProperties as String
		  itemName = itemDict.Lookup("name","").StringValue.Trim
		  itemDetail = itemDict.Lookup("detail","").StringValue.Trim
		  itemType = itemDict.Lookup("type","").StringValue.Trim
		  itemProperties = itemDict.Lookup("property","").StringValue.Trim
		  
		  var proficiency as String = ItemNode.ToString.Match( "Proficiency:(.*?)\n", 1 ).ReplaceAll("simple,","").ReplaceAll("martial,","")
		  if proficiency.Contains("<") then
		    proficiency = proficiency.NthField("<",1)
		  end if
		  proficiency = proficiency.Trim
		  
		  // Template Details
		  var templateTypes(), templateProperties(), templateMatches(), templateExcludes() as String
		  
		  templateTypes = ItemTemplateDict.Lookup("type","").StringValue.SplitString(",")
		  templateProperties = ItemTemplateDict.Lookup("property","").StringValue.SplitString(",")
		  templateMatches = ItemTemplateDict.Lookup("match","").StringValue.SplitString(",")
		  templateExcludes = ItemTemplateDict.Lookup("exclude","").StringValue.SplitString(",")
		  
		  
		  // Match
		  // - Excludes
		  for each matchName as string in templateExcludes
		    if itemName = matchName then
		      Return False
		    end if
		  next
		  
		  // - Name or Proficiency
		  for each matchName as string in templateMatches
		    if itemName = matchName or itemName.Contains( matchName ) then
		      Return True
		    end if
		    
		    if proficiency.Contains( matchName ) then
		      Return True
		    end if
		  next
		  
		  // - Type
		  for each matchType as string in templateTypes
		    if itemType = matchType then
		      Return True
		    end if
		  next
		  
		  // - Property
		  for each matchProperty as String in templateProperties
		    if matchProperty = itemProperties then
		      Return True
		    end if
		  next
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadBaseFile(f as FolderItem, Template as Boolean = True)
		  var xDoc as new XMLDocument( f )
		  if xDoc = Nil then Return
		  
		  var xRoot as XMLNode = xDoc.FirstChild
		  if xRoot = Nil then Return
		  
		  
		  for index as Integer = 0 to xRoot.ChildCount-1
		    if xRoot.Child(index).Name <> "item" and xRoot.Child(index).Name <> "itemtemplate" then Continue
		    
		    var dictNode as Dictionary = xRoot.Child(index).ToSimpleDict
		    if dictNode = Nil then Continue
		    
		    if NOT Template and xRoot.Child(index).Name = "item" then
		      
		      var name as string = dictNode.Lookup("name", "")
		      var IsMagicItem as String = dictNode.Lookup("magic", "")
		      var rarity as String = dictNode.Lookup("detail", "")
		      var type as string = dictNode.Lookup("type", "")
		      var value as String = dictNode.Lookup("value","")
		      
		      var source as string = xRoot.Child(index).ToString.StringBetween("Source:", "</text>").NthField(",",1).NthField(" p. ", 1).Trim
		      
		      if NOT IsTrue( IsMagicItem ) and value <> "" and type <> "G" and type <> "$" and type <> "W" then
		        
		        if rarity = "" OR rarity.Contains("common") OR rarity.Contains("uncommon") then
		          lstItems(0).AddRow name, type, source
		          lstItems(0).RowTagAt( lstItems(0).LastAddedRowIndex ) = xRoot.Child(index)
		        end if
		        
		      end if
		      
		    elseif Template and xRoot.Child(index).Name = "itemtemplate" then
		      
		      lstItems(1).AddRow dictNode.Lookup("name","").StringValue, "", dictNode.Lookup("source","").StringValue.NthField(" p. ", 1).Trim
		      lstItems(1).RowTagAt( lstItems(1).LastAddedRowIndex ) = xRoot.Child(index)
		      
		    end if
		    
		  next // @NEXT xNode
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mMergedDocument = Nil then
			    mMergedDocument = new XMLDocument
			    mMergedDocument.PreserveWhitespace = True
			    
			    var xMergedItemsRoot as XMLNode = mMergedDocument.AppendChild( mMergedDocument.CreateElement( "compendium" ) )
			    xMergedItemsRoot.SetAttribute("version", "5")
			    xMergedItemsRoot.SetAttribute("auto_indent", "NO")
			  end if
			  
			  Return mMergedDocument
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mMergedDocument = value
			End Set
		#tag EndSetter
		MergedDocument As XMLDocument
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mMergedDocument As XMLDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		SaveDestinationParent As FolderItem
	#tag EndProperty


#tag EndWindowCode

#tag Events cvsBackend
	#tag Event
		Sub Paint(index as Integer, g As Graphics, areas() As Rect)
		  if IsDarkMode then
		    g.ForeColor = HSL( 0, 0, 100, 10 )
		  else
		    g.ForeColor = HSL( 0, 0, 0, 10 )
		  end if
		  
		  g.FillRoundRectangle(0, 0, g.Width, g.Height, 20, 20)
		  g.DrawRoundRectangle(0, 0, g.Width, g.Height, 20, 20)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstItems
	#tag Event
		Function RemoveRow(index as Integer, Row as Integer) As Boolean
		  me.RemoveRowAt(row)
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function PaintCellText(index as Integer, g as Graphics, row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		  if index < 2 and column = 0 then
		    var name, source as String
		    name = me.CellTextAt( row, 0 )
		    source = me.CellTextAt( row, 2 )
		    
		    g.Bold = True
		    g.DrawText name, 4, g.FontAscent + 6
		    
		    g.Bold = False
		    if me.SelectedRowIndex <> row then
		      #if TargetMacOS then
		        g.ForeColor = NSColor.ControlTextColorDisabled
		      #else
		        'g.ForeColor = 
		      #endif
		    end if
		    g.TextSize = 12
		    g.DrawText source, 4, g.Height - 8' - g.FontAscent
		    
		    Return True
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function PaintCellBackground(index as Integer, g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  if me.SelectedRowIndex <> row then
		    g.DrawAlternatingRows(row)
		    Return True
		  else
		    g.DrawingColor = CommonModule.SelectionColor
		    g.FillRect 0, 0, g.Width, g.Height
		    Return True
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnReset
	#tag Event
		Sub Pressed(index as Integer)
		  lstItems(index).RemoveAllRows
		  
		  if index = 2 then
		    btnSave.Default = False
		    btnMerge.Default = True
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLoadBaseFolder
	#tag Event
		Sub Pressed()
		  Var f As FolderItem = FolderItem.ShowSelectFolderDialog  'FolderItem.ShowOpenFileDialog("text/xml")
		  if f = Nil then Return
		  
		  if Keyboard.AsyncAltKey then
		    lstItems(0).RemoveAllRows
		  end if
		  
		  LoadFolder(f, False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLoadBase
	#tag Event
		Sub Pressed()
		  Var f As FolderItem = FolderItem.ShowOpenFileDialog("text/xml")
		  if f = Nil then Return
		  
		  if Keyboard.AsyncAltKey then
		    lstItems(0).RemoveAllRows
		  end if
		  
		  ReadBaseFile(f, False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLoadTemplate
	#tag Event
		Sub Pressed()
		  Var f As FolderItem = FolderItem.ShowOpenFileDialog("text/xml")
		  if f = Nil then Return
		  
		  SaveDestinationParent = f.Parent
		  
		  ReadBaseFile(f, True )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLoadTemplateFolder
	#tag Event
		Sub Pressed()
		  Var f As FolderItem = FolderItem.ShowSelectFolderDialog  'FolderItem.ShowOpenFileDialog("text/xml")
		  if f = Nil then Return
		  
		  if Keyboard.AsyncAltKey then
		    lstItems(1).RemoveAllRows
		  end if
		  
		  LoadFolder(f, True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSave
	#tag Event
		Sub Pressed()
		  if MergedDocument = Nil or MergedDocument.FirstChild.FirstChild = Nil then
		    MessageBox "Nothing to save"
		    Return
		  end if
		  
		  
		  if SaveDestinationParent = Nil then
		    SaveDestinationParent = SpecialFolder.Documents
		  end if
		  
		  var filename as String = "Merged Items Compendium.xml"
		  
		  Var dlg As New SaveFileDialog
		  var saveDestionation as FolderItem
		  dlg.InitialFolder = SaveDestinationParent '.Child( filename )
		  'dlg.PromptText = "Prompt Text"
		  dlg.SuggestedFileName = filename '"Merged Items Compendium.xml"
		  dlg.Title = "Choose where you want to save the merged items' file."
		  'dlg.Filter = FileTypeMisc.XML 'FileTypeGroup1.Text // defined as a file type in FileTypeGroup1 file type set
		  
		  saveDestionation = dlg.ShowModal
		  
		  
		  if MergedDocument <> Nil then
		    MergedDocument.SaveXMLFormatted( saveDestionation )
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnMerge
	#tag Event
		Sub Pressed()
		  MergedDocument = Nil
		  lstItems(2).RemoveAllRows
		  
		  if lstItems(0).RowCount = 0 or lstItems(1).RowCount = 0 then Return
		  
		  
		  var xMergedRoot as XMLNode = MergedDocument.FirstChild
		  
		  
		  for templateIndex as Integer = 0 to lstItems(1).LastRowIndex
		    var currentTemplate as XMLNode = lstItems(1).RowTagAt( templateIndex )
		    if currentTemplate = Nil then Continue
		    
		    var currentTemplateDict as Dictionary = currentTemplate.ToSimpleDict
		    
		    for originIndex as Integer = 0 to lstItems(0).LastRowIndex
		      var currentItem as XMLNode = lstItems(0).RowTagAt( originIndex )
		      if currentItem = Nil then Continue
		      
		      var currentItemDict as Dictionary = currentItem.ToSimpleDict
		      
		      
		      if Match( currentTemplateDict, currentItemDict, currentItem ) then
		        
		        var xItem as XMLNode = xMergedRoot.AppendNewChild("item")
		        
		        // Change and Add Name
		        var currentItemName, templateItemName as String
		        templateItemName = currentTemplateDict.Lookup("name","").StringValue
		        currentItemName = currentItemDict.Lookup("name","").StringValue
		        
		        var nameTags as String // - Save name's tags. ()[]
		        if currentItemName.Contains("(") then // -- (HB/UA/ETC)
		          nameTags = currentItemName.Match( "(\(.*?\))" ).Trim
		        end if
		        
		        if currentItemName.Contains("[") then // -- [2024]
		          nameTags = nameTags + " " + currentItemName.Match("(\[.*?\])" ).Trim
		        end if
		        currentItemName = currentItemName.ReplaceAll( nameTags, "" ).Trim
		        
		        // -- detailItemName
		        var detailItemName as String
		        if NOT templateItemName.Contains("%name%") then
		          detailItemName = currentItemName.Lowercase + ", "
		        end if
		        
		        currentItemName = Trim( templateItemName.Replace( "%name%", currentItemName ) + " " + nameTags )
		        
		        xItem.AppendSimpleChild( "name", currentItemName )
		        
		        // Details
		        var mergedDetail as string
		        
		        var currentItemDetail, templateItemDetail as String
		        currentItemDetail = currentItemDict.Lookup("detail","")
		        templateItemDetail = currentTemplateDict.Lookup("detail","")
		        
		        if currentItemDetail = "" then
		          mergedDetail = templateItemDetail
		        elseif currentItemDetail.Contains("common") then
		          mergedDetail = detailItemName + currentItemDetail.ReplaceAllRegEx("\b(un)?common\b", templateItemDetail )
		        else
		          mergedDetail = detailItemName + currentItemDetail + ", " + templateItemDetail
		        end if
		        xItem.AppendSimpleChild( "detail", mergedDetail )
		        
		        // Copy Type
		        xItem.AddIfHasValue( "type", currentItemDict.Lookup("type","") )
		        
		        // Make Magic
		        xItem.AddIfHasValue( "magic", currentTemplateDict.Lookup("magic", "YES") )
		        
		        // Copy currentItem properties
		        xItem.AddIfHasValue("weight", currentItemDict.Lookup("weight","") )
		        xItem.AddIfHasValue("property", currentItemDict.Lookup("property",""), True )
		        xItem.AddIfHasValue("dmg1", currentItemDict.Lookup("dmg1","") )
		        xItem.AddIfHasValue("dmg2", currentItemDict.Lookup("dmg2","") )
		        xItem.AddIfHasValue("dmgType", currentItemDict.Lookup("dmgType","") )
		        xItem.AddIfHasValue("range", currentItemDict.Lookup("range","") )
		        xItem.AddIfHasValue("ac", currentItemDict.Lookup("ac","") )
		        xItem.AddIfHasValue("strength", currentItemDict.Lookup("strength","") )
		        xItem.AddIfHasValue("stealth", currentItemDict.Lookup("stealth","") )
		        
		        // Merge template Description with current item Description
		        var itemDescriptionNodes() as XMLNode = currentItem.NodesWithName("text")
		        var isMultiNode as Boolean = itemDescriptionNodes.LastIndex > 0
		        
		        var itemDescription, templateItemDescription as String
		        templateItemDescription = NormalizeLineEndings( currentTemplateDict.Lookup("text","") )
		        
		        // - Get current item description
		        for each xNode as XMLNode in itemDescriptionNodes
		          if xNode <> Nil and xNode.FirstChild <> Nil then
		            itemDescription = itemDescription + xNode.FirstChild.Value + EndOfLine
		          end if
		        next
		        itemDescription = NormalizeLineEndings( itemDescription.Trim )
		        
		        // - Modify content source
		        var originSource as String = itemDescription.Match("Source:(.*?)\Z", 0)
		        var templateSource as String = currentTemplateDict.Lookup("source","")
		        if originSource <> "" and templateSource <> "" then
		          itemDescription = itemDescription.Replace( originSource, "" )'.Trim
		          originSource = originSource.Replace("Source:","").Trim
		          
		          // replace source with added sources + original source
		          itemDescription = itemDescription + "Source:" + chr(9) + templateSource.ReplaceAll( ",", "," + EndOfLine + chr(9) + chr(9) ) + "," + EndOfLine + chr(9) + chr(9) + originSource
		        end if
		        
		        // - Addendum should be above these properties, and above item default text.
		        var itemProperties() as String = Array( "Ammunition", "Finesse", "Light", "Thrown", "Heavy", "Reach", "Range", "Loading", "Two-Handed", "Versatile", "Special", "Proficiency", "Source" )
		        
		        
		        var descriptionLines() as String = itemDescription.Split(EndOfLine)
		        if descriptionLines.LastIndex > -1 then
		          
		          if descriptionLines(0).Contains(":") then
		            if itemProperties.Contains( descriptionLines(0).NthField(":",1) ) then
		              
		              descriptionLines.AddAt( 0, templateItemDescription + EndOfLine )
		            else // Add below Ammo / Prerequisite.
		              for index as Integer = 1 to descriptionLines.LastIndex
		                if descriptionLines(index) = "" then // insert in an empty space.
		                  descriptionLines.AddAt(index, EndOfLine + templateItemDescription )
		                  Exit
		                end if
		                
		              next
		            end if
		            
		          else 'if NOT itemDescription.Contains(":") then // description does not start with ":"
		            descriptionLines.AddAt(0, templateItemDescription + EndOfLine)
		            
		          end if
		          
		        end if
		        
		        itemDescription = string.FromArray( descriptionLines, EndOfLine ).Trim
		        
		        if isMultiNode then
		          descriptionLines = itemDescription.Split(EndOfLine)
		          
		          for index as Integer = 0 to descriptionLines.LastIndex
		            xItem.AppendSimpleChild( "text", descriptionLines(index) )
		          next
		          
		        else
		          xItem.AppendSimpleChild( "text", itemDescription )
		        end if
		        
		        
		        // Modifiers
		        var modifierNodes() as XMLNode = currentTemplate.NodesWithName("modifier")
		        for each modifierNode as XMLNode in modifierNodes
		          xItem.AppendChild( xItem.OwnerDocument.ImportNode( modifierNode, true ) )
		        next
		        
		        // Dice Rolls
		        var originRolls() as XMLNode = currentItem.NodesWithName("roll")
		        for each roll as XMLNode in originRolls
		          xItem.AppendChild( xItem.OwnerDocument.ImportNode( roll, true ) )
		        next
		        
		        var templateRolls() as XMLNode = currentTemplate.NodesWithName("roll")
		        for each roll as XMLNode in templateRolls
		          xItem.AppendChild( xItem.OwnerDocument.ImportNode( roll, true ) )
		        next
		        
		        
		        // Add to list
		        lstItems(2).AddRow currentItemName
		        'lstItems(2).RowTagAt( lstItems(2).LastAddedRowIndex ) = xItem
		      end if
		      
		      
		    next // @NEXT originIndex
		    
		  next // @NEXT templateIndex
		  
		  me.Default = False
		  btnSave.Default = True
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
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
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
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
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
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
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
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
