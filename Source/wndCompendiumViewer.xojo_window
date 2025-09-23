#tag Window
Begin WindowPro wndCompendiumViewer
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
   Height          =   760
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   600
   MinimumWidth    =   800
   Resizeable      =   True
   Title           =   "Compendium Viewer"
   Type            =   0
   Visible         =   True
   Width           =   1024
   Begin DNDToolbar cvsToolbar
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   52
      Index           =   -2147483648
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
      Begin CanvasButton cvsBtnSpecies
         AllowAutoDeactivate=   False
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   False
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   1880932351
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar"
         IsSelected      =   True
         Left            =   708
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
         Tooltip         =   "Species"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   True
         Width           =   32
      End
      Begin CanvasButton cvsBtnClasses
         AllowAutoDeactivate=   False
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   False
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   1436805119
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar"
         IsSelected      =   True
         Left            =   752
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
         Tooltip         =   "Classes"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   True
         Width           =   32
      End
      Begin CanvasButton cvsBtnBackground
         AllowAutoDeactivate=   False
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   False
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   1767202815
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar"
         IsSelected      =   True
         Left            =   796
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
         Tooltip         =   "Backgrounds"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   True
         Width           =   32
      End
      Begin CanvasButton cvsBtnEquipment
         AllowAutoDeactivate=   False
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   False
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   1704243199
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar"
         IsSelected      =   True
         Left            =   840
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
         Tooltip         =   "Equipment"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   True
         Width           =   32
      End
      Begin CanvasButton cvsBtnFeats
         AllowAutoDeactivate=   False
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   False
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   1719934975
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar"
         IsSelected      =   True
         Left            =   884
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Template        =   True
         Tooltip         =   "Feats"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   True
         Width           =   32
      End
      Begin CanvasButton cvsBtnSpells
         AllowAutoDeactivate=   False
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   False
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   726933503
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar"
         IsSelected      =   True
         Left            =   928
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
         Tooltip         =   "Spells"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   True
         Width           =   32
      End
      Begin CanvasButton cvsBtnCreatures
         AllowAutoDeactivate=   False
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   False
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   623790079
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar"
         IsSelected      =   True
         Left            =   972
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Template        =   True
         Tooltip         =   "Export Compiled Compendium"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   True
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
         InitialParent   =   "cvsToolbar"
         Italic          =   False
         Left            =   80
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Compendium Viewer"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   10
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   519
      End
      Begin CanvasButton cvsBtnReload
         AllowAutoDeactivate=   False
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   False
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   1376546815
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar"
         IsSelected      =   True
         Left            =   664
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Template        =   True
         Tooltip         =   "Species"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   False
         Width           =   32
      End
   End
   Begin PagePanel ppViewer
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   708
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   8
      Panels          =   ""
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Value           =   4
      Visible         =   True
      Width           =   1024
      Begin DesktopListBox lstObjects
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   2
         ColumnWidths    =   "*, 0"
         DefaultRowHeight=   56
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
         Height          =   708
         Index           =   0
         InitialParent   =   "ppViewer"
         InitialValue    =   ""
         Italic          =   False
         Left            =   250
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Canvas cvsSplash
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   708
         Index           =   -2147483648
         InitialParent   =   "ppViewer"
         Left            =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   52
         Transparent     =   True
         Visible         =   True
         Width           =   1024
         Begin ProgressBar pgBar
            AllowAutoDeactivate=   True
            Enabled         =   True
            Height          =   20
            Indeterminate   =   False
            Index           =   -2147483648
            InitialParent   =   "cvsSplash"
            Left            =   20
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            MaximumValue    =   0
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   False
            Tooltip         =   ""
            Top             =   740
            Transparent     =   False
            Value           =   0.0
            Visible         =   True
            Width           =   984
         End
      End
      Begin ProgressWheel pgWheel
         AllowAutoDeactivate=   True
         Enabled         =   True
         Height          =   16
         Index           =   -2147483648
         InitialParent   =   "ppViewer"
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   695
         Transparent     =   True
         Visible         =   True
         Width           =   16
      End
      Begin Label lblMessage
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   24
         Index           =   -2147483648
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   48
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   692
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   648
      End
      Begin DesktopListBox lstObjects
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   2
         ColumnWidths    =   "*, 0"
         DefaultRowHeight=   56
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
         Height          =   708
         Index           =   1
         InitialParent   =   "ppViewer"
         InitialValue    =   ""
         Italic          =   False
         Left            =   250
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopListBox lstObjects
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   2
         ColumnWidths    =   "*, 0"
         DefaultRowHeight=   56
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
         Height          =   708
         Index           =   2
         InitialParent   =   "ppViewer"
         InitialValue    =   ""
         Italic          =   False
         Left            =   250
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         Tooltip         =   ""
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopListBox lstObjects
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   2
         ColumnWidths    =   "*, 0"
         DefaultRowHeight=   56
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
         Height          =   708
         Index           =   3
         InitialParent   =   "ppViewer"
         InitialValue    =   ""
         Italic          =   False
         Left            =   250
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopListBox lstObjects
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   2
         ColumnWidths    =   "*, 0"
         DefaultRowHeight=   56
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
         Height          =   708
         Index           =   4
         InitialParent   =   "ppViewer"
         InitialValue    =   ""
         Italic          =   False
         Left            =   250
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   6
         TabStop         =   True
         Tooltip         =   ""
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopListBox lstObjects
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   2
         ColumnWidths    =   "*, 0"
         DefaultRowHeight=   56
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
         Height          =   708
         Index           =   5
         InitialParent   =   "ppViewer"
         InitialValue    =   ""
         Italic          =   False
         Left            =   250
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   7
         TabStop         =   True
         Tooltip         =   ""
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopListBox lstObjects
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   2
         ColumnWidths    =   "*, 0"
         DefaultRowHeight=   56
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
         Height          =   708
         Index           =   6
         InitialParent   =   "ppViewer"
         InitialValue    =   ""
         Italic          =   False
         Left            =   250
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   8
         TabStop         =   True
         Tooltip         =   ""
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   250
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin PopupMenu popSources
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "ppViewer"
         InitialValue    =   "All Sources\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin SearchField srchField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowRecentItems=   False
         ClearMenuItemValue=   "Clear"
         Enabled         =   True
         Height          =   22
         Hint            =   ""
         Index           =   0
         InitialParent   =   "ppViewer"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumRecentItems=   -1
         RecentItemsValue=   "Recent Searches"
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         Tooltip         =   ""
         Top             =   72
         Transparent     =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popSpecies
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "All Species\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   226
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblListCount
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   138
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblListCount
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   138
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblListCount
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   138
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblListCount
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   138
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblListCount
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   138
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblListCount
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   5
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   138
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblListCount
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   6
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   138
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   8
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblCountSpecies
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
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Species:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblCountClasses
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
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Classes:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblCountBackgrounds
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
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Backgrounds:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblCountItems
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
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Items:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblCountFeats
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
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Feats:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblCountSpecies1
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
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   "Spells:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label lblCountCreatures
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
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   8
         TabStop         =   True
         Text            =   "Creatures:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   728
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin SearchField srchField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowRecentItems=   False
         ClearMenuItemValue=   "Clear"
         Enabled         =   True
         Height          =   22
         Hint            =   ""
         Index           =   1
         InitialParent   =   "ppViewer"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumRecentItems=   -1
         RecentItemsValue=   "Recent Searches"
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   ""
         Tooltip         =   ""
         Top             =   72
         Transparent     =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popSources
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "ppViewer"
         InitialValue    =   "All Sources\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   4
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popSources
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "ppViewer"
         InitialValue    =   "All Sources\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   3
         TabPanelIndex   =   4
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin SearchField srchField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowRecentItems=   False
         ClearMenuItemValue=   "Clear"
         Enabled         =   True
         Height          =   22
         Hint            =   ""
         Index           =   2
         InitialParent   =   "ppViewer"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumRecentItems=   -1
         RecentItemsValue=   "Recent Searches"
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   ""
         Tooltip         =   ""
         Top             =   72
         Transparent     =   False
         Visible         =   True
         Width           =   218
      End
      Begin SearchField srchField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowRecentItems=   False
         ClearMenuItemValue=   "Clear"
         Enabled         =   True
         Height          =   22
         Hint            =   ""
         Index           =   3
         InitialParent   =   "ppViewer"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumRecentItems=   -1
         RecentItemsValue=   "Recent Searches"
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   ""
         Tooltip         =   ""
         Top             =   72
         Transparent     =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popSources
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "ppViewer"
         InitialValue    =   "All Sources\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   4
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popSources
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "ppViewer"
         InitialValue    =   "All Sources\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   3
         TabPanelIndex   =   6
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin SearchField srchField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowRecentItems=   False
         ClearMenuItemValue=   "Clear"
         Enabled         =   True
         Height          =   22
         Hint            =   ""
         Index           =   4
         InitialParent   =   "ppViewer"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumRecentItems=   -1
         RecentItemsValue=   "Recent Searches"
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   ""
         Tooltip         =   ""
         Top             =   72
         Transparent     =   False
         Visible         =   True
         Width           =   218
      End
      Begin SearchField srchField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowRecentItems=   False
         ClearMenuItemValue=   "Clear"
         Enabled         =   True
         Height          =   22
         Hint            =   ""
         Index           =   5
         InitialParent   =   "ppViewer"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumRecentItems=   -1
         RecentItemsValue=   "Recent Searches"
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   ""
         Tooltip         =   ""
         Top             =   72
         Transparent     =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popSources
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   5
         InitialParent   =   "ppViewer"
         InitialValue    =   "All Sources\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   4
         TabPanelIndex   =   7
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popSources
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   6
         InitialParent   =   "ppViewer"
         InitialValue    =   "All Sources\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   3
         TabPanelIndex   =   8
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin SearchField srchField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowRecentItems=   False
         ClearMenuItemValue=   "Clear"
         Enabled         =   True
         Height          =   22
         Hint            =   ""
         Index           =   6
         InitialParent   =   "ppViewer"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumRecentItems=   -1
         RecentItemsValue=   "Recent Searches"
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   8
         TabStop         =   True
         Text            =   ""
         Tooltip         =   ""
         Top             =   72
         Transparent     =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   17
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Sources:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   106
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   16
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Base Species:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   202
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   14
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Sources:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   106
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   13
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Sources:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   106
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   12
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Sources:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   106
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   11
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Sources:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   106
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   10
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   "Sources:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   106
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   9
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   8
         TabStop         =   True
         Text            =   "Sources:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   106
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popTags
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Tags\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   6
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   178
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   15
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Tags:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   154
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   18
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Tags:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   154
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popTags
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Tags\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   7
         TabPanelIndex   =   4
         TabStop         =   True
         Tooltip         =   ""
         Top             =   178
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popTags
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Tags\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   6
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   178
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   19
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Tags:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   154
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   20
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Tags:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   154
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popTags
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Tags\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   7
         TabPanelIndex   =   6
         TabStop         =   True
         Tooltip         =   ""
         Top             =   178
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popTags
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   5
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Tags\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   6
         TabPanelIndex   =   7
         TabStop         =   True
         Tooltip         =   ""
         Top             =   178
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   21
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   "Tags:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   154
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   22
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   8
         TabStop         =   True
         Text            =   "Tags:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   154
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popTags
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   6
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Tags\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   7
         TabPanelIndex   =   8
         TabStop         =   True
         Tooltip         =   ""
         Top             =   178
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   23
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Tags:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   154
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popTags
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Tags\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   10
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   178
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popSpeciesSpeed
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Speed\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   11
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   274
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   24
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Speed:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   250
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   25
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Proficiencies:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   202
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popBackgroundProficienciesSkills
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Skill\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   9
         TabPanelIndex   =   4
         TabStop         =   True
         Tooltip         =   ""
         Top             =   226
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popBackgroundProficienciesTools
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Tool\n-\nAlchemist's Supplies\nBrewer's Supplies\nCalligrapher's Supplies\nCarpenter's Tools\nCartographer's Tools\nCobbler's Tools\nCook's Utensils\nDisguise Kit\nGlassblower's Tools\nHerbalism Kit\nJeweler's Tools\nLeatherworker's Tools\nMason's Tools\nNavigator's Tools\nPainter's Supplies\nPoisoner's Kit\nPotter's Tools\nSmith's Tools\nThieves' Tools\nTinker's Tools\nWeaver's Tools\nWoodcarver's Tools\n-\nGaming Set\nMusical Instrument\n-\nVehicle (Air)\nVehicle (Land)\nVehicle (Water)"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   10
         TabPanelIndex   =   4
         TabStop         =   True
         Tooltip         =   ""
         Top             =   258
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popBackgroundProficienciesLanguages
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Language\n-\nCommon\nDwarvish\nElven\nElvish\nGiant\nGnomish\nGoblin\nHalfling\nOrc\n-\nAbyssal\nAuran\nCelestial\nDraconic\nDeep Speech\nIgnan\nInfernal\nPrimordial\nSylvan\nUndercommon\n-\nThieves' Cant\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   11
         TabPanelIndex   =   4
         TabStop         =   True
         Tooltip         =   ""
         Top             =   290
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   26
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Type:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   202
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popItemType
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Type\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   9
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   226
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   27
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Magical:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   250
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popItemMagic
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Both Magical and Non-Magical\n-\nYES\nNO"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   11
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   274
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   28
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Armor Class:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   394
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popItemArmorClass
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Armor Class\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   13
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   418
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popItemStrengthRequirement
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "With and Without Strength Requirement\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   14
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   322
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   29
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Strength Requirement:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   298
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popItemStealthDisadvantage
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "With and Without Stealth Disadvantage\n-\nYES\nNO"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   16
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   370
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   30
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   17
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Disadvantage on Stealth:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   346
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   31
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   18
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Deals Damage of Type:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   442
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popItemDamageTypes
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Damage Type\n-\n"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   19
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   466
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   32
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   20
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Properties:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   490
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popItemProperties
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Property\n-\n"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   21
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   514
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   33
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   22
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Proficiencies:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   538
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popItemProficiencies
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Proficiency\n-\n"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   23
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   562
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   34
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   24
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Rarity:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   586
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popItemRarities
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Rarity\n-\nCommon\nUncommon\nRare\nVery Rare\nLegendary\nArtifact\n-\nCursed\nVaries"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   25
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   610
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   35
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   26
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Detail:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   634
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popItemDetails
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Detail\n-\nspellcasting focus\ndruidic focus\nholy symbol\n-\ncontainer\nclothes\nfood and drink\nflora\ntrade good\nlivestock\nservices\ninstrument\ngaming set\nartisan tools\ntool\ngeneric variant\n-\npoison (contact)\npoison (ingested)\npoison (inhaled)\npoison (injury)\n-\nmount\nvehicle (air)\nvehicle (land)\nvehicle (land/water)\nvehicle (water)\n-\nfirearm\nrenaissance\nmodern\nfuturistic\n-\nleather armor\npadded armor\nstudded leather armor\n-\nbreastplate\nchain shirt\nhide armor\nscale mail\n-\nchain mail\nhalf plate armor\nplate armor\nring mail\nsplint armor\n-\nshield\n-\nbattleaxe\nclub\ndagger\ndouble-bladed scimitar\nflail\nglaive\ngreataxe\ngreatclub\ngreatsword\nHalberd\nhandaxe\nhooked shortspear\nhoopak\njavelin\nlance\nlight hammer\nlongsword\nmace\nmaul\nmorningstar\npike\nquarterstaff\nrapier\nscimitar\nshortsword\nsickle\nspear\ntrident\nwar pick\nwarhammer\nwhip\nyklwa\n-\nrod\nstaff\nwand\n-\nblowgun\ndart\nhand crossbow\nheavy crossbow\nlight crossbow\nlight repeating crossbow\nlongbow\nnet\nshortbow\nsling\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   27
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   658
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin PopupMenu popItemModifier
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
         InitialParent   =   "ppViewer"
         InitialValue    =   "Any Modifier\n-"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   28
         TabPanelIndex   =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   706
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
      Begin Label lblFor
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   20
         Index           =   36
         InitialParent   =   "ppViewer"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   29
         TabPanelIndex   =   5
         TabStop         =   True
         Text            =   "Modifier:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   682
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   218
      End
   End
   Begin Thread thrLoader
      DebugIdentifier =   ""
      Index           =   -2147483648
      LockedInPosition=   False
      Priority        =   5
      Scope           =   2
      StackSize       =   0
      TabPanelIndex   =   0
      ThreadID        =   0
      ThreadState     =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  thrLoader.Stop
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  
		  
		  'LoadCompendium
		  pgWheel.Visible = True
		  thrLoader.Start
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  if IsDarkMode then
		    g.DrawTiledImage PHBstyletilingbackgrounddark, self.Width, self.Height'-56
		  else
		    g.DrawTiledImage PHBstyletilingbackgroundlight, self.Width, self.Height'-56
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub Settings()
		  me.TitlebarAppearsTransparent = True
		  me.TitleVisible = False
		  me.FullSizeContentView = True
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub BuildList(xNodes() as XMLNode, Index as Integer)
		  var timeF as new TimeFunction("BuildList( " + Str(Index) + " )")
		  
		  lstObjects(Index).RemoveAllRows
		  'if Index = 0 then
		  'popSources.RemoveAllRows
		  'end if
		  
		  var searchParams as new JSONItem
		  
		  if srchField(Index).Text <> "" then
		    searchParams.Value( "name" ) = srchField(Index).Text
		  end if
		  if popSources(Index).ListIndex > 0 then
		    searchParams.Value("source") = popSources(Index).SelectedRow
		  end if
		  if popTags(Index).ListIndex > 0 then
		    searchParams.Value("nametag") = popTags(Index).RowTagAt( popTags(Index).SelectedRowIndex ).StringValue
		  end if
		  
		  
		  Select case Index
		    
		  case 0 // Species
		    if popSpecies.ListIndex > 0 then
		      searchParams.Value("species") = popSpecies.SelectedRow
		    end if
		    if popSpeciesSpeed.ListIndex > 0 then
		      searchParams.Value("speed") = popSpeciesSpeed.SelectedRow
		    end if
		    
		  case 2 // Backgrounds
		    
		    if popBackgroundProficienciesSkills.ListIndex > 0 then
		      searchParams.Value("skill") = popBackgroundProficienciesSkills.SelectedRow
		    end if
		    
		    if popBackgroundProficienciesTools.ListIndex > 0 then
		      searchParams.Value("tool") = popBackgroundProficienciesTools.SelectedRow
		    end if
		    
		    if popBackgroundProficienciesLanguages.ListIndex > 0 then
		      searchParams.Value("language") = popBackgroundProficienciesLanguages.SelectedRow
		    end if
		    
		    'if popBackgroundProficienciesEquipment.ListIndex > 0 then
		    'searchParams.Value("equipment") = popBackgroundProficienciesEquipment.SelectedRow
		    'end if
		    
		  case 3 // Equipment
		    
		    if popItemType.ListIndex > 0 then
		      searchParams.Value("itemtype") = popItemType.RowTagAt( popItemType.SelectedRowIndex )
		    end if
		    if popItemDamageTypes.ListIndex > 0 then
		      searchParams.Value("damagetype") = popItemDamageTypes.RowTagAt( popItemDamageTypes.SelectedRowIndex )
		    end if 
		    if popItemProperties.ListIndex > 0 then
		      searchParams.Value("itemproperties") = popItemProperties.RowTagAt( popItemProperties.SelectedRowIndex )
		    end if
		    
		    
		    if popItemArmorClass.ListIndex > 0 then
		      searchParams.Value("itemarmorclass") = popItemArmorClass.SelectedRow
		    end if
		    if popItemMagic.ListIndex > 0 then
		      searchParams.Value("itemmagic") = popItemMagic.SelectedRow
		    end if
		    if popItemProficiencies.ListIndex > 0 then
		      searchParams.Value("itemproficiencies") = popItemProficiencies.SelectedRow
		    end if
		    if popItemStealthDisadvantage.ListIndex > 0 then
		      searchParams.Value("itemstealthdisadvantage") = popItemStealthDisadvantage.SelectedRow
		    end if
		    if popItemStrengthRequirement.ListIndex > 0 then
		      searchParams.Value("itemstrengthrequirement") = popItemStrengthRequirement.SelectedRow
		    end if
		    
		    if popItemDetails.ListIndex > 0 then
		      searchParams.Value("itemdetail") = popItemDetails.SelectedRow
		    end if
		    if popItemRarities.ListIndex > 0 then
		      searchParams.Value("itemrarity") = popItemRarities.SelectedRow
		    end if
		    
		    if popItemModifier.ListIndex > 0 then
		      searchParams.Value("itemmodifier") = popItemModifier.SelectedRow
		    end if
		    
		    
		  End Select
		  
		  
		  for each xNode as XMLNode in xNodes
		    var name as String
		    name = xNode.ValueOfNodeWithName("name")
		    
		    var multisources() as String = SourceFromXMLNode( xNode )
		    
		    
		    
		    if searchParams.Lookup("name", "") <> "" then
		      if name.Contains( searchParams.Lookup("name", "") ) then
		        '
		      else
		        Continue
		      end if
		    end if
		    
		    if searchParams.Lookup("source", "") <> "" then
		      if multisources.Contains( searchParams.Lookup("source", "") ) then
		        '
		      else
		        Continue
		      end if
		    end if
		    
		    var nametag as String = searchParams.Lookup("nametag", "")
		    if nametag <> "" then
		      if name.Contains( nametag ) then
		        '
		      else
		        Continue
		      end if
		    end if
		    
		    
		    //
		    Select case Index
		      
		    case 0 // Species
		      if searchParams.Lookup("species", "") <> "" then
		        if name.StartsWith( searchParams.Lookup("species", "") ) then
		          '
		        else
		          Continue
		        end if
		      end if
		      
		      if searchParams.Lookup("speed", "") <> "" then
		        var speed as String = xNode.ValueOfNodeWithName("speed")
		        if speed.Contains( searchParams.Lookup("speed", "") ) then
		          '
		        else
		          Continue
		        end if
		      end if
		      
		    case 2 // Backgrounds
		      var backgroundDescription as String = CommonModule.CollectedTraits( xNode ).Lookup("Description", "")
		      
		      var skillList, toolList, languageList, equipmentList as String
		      skillList = backgroundDescription.Match( "Skill Proficiencies:(.*?)\n", 1 )
		      toolList = backgroundDescription.Match( "Tool Proficiencies:(.*?)\n", 1 )
		      languageList = backgroundDescription.Match( "Languages:(.*?)\n", 1 )
		      equipmentList = backgroundDescription.Match( "Equipment:(.*?)\n", 1 )
		      
		      if searchParams.Lookup("skill", "") <> "" then
		        if skillList.Contains( searchParams.Lookup("skill", "") ) then
		          '
		        else
		          Continue
		        end if
		      end if
		      
		      if searchParams.Lookup("tool", "") <> "" then
		        if toolList.Contains( searchParams.Lookup("tool", "") ) then
		          '
		        else
		          Continue
		        end if
		      end if
		      
		      if searchParams.Lookup("language", "") <> "" then
		        if languageList.Contains( searchParams.Lookup("language", "") ) then
		          '
		        else
		          Continue
		        end if
		      end if
		      
		      
		    case 3 // Equipment
		      if searchParams.Lookup("itemtype", "") <> "" then
		        if xNode.ValueOfNodeWithName( "type" ) = searchParams.Lookup("itemtype", "") then
		          '
		        else
		          Continue
		        end if
		      end if
		      
		      if searchParams.Lookup("damagetype", "") <> "" then
		        if xNode.ValueOfNodeWithName( "dmgType" ) = searchParams.Lookup("damagetype", "") then
		          '
		        else
		          Continue
		        end if
		      end if
		      
		      if searchParams.Lookup("itemproperties", "") <> "" then
		        var properties() as String = xNode.ValueOfNodeWithName("property").SplitString(",")
		        
		        if properties.Contains( searchParams.Lookup("itemproperties","") ) then 'xNode.ValueOfNodeWithName( "dmgType", searchParams.Lookup("damagetype", "") then
		          '
		        else
		          Continue
		        end if
		      end if
		      
		      
		      if searchParams.Lookup("itemarmorclass", "") <> "" then
		        if xNode.ValueOfNodeWithName("ac") = searchParams.Lookup("itemarmorclass", "") then
		          '
		        else
		          Continue
		        end if
		      end if
		      
		      
		      if searchParams.Lookup("itemmagic", "") <> "" then
		        var magical as String = xNode.ValueOfNodeWithName("magic")
		        
		        if magical <> "" then
		          var s as String
		        end if
		        
		        if searchParams.Lookup("itemmagic", "") = "YES" then
		          if magical = "Y" or magical = "1" or magical = "YES" then
		            '
		          else
		            Continue
		          end if
		          
		        elseif searchParams.Lookup("itemmagic", "") = "NO" then
		          if magical = "N" or magical = "0" or magical = "NO" or magical = "" then
		            '
		          else
		            Continue
		          end if
		          
		        end if // @END itemmagic = YES / NO
		        
		      end if // searchparams.lookup itemmagic
		      
		      if searchParams.Lookup("itemproficiencies","") <> "" then
		        var itemDescription as String = XMLModule.DescriptionFromNode( xNode )
		        
		        var ProficienciesList() as String
		        ProficienciesList = itemDescription.Match( "Proficiency:(.*?)(\n|\Z)", 1 ).SplitString(",")
		        
		        if ProficienciesList.Contains( searchParams.Lookup("itemproficiencies","") ) then
		          '
		        else
		          Continue
		        end if
		      end if
		      
		      
		      if searchParams.Lookup("itemstealthdisadvantage", "") <> "" then
		        var stealthdisadvantage as String = xNode.ValueOfNodeWithName("stealth")
		        
		        if searchParams.Lookup("itemstealthdisadvantage", "") = "YES" then
		          if stealthdisadvantage = "Y" or stealthdisadvantage = "1" or stealthdisadvantage = "YES" then
		            '
		          else
		            Continue
		          end if
		          
		        elseif searchParams.Lookup("itemstealthdisadvantage", "") = "NO" then
		          if stealthdisadvantage = "N" or stealthdisadvantage = "0" or stealthdisadvantage = "NO" or stealthdisadvantage = "" then
		            '
		          else
		            Continue
		          end if
		          
		        end if // @END itemmagic = YES / NO
		        
		      end if // searchparams.lookup itemmagic
		      
		      
		      if searchParams.Lookup("itemstrengthrequirement", "") <> "" then
		        if xNode.ValueOfNodeWithName("strength") = searchParams.Lookup("itemstrengthrequirement", "") then
		          '
		        else
		          Continue
		        end if
		      end if
		      
		      
		      if searchParams.Lookup("itemdetail", "") <> "" then
		        if xNode.ValueOfNodeWithName("detail").Contains( searchParams.Lookup("itemdetail", "") ) then
		          '
		        else
		          Continue
		        end if
		      end if
		      if searchParams.Lookup("itemrarity", "") <> "" then
		        
		        if xNode.ValueOfNodeWithName("detail").Contains( searchParams.Lookup("itemrarity", "") ) then
		          
		          if searchParams.Lookup("itemrarity", "") = "rare" and xNode.ValueOfNodeWithName("detail").Contains("very rare") then
		            Continue
		          elseif searchParams.Lookup("itemrarity", "") = "common" and xNode.ValueOfNodeWithName("detail").Contains("uncommon") then
		            Continue
		          else
		            'Continue
		          end if
		          '
		        else
		          Continue
		        end if
		      end if
		      
		      
		      if searchParams.Lookup("itemmodifier", "") <> "" then
		        var modifiers() as String
		        
		        for each xChild as XMLNode in xNode.Children
		          if xChild <> Nil and xChild.FirstChild <> Nil and xChild.Name = "modifier" then
		            modifiers.Add xChild.FirstChild.Value
		          end if
		        next
		        
		        if modifiers.Contains( searchParams.Lookup("itemmodifier", "") ) then
		          
		        else
		          Continue
		        end if
		      end if
		      
		      
		    End Select
		    
		    
		    'for each source as string in multisources
		    'source = source.ReplaceAll( "&", "&&" )
		    '
		    'if NOT ContentSources.Contains( source) then
		    'ContentSources.Append source
		    'end if
		    '
		    'if index = 0 and popSources.IndexOfItemWithTitle( source ) = -1 then
		    'popSources.AddRow source
		    'end if
		    'next
		    
		    'var firstSource as String
		    'if multisources.LastIndex > -1 then
		    'firstSource = multisources(0)
		    'end if
		    lstObjects(Index).AddRow name, StringFromArray( multisources, "|" )
		    lstObjects(Index).Sort
		  next
		  
		  lblListCount(Index).Text = Str( lstObjects(Index).RowCount )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CoresForCategory(currentCategory as String, SourcePath as String) As SourceCore()
		  
		  var sourceFolder as new FolderItem( sourcePath, FolderItem.PathModes.Native )
		  
		  var categoryCores() as SourceCore
		  
		  for each core as SourceCore in CollectedCores
		    var category as String = core.SourceInfo.Lookup( "category", "Uncategorized " + sourceFolder.Name )
		    var parentFolder as FolderItem = core.ParentFolder
		    
		    var parentPath as String = parentFolder.NativePath
		    if NOT parentPath.EndsWith(".xml") then
		      parentPath = parentPath + "/"
		    end if
		    
		    if category = currentCategory and parentPath.StartsWith( sourcePath ) then
		      categoryCores.Add core
		    end if
		    
		  next
		  
		  Return categoryCores
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub FillParameters(Index as Integer)
		  var timeF as new TimeFunction("FillParapmeters( " + Str(Index) + " )")
		  
		  
		  'for index as Integer = 0 to 6
		  'popSources(index).DeleteAllRows
		  'popSources(index).AddRow "All"
		  'popSources(index).AddRow "-"
		  'popSources(index).SelectedRowIndex = 0
		  'next
		  
		  var xNodes() as XMLNode
		  
		  Select case Index
		    
		  case 0 // Species
		    xNodes = CompiledCompendium.Species
		  case 1 // Classes
		    xNodes = CompiledCompendium.Classes
		  case 2 // Backgrounds
		    xNodes = CompiledCompendium.Backgrounds
		  case 3 // Items
		    xNodes = CompiledCompendium.Items
		  case 4 // Feats
		    xNodes = CompiledCompendium.Feats
		  case 5 // Spells
		    xNodes = CompiledCompendium.Spells
		  case 6 // Creatures
		    xNodes = CompiledCompendium.Creatures
		    
		  End Select
		  
		  // Sources
		  var collectedSources() as String = CompiledCompendium.GetSources( xNodes )
		  
		  collectedSources.Sort
		  for each source as string in collectedSources
		    popSources(Index).AddRow source.ReplaceAll("&amp;", "&").ReplaceAll("&", "&&")
		  next
		  
		  // Go through each node in compendium.type.xNodes
		  
		  var collectedNames(), collectedBaseNames(), collectedTags(), collectedSpeeds(), collectedLanguages(), _
		  collectedItemRarities(), collectedItemACs(), collectedItemStrengths(), collectedItemDetails(), collectedItemModifiers(), collectedItemProficiencies() as string
		  
		  for each xNode as XMLNode in xNodes
		    var Name, Description as String
		    
		    for each xChild as XMLNode in xNode.Children
		      var xValue as String
		      if xChild <> Nil and xChild.FirstChild <> Nil then
		        xValue = xChild.FirstChild.Value.Trim
		      end if
		      
		      Select case xChild.Name
		        
		        // Any
		      case "name"
		        name = xValue
		        if not collectedNames.Contains( xValue ) then
		          collectedNames.Add xValue
		        end if
		        
		      case "text"
		        // Item: Proficiency:
		        Description = Description + EndOfLine + xValue
		      case "description"
		        Description = Description + EndOfLine + xValue
		        
		        // Species
		      case "ability"
		        
		        // Item
		      case "detail" // Type, Rarity
		        var detailLine as String = xValue
		        
		        var Rarity as String = detailLine.Match( "((Uncommon|Common|very rare|rare|legendary|artifact|cursed|varies).*?(\n|\Z))", 1 ).Trim
		        
		        if Rarity <> "" and NOT collectedItemRarities.Contains(Rarity) then
		          collectedItemRarities.Add Rarity
		        end if
		        
		        var detailString as String = detailLine.Replace( Rarity, "" ).Trim
		        if detailString.EndsWith(",") then
		          detailString = detailString.Left( detailString.Length-1 )
		        end if
		        var details() as String' = detailString.SplitString(",")
		        details.Add detailString
		        
		        for each detail as string in details
		          detail = detail.Trim
		          'detail = detail.ReplaceAll("(", "").ReplaceAll(")","")
		          
		          if NOT collectedItemDetails.Contains( detail ) then
		            collectedItemDetails.Add detail
		          end if
		        next
		        
		        'me.BaseMenu.Append new MenuItem( "None", "" )
		        'me.BaseMenu.Append new MenuItem( "-", "" )
		        'me.BaseMenu.Append new MenuItem( "common" )
		        'me.BaseMenu.Append new MenuItem( "uncommon" )
		        'me.BaseMenu.Append new MenuItem( "rare" )
		        'me.BaseMenu.Append new MenuItem( "very rare" )
		        'me.BaseMenu.Append new MenuItem( "legendary" )
		        'me.BaseMenu.Append new MenuItem( "artifact" )
		        'me.BaseMenu.Append new MenuItem( "varies" )
		        '
		        'me.BaseMenu.Append new MenuItem( "-" )
		        'me.BaseMenu.Append new MenuItem( "uncommon (requires attunement)" )
		        'me.BaseMenu.Append new MenuItem( "rare (requires attunement)" )
		        'me.BaseMenu.Append new MenuItem( "very rare (requires attunement)" )
		        'me.BaseMenu.Append new MenuItem( "legendary (requires attunement)" )
		        'me.BaseMenu.Append new MenuItem( "artifact (requires attunement)" )
		        'me.BaseMenu.Append new MenuItem( "varies (requires attunement)" )
		        'me.BaseMenu.Append new MenuItem( "-" )
		        'me.BaseMenu.Append new MenuItem( "cursed (requires attunement)" )
		        
		      case "magic"
		      case "weight"
		      case "value"
		      case "ac"
		        if NOT collectedItemACs.Contains(xValue) then
		          collectedItemACs.Add xValue
		        end if
		        
		      case "strength"
		        if NOT collectedItemStrengths.Contains(xValue) then
		          collectedItemStrengths.Add xValue
		        end if
		        
		      case "stealth"
		      case "dmg1"
		      case "dmg2"
		      case "dmgType"
		      case "range"
		      case "property"
		        
		        // Item, Feat
		      case "modifier"
		        Select case Index
		          
		        case 3
		          if NOT collectedItemModifiers.Contains(xValue) then
		            collectedItemModifiers.Add xValue
		          end if
		          
		        End Select
		        
		        // Item, Spell
		      case "roll"
		        
		        // Feat, Class, Background
		      case "proficiency"
		        'var multiProfs() as String = SplitString( xValue, "," )
		        'for each prof as String in multiProfs
		        'if NOT collectedProficiencies.Contains( prof ) then
		        'collectedProficiencies.Add prof
		        'end if
		        'next
		        
		        
		        // Class
		      case "hd"
		      case "slotsReset"
		      case "wealth"
		      case "armor" // Proficiency
		      case "weapons" // Proficiency
		      case "tools" // Proficiency
		      case "numSkills"
		        
		        // Class, Species
		      case "spellAbility"
		        
		        // Spell
		      case "level"
		      case "school"
		      case "ritual"
		      case "time"
		      case "range"
		      case "components"
		      case "duration"
		      case "classes"
		        
		        // Creature
		      case "sortname" 'Unofficial
		      case "ancestry" 'Unofficial
		      case "npc" 'Unofficial
		      case "alignment"
		      case "hp"
		      case "init"
		      case "str"
		      case "dex"
		      case "con"
		      case "int"
		      case "wis"
		      case "cha"
		      case "save"
		      case "skill"
		      case "vulnerable"
		      case "resist"
		      case "immune"
		      case "conditionImmune"
		      case "senses"
		      case "passive" // Perception
		      case "languages"
		      case "cr"
		      case "spells"
		      case "slots"
		      case "environment"
		        'case "trait"
		      case "action"
		      case "reaction"
		      case "legendary"
		        
		        // Species, Creatures
		      case "size"
		      case "speed"
		        if NOT collectedSpeeds.Contains( xValue ) then
		          collectedSpeeds.Add xValue
		        end if
		        
		        // Item, Creatures
		      case "type"
		      case "ac"
		        
		        
		        // Class, Background, Creature
		      case "trait"
		        var traitDescription as String = CommonModule.CollectedTraits( xNode ).Lookup( "Description", "" )
		        
		        if Index = 2 then // Background
		          'if xNode.ValueOfNodeWithName("name") = "Description" then
		          var backgroundDescription as String = traitDescription
		          
		          
		          var LanguagesList as String = backgroundDescription.Match( "Languages:(.*?)\n", 1 )
		          LanguagesList = LanguagesList.ReplaceAllRegEx( "(Choose.*?(from|of|between|either))", "" )
		          
		          var languages() as String
		          if LanguagesList.Contains( " and " ) then
		            'Languages = SplitString( LanguagesList, " and " )
		          else
		            Languages  = LanguagesList.ReplaceAll(" or ", ",").SplitString( "," )
		            'languages = LanguagesList.SplitString(",")
		          end if
		          
		          
		          for each language as String in languages
		            // Cleaning
		            if language.StartsWith("or ") then
		              language = language.Replace("or ", "").Trim
		            end if
		            language = language.Replace(" recommended)", "")
		            'language = language.ReplaceAllRegEx("\(.*?\)", "")
		            'language = language.ReplaceAll("(","").ReplaceAll(")","").Trim
		            language = language.Replace("You can speak as well as understand ", "")
		            
		            if NOT collectedLanguages.Contains( language ) _
		              and NOT language.Contains("(") and NOT language.Contains(")") _
		              and NOT language.Contains("Choose") _
		              and NOT language.Contains("One of") _
		              and NOT language.Contains("One Racial") _
		              and NOT language.StartsWith("Other ") _
		              and NOT language.Contains("Atleast one") _
		              and NOT language.Contains("of your Choice") _
		              and NOT language.StartsWith("which ") _
		              and NOT language.StartsWith("You only speak ") _
		              and NOT language.Contains("depending on") _
		              then
		              collectedLanguages.Add language
		            end if
		          next
		          
		          
		          
		          'var EquipmentList as String = backgroundDescription.Match( "Equipment:(.*?)\n", 1 )
		          'var Equipments() as String = EquipmentList.SplitString(",")
		          '
		          'for each equipment as string in Equipments
		          'if NOT collectedEquipments.Contains( equipment ) then
		          'collectedEquipments.Add equipment
		          'end if
		          'next
		          
		        end if
		        'end if
		        
		        
		      End Select
		      
		    next // @NEXT xChild
		    
		    
		    // Name manipulations
		    var tagMatchingString as string = "\((.*?\))\)|\((.*?)\)|\[(.*?)\]"
		    
		    var nameTags() as String = name.MatchAll( tagMatchingString )
		    var CleanedName as String = name.ReplaceAllRegEx( tagMatchingString )
		    
		    
		    if Index = 0 then
		      var baseName as string = CleanedName
		      if baseName.Contains(",") then
		        baseName = baseName.NthField(",", 1)
		      end if
		      if baseName.Contains(" of ") then
		        baseName = baseName.NthField(" of ", 1)
		      end if
		      baseName = Trim( baseName )
		      
		      
		      if baseName <> "" AND NOT collectedBaseNames.Contains( baseName ) then
		        collectedBaseNames.Add baseName
		      end if
		    end if
		    
		    for each Tag as string in nameTags
		      if tag <> "" AND NOT collectedTags.Contains( Tag ) then
		        collectedTags.Add Tag
		      end if
		    next
		    
		    if Index = 3 then
		      if Description <> "" and Description.Contains("Proficiency:") then
		        var proficienciesLine as String = Description.Match("Proficiency:(.*?)(\n|\Z)", 1)
		        var proficiencies() as String = proficienciesLine.SplitString(",")
		        for each Proficiency as string in proficiencies
		          if NOT collectedItemProficiencies.Contains( Proficiency ) then
		            collectedItemProficiencies.Add Proficiency
		          end if
		        next
		      else
		        var s as String
		      end if
		    end if
		    
		    //
		    'Select case Index
		    '
		    'case 2 // Backgrounds
		    'var ProfString as String = Description.Match("
		    '
		    'End Select
		    
		    
		  next // @NEXT xNode in xNodes
		  
		  
		  Select case Index
		    
		  case 0
		    collectedBaseNames.Sort
		    popSpecies.AddRows collectedBaseNames
		    
		    collectedSpeeds.Sort
		    popSpeciesSpeed.AddRows collectedSpeeds
		    
		  case 2
		    collectedLanguages.Sort
		    for each language as string in collectedLanguages
		      if popBackgroundProficienciesLanguages.IndexOfItemWithTitle( language ) = -1 then
		        popBackgroundProficienciesLanguages.AddRow language
		      end if
		    next
		    
		  case 3
		    'collectedItemRarities.Sort
		    'popItemRarities.AddRows collectedItemRarities
		    
		    collectedItemACs.Sort
		    popItemArmorClass.AddRows collectedItemACs
		    
		    collectedItemStrengths.Sort
		    popItemStrengthRequirement.AddRows collectedItemStrengths
		    
		    collectedItemDetails.Sort
		    for each detail as string in collectedItemDetails
		      if popItemDetails.IndexOfItemWithTitle( detail ) = -1 then
		        popItemDetails.AddRow detail
		      end if
		    next
		    'popItemDetails.AddRows collectedItemDetails
		    
		    collectedItemModifiers.Sort
		    popItemModifier.AddRows collectedItemModifiers
		    
		    collectedItemProficiencies.Sort
		    popItemProficiencies.AddRows collectedItemProficiencies
		    
		    
		    // Filter magical variant of items
		    'for each name as string in collectedNames
		    'var weapons as String = StringFromArray( DnDArrays.BasicWeapons, "|" )
		    '
		    'var magicalItemVariant as String = name.Match( "((\w*? (" +weapons+ "))|(" +weapons+ ") \w*?)", 1 )
		    '
		    'if magicalItemVariant <> "" then
		    'var AAAA as string = magicalItemVariant
		    'var s as string
		    'end if
		    'next
		    
		    
		  End Select
		  
		  collectedTags.Sort
		  for each tag as string in collectedTags
		    var cleanedNameBrew as String = tag
		    cleanedNameBrew = cleanedNameBrew.ReplaceAll("(HB)", "Homebrew")
		    cleanedNameBrew = cleanedNameBrew.ReplaceAll("(UA", "(Unearthed Arcana")
		    cleanedNameBrew = cleanedNameBrew.ReplaceAll("(", "").ReplaceAll(")","")
		    cleanedNameBrew = cleanedNameBrew.ReplaceAll("[", "").ReplaceAll("]","")
		    
		    popTags(index).AddRowWithTagAndPicture cleanedNameBrew, tag
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub FilterList(Index as Integer)
		  
		  Select case index
		    
		  case 0
		    BuildList( CompiledCompendium.Species, 0)
		  case 1
		    BuildList( CompiledCompendium.Classes, 1)
		  case 2
		    BuildList( CompiledCompendium.Backgrounds, 2)
		  case 3
		    BuildList( CompiledCompendium.Items, 3)
		  case 4
		    BuildList( CompiledCompendium.Feats, 4)
		  case 5
		    BuildList( CompiledCompendium.Spells, 5)
		  case 6
		    BuildList( CompiledCompendium.Creatures, 6)
		    
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadCompendium()
		  var timeF as new TimeFunction("LoadCompendium()")
		  
		  var t as new TimeFunction( "CompendiumBuilder.LoadList()" )
		  
		  var cCompendium as new Compendium
		  
		  
		  // Get Sources
		  var sourceFolders() as String = CommonModule.GetSourceFolderPaths
		  
		  var Count as Integer = 0
		  thrLoader.AddUserInterfaceUpdate( new Pair( "ProgressMax", sourceFolders.LastIndex+1 ) )
		  
		  
		  
		  var jDictionary as new JSONItem
		  for each sourcePath as String in sourceFolders
		    if NOT sourcePath.EndsWith("/") then
		      sourcePath = sourcePath + "/"
		    end if
		    var source as FolderItem = new FolderItem( sourcePath, FolderItem.PathTypeNative )
		    'var sourcePath as string = source.NativePath + "/"
		    
		    thrLoader.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + source.Name ) )
		    thrLoader.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		    
		    var parentFolders() as FolderItem, parentfolderPaths() as String
		    
		    // add source folder if applicable
		    var parentSourceCore as new SourceCore( source )
		    if parentSourceCore.XMLFiles <> Nil and parentSourceCore.XMLFiles.Count > 0 then
		      parentfolderPaths.Add source.NativePath
		      parentfolders.Add source
		    end if
		    
		    // XML Files
		    var xmlFiles() as FolderItem
		    FindXMLFiles( source, xmlFiles )
		    
		    // parent Folders
		    for each file as FolderItem in xmlFiles
		      if file.Name.Contains("#Deprecated") or file.Parent.Name.StartsWith("#") or file.Parent.Name.Contains("#Deprecated") or file.NativePath.Contains("Legacy_2014") then
		        Continue
		      end if
		      if NOT parentfolderPaths.Contains( file.Parent.NativePath ) then
		        parentfolderPaths.Add file.Parent.NativePath
		        parentfolders.Add file.Parent
		        
		        'thread1.AddUserInterfaceUpdate( new Pair( "Message", file.Name ) )
		      end if
		    next
		    
		    thrLoader.AddUserInterfaceUpdate( new Pair( "ProgressMax", parentFolders.LastIndex+1 ) )
		    
		    
		    
		    // Add information
		    var cores() as SourceCore
		    var CoreRulebooks(), Supplements(), UnearthedArcana(), Homebrew(), OtherCategories(), Uncategorized() as String
		    
		    for each folderparent as FolderItem in parentfolders
		      thrLoader.AddUserInterfaceUpdate( new Pair( "Message", "Searching: " + folderparent.Name ) )
		      'Count = Count +1
		      'thread1.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		      
		      var core as new SourceCore( folderparent )
		      cores.Add core
		      
		      var category as String = core.SourceInfo.Lookup( "category", "Uncategorized " + source.Name )
		      
		      if category.Contains( "Homebrew" ) then
		        if NOT Homebrew.Contains( category ) then
		          Homebrew.Add category
		        end if
		        
		      elseif category.Contains( "Unearthed Arcana" ) then
		        if NOT UnearthedArcana.Contains( category ) then
		          UnearthedArcana.Add category
		        end if
		        
		      elseif category.Contains("supplement") then
		        if NOT Supplements.Contains( category ) then
		          Supplements.Add category
		        end if
		        
		      elseif category.Contains( "core" ) then
		        if NOT CoreRulebooks.Contains( category ) then
		          CoreRulebooks.Add category
		        end if
		        
		      elseif category.Contains( "Uncategorized" ) then
		        if NOT Uncategorized.Contains( category ) then
		          Uncategorized.Add category
		        end if
		        
		      else
		        if NOT OtherCategories.Contains( category ) then
		          OtherCategories.Add category
		        end if
		        
		        
		      end if
		      
		      'var name, pubdate, publisher, category as String
		      'name = core.SourceInfo.Lookup( "name", folderparent.Name )
		      'pubdate = core.SourceInfo.Lookup( "pubdate", "" )
		      'publisher = core.SourceInfo.Lookup( "publisher", "" )
		      'category = core.SourceInfo.Lookup( "category", "" )
		      
		      'cores.Add core
		      'lstSources.AddRow name, category, publisher, pubdate
		      'lstSources.RowTagAt( lstSources.LastAddedRowIndex ) = core
		    next
		    
		    thrLoader.AddUserInterfaceUpdate( new Pair( "Message", "Sorting information..." ) )
		    
		    // sort by publishers
		    var publishers() as String
		    for each core as SourceCore in cores
		      publishers.Add core.SourceInfo.Lookup("publisher", "").StringValue
		    next
		    publishers.SortWith( cores )
		    
		    // sort by pubdates
		    var PubDates() as String
		    for each core as SourceCore in cores
		      PubDates.Add core.SourceInfo.Lookup("pubdate", "").StringValue
		    next
		    PubDates.SortWith( cores )
		    
		    // Save sorted cores
		    'CollectedCores = cores
		    for each core as SourceCore in cores
		      thrLoader.AddUserInterfaceUpdate( new Pair( "Message", "Adding cores: " + core.ParentFolder.Name ) )
		      CollectedCores.Add core
		    next
		    
		    // Sort by Categories
		    'for each core as SourceCore in cores
		    '
		    '
		    'next
		    
		    var unifiedCategories() as String
		    
		    CoreRulebooks.Sort
		    Supplements.Sort
		    OtherCategories.Sort
		    Homebrew.Sort
		    UnearthedArcana.Sort
		    Uncategorized.Sort
		    
		    'var Count as Integer = CoreRulebooks.LastIndex+1 + Supplements.LastIndex+1 + OtherCategories.LastIndex+1 + Homebrew.LastIndex+1 + UnearthedArcana.LastIndex+1 + Uncategorized.LastIndex+1
		    
		    'thread1.AddUserInterfaceUpdate( new Pair( "ProgressMax", Count ) )
		    
		    for each category as String in CoreRulebooks
		      unifiedCategories.Add category
		      
		      var categoryCores() as SourceCore = CoresForCategory( category, sourcePath )
		      for each core as SourceCore in categoryCores
		        thrLoader.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + core.ParentFolder.Name ) )
		        thrLoader.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		        
		        for each xFile as FolderItem in core.XMLFiles
		          cCompendium.LoadXMLFile xFile
		        next
		      next
		      
		    next
		    
		    for each category as String in Supplements
		      unifiedCategories.Add category
		      
		      var categoryCores() as SourceCore = CoresForCategory( category, sourcePath )
		      for each core as SourceCore in categoryCores
		        thrLoader.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + core.ParentFolder.Name ) )
		        thrLoader.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		        
		        for each xFile as FolderItem in core.XMLFiles
		          cCompendium.LoadXMLFile xFile
		        next
		      next
		      
		    next
		    
		    for each category as String in OtherCategories
		      unifiedCategories.Add category
		      
		      var categoryCores() as SourceCore = CoresForCategory( category, sourcePath )
		      for each core as SourceCore in categoryCores
		        thrLoader.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + core.ParentFolder.Name ) )
		        thrLoader.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		        
		        for each xFile as FolderItem in core.XMLFiles
		          cCompendium.LoadXMLFile xFile
		        next
		      next
		      
		    next
		    
		    for each category as String in Homebrew
		      unifiedCategories.Add category
		      
		      var categoryCores() as SourceCore = CoresForCategory( category, sourcePath )
		      for each core as SourceCore in categoryCores
		        thrLoader.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + core.ParentFolder.Name ) )
		        thrLoader.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		        
		        for each xFile as FolderItem in core.XMLFiles
		          cCompendium.LoadXMLFile xFile
		        next
		      next
		      
		    next
		    
		    for each category as String in UnearthedArcana
		      unifiedCategories.Add category
		      
		      var categoryCores() as SourceCore = CoresForCategory( category, sourcePath )
		      for each core as SourceCore in categoryCores
		        thrLoader.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + core.ParentFolder.Name ) )
		        thrLoader.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		        
		        for each xFile as FolderItem in core.XMLFiles
		          cCompendium.LoadXMLFile xFile
		        next
		      next
		      
		    next
		    
		    for each category as String in Uncategorized
		      'thread1.AddUserInterfaceUpdate( new Pair( "Message", source.Name + " :: " + category ) )
		      
		      unifiedCategories.Add category
		      
		      var categoryCores() as SourceCore = CoresForCategory( category, sourcePath )
		      for each core as SourceCore in categoryCores
		        thrLoader.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + core.ParentFolder.Name ) )
		        thrLoader.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		        
		        for each xFile as FolderItem in core.XMLFiles
		          cCompendium.LoadXMLFile xFile
		        next
		      next
		      
		    next
		    
		    
		    thrLoader.AddUserInterfaceUpdate( new Pair( "Message", "Finished compiling the compendium!" ) )
		    CompiledCompendium = cCompendium
		    
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CollectedCores() As SourceCore
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CompiledCompendium As Compendium
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ContentSources() As String
	#tag EndProperty


#tag EndWindowCode

#tag Events cvsBtnSpecies
	#tag Event
		Sub Action()
		  ppViewer.SelectedPanelIndex = 1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsBtnClasses
	#tag Event
		Sub Action()
		  ppViewer.SelectedPanelIndex = 2
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsBtnBackground
	#tag Event
		Sub Action()
		  ppViewer.SelectedPanelIndex = 3
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsBtnEquipment
	#tag Event
		Sub Action()
		  ppViewer.SelectedPanelIndex = 4
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsBtnFeats
	#tag Event
		Sub Action()
		  ppViewer.SelectedPanelIndex = 5
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsBtnSpells
	#tag Event
		Sub Action()
		  ppViewer.SelectedPanelIndex = 6
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsBtnCreatures
	#tag Event
		Sub Action()
		  ppViewer.SelectedPanelIndex = 7
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
#tag Events cvsBtnReload
	#tag Event
		Sub Action()
		  
		  if thrLoader.ThreadState = Thread.ThreadStates.NotRunning then
		    ppViewer.SelectedPanelIndex = 0
		    
		    Redim CollectedCores( -1 )
		    CompiledCompendium = new Compendium
		    Redim ContentSources( -1 )
		    
		    cvsBtnReload.Enabled = False
		    cvsBtnBackground.Enabled = False
		    cvsBtnClasses.Enabled = False
		    cvsBtnCreatures.Enabled = False
		    cvsBtnEquipment.Enabled = False
		    cvsBtnFeats.Enabled = False
		    cvsBtnSpecies.Enabled = False
		    cvsBtnSpells.Enabled = False
		    
		    thrLoader.Start
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ppViewer
	#tag Event
		Sub Close()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstObjects
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
	#tag Event
		Function PaintCellText(index as Integer, g as Graphics, row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		  g.Bold = True
		  g.DrawText me.CellTextAt( row, 0 ), 4, g.TextAscent + (g.Height/2) - (g.TextHeight/2) - (g.TextHeight/2) - 2
		  
		  g.Bold = False
		  g.TextSize = 12
		  g.DrawingColor = Color.DisabledTextColor
		  g.DrawText me.CellTextAt( row, 1 ).NthField("|", 1), 4, g.TextAscent + (g.Height/2) - (g.TextHeight/2) + (g.TextHeight/2) + 2
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cvsSplash
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  
		  var factor as Double = Max( g.Width/cv_background.Width, g.Height/cv_background.Height )
		  
		  var newWidth, newHeight as Double
		  newWidth = cv_background.Width * factor
		  newHeight = cv_background.Height * factor
		  
		  g.DrawPicture cv_background, (g.Width/2) - (newWidth/2), (g.Height/2) - (newHeight/2), newWidth, newHeight,   0, 0, cv_background.Width, cv_background.Height
		  
		  g.DrawPicture cv_banner, 0, g.Height - cv_banner.Height - 14
		  g.DrawPicture cv_title, (g.Width/2) - (cv_title.Width/2), 60
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popSources
	#tag Event
		Sub Change(index as Integer)
		  FilterList(index)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events srchField
	#tag Event
		Sub TextChanged(index as Integer)
		  
		  Select case index
		    
		  case 0
		    BuildList( CompiledCompendium.Species, 0)
		  case 1
		    BuildList( CompiledCompendium.Classes, 1)
		  case 2
		    BuildList( CompiledCompendium.Backgrounds, 2)
		  case 3
		    BuildList( CompiledCompendium.Items, 3)
		  case 4
		    BuildList( CompiledCompendium.Feats, 4)
		  case 5
		    BuildList( CompiledCompendium.Spells, 5)
		  case 6
		    BuildList( CompiledCompendium.Creatures, 6)
		    
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popSpecies
	#tag Event
		Sub Change()
		  FilterList(0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popTags
	#tag Event
		Sub Change(index as Integer)
		  FilterList(index)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popSpeciesSpeed
	#tag Event
		Sub Change()
		  BuildList( CompiledCompendium.Species, 0 )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popBackgroundProficienciesSkills
	#tag Event
		Sub Change()
		  BuildList( CompiledCompendium.Backgrounds, 2 )
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.AddRows DnDArrays.Skills
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popBackgroundProficienciesTools
	#tag Event
		Sub Change()
		  BuildList( CompiledCompendium.Backgrounds, 2 )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popBackgroundProficienciesLanguages
	#tag Event
		Sub Change()
		  BuildList( CompiledCompendium.Backgrounds, 2 )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popItemType
	#tag Event
		Sub Open()
		  me.AddRowWithTagAndPicture( "Melee Weapon", "M" )
		  me.AddRowWithTagAndPicture( "Ranged Weapon", "R" )
		  me.AddRowWithTagAndPicture( "Ammunition", "A" )
		  popItemType.AddRow "-"
		  me.AddRowWithTagAndPicture( "Light Armor", "LA" )
		  me.AddRowWithTagAndPicture( "Medium Armor", "MA" )
		  me.AddRowWithTagAndPicture( "Heavy Armor", "HA" )
		  me.AddRowWithTagAndPicture( "Shield", "S" )
		  popItemType.AddRow "-"
		  me.AddRowWithTagAndPicture( "Wondrous Item", "W" )
		  popItemType.AddRow "-"
		  me.AddRowWithTagAndPicture( "Rod", "RD" )
		  me.AddRowWithTagAndPicture( "Staff", "ST" )
		  me.AddRowWithTagAndPicture( "Wand", "WD" )
		  popItemType.AddRow "-"
		  me.AddRowWithTagAndPicture( "Ring", "RG" )
		  me.AddRowWithTagAndPicture( "Potion", "P" )
		  me.AddRowWithTagAndPicture( "Scroll", "SC" )
		  popItemType.AddRow "-"
		  me.AddRowWithTagAndPicture( "Adventuring Gear", "G" )
		  me.AddRowWithTagAndPicture( "Valuables", "$" )
		  'popItemType.AddRow "-"
		  'popItemType.AddRowWithTagAndPicture( "No type?", "" )
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  FilterList(3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popItemMagic
	#tag Event
		Sub Change()
		  FilterList(3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popItemArmorClass
	#tag Event
		Sub Change()
		  FilterList(3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popItemStrengthRequirement
	#tag Event
		Sub Change()
		  FilterList(3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popItemStealthDisadvantage
	#tag Event
		Sub Change()
		  FilterList(3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popItemDamageTypes
	#tag Event
		Sub Open()
		  me.AddRowWithTagAndPicture( "Bludgeoning", "B" )
		  me.AddRowWithTagAndPicture( "Piercing", "P" )
		  me.AddRowWithTagAndPicture( "Slashing", "S" )
		  me.AddRow "-"
		  me.AddRowWithTagAndPicture( "Acid", "A" )
		  me.AddRowWithTagAndPicture( "Cold", "C" )
		  me.AddRowWithTagAndPicture( "Fire", "F" )
		  me.AddRowWithTagAndPicture( "Force", "FC" )
		  me.AddRowWithTagAndPicture( "Lightning", "L" )
		  me.AddRowWithTagAndPicture( "Necrotic", "N" )
		  me.AddRowWithTagAndPicture( "Poison", "PS" )
		  me.AddRowWithTagAndPicture( "Psychic", "PY" )
		  me.AddRowWithTagAndPicture( "Radiant", "R" )
		  me.AddRowWithTagAndPicture( "Thunder", "T" )
		  'me.AddRow "-"
		  'me.AddRowWithTagAndPicture( "None?", "" )
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  FilterList(3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popItemProperties
	#tag Event
		Sub Open()
		  me.AddRowWithTagAndPicture( "Ammunition", "A" )
		  me.AddRowWithTagAndPicture( "Finesse", "F" )
		  me.AddRowWithTagAndPicture( "Heavy", "H" )
		  me.AddRowWithTagAndPicture( "Light", "L" )
		  me.AddRowWithTagAndPicture( "Loading", "LD" )
		  me.AddRowWithTagAndPicture( "Reach", "R" )
		  me.AddRowWithTagAndPicture( "Special", "S" )
		  me.AddRowWithTagAndPicture( "Thrown", "T" )
		  me.AddRowWithTagAndPicture( "Two-Handed", "2H" )
		  me.AddRowWithTagAndPicture( "Versatile", "V" )
		  me.AddRowWithTagAndPicture( "Martial", "M" )
		  me.AddRow "-"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  FilterList(3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popItemProficiencies
	#tag Event
		Sub Change()
		  FilterList(3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popItemRarities
	#tag Event
		Sub Change()
		  FilterList(3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popItemDetails
	#tag Event
		Sub Change()
		  FilterList(3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popItemModifier
	#tag Event
		Sub Change()
		  FilterList(3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events thrLoader
	#tag Event
		Sub Run()
		  LoadCompendium
		  me.AddUserInterfaceUpdate new Pair( "Finished", "" )
		End Sub
	#tag EndEvent
	#tag Event
		Sub UserInterfaceUpdate(data() as Dictionary)
		  
		  for index as Integer = 0 to data.LastIndex
		    
		    if data(index).Key(0).StringValue = "Finished" then
		      pgWheel.Visible = False
		      lblMessage.Visible = False
		      
		      
		      BuildList( CompiledCompendium.Species, 0)
		      FillParameters(0)
		      BuildList( CompiledCompendium.Classes, 1)
		      FillParameters(1)
		      BuildList( CompiledCompendium.Backgrounds, 2)
		      FillParameters(2)
		      BuildList( CompiledCompendium.Items, 3)
		      FillParameters(3)
		      BuildList( CompiledCompendium.Feats, 4)
		      FillParameters(4)
		      BuildList( CompiledCompendium.Spells, 5)
		      FillParameters(5)
		      BuildList( CompiledCompendium.Creatures, 6)
		      FillParameters(6)
		      
		      
		      cvsBtnReload.Enabled = True
		      cvsBtnBackground.Enabled = True
		      cvsBtnClasses.Enabled = True
		      cvsBtnCreatures.Enabled = True
		      cvsBtnEquipment.Enabled = True
		      cvsBtnFeats.Enabled = True
		      cvsBtnSpecies.Enabled = True
		      cvsBtnSpells.Enabled = True
		      
		      ppViewer.SelectedPanelIndex = 1
		    elseif data(index).Key(0).StringValue = "Message" then
		      lblMessage.Text = data(0).Value( data(0).Key(0) )
		      
		    elseif data(index).Key(0).StringValue = "ProgressMax" then
		      pgBar.MaximumValue = data(0).Value( data(0).Key(0) ).IntegerValue
		      pgBar.Value = 0
		      
		    elseif data(index).Key(0).StringValue = "ProgressUpdate" then
		      pgBar.Value = pgBar.Value +1
		      
		    else
		      Break
		    end if
		    
		  next
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
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
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
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
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
#tag EndViewBehavior
