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
   Begin SearchField SearchField1
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowRecentItems=   False
      ClearMenuItemValue=   "Clear"
      Enabled         =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   159
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumRecentItems=   -1
      RecentItemsValue=   "Recent Searches"
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      Tooltip         =   ""
      Top             =   -84
      Transparent     =   False
      Visible         =   True
      Width           =   100
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
      Value           =   0
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
         Height          =   652
         Index           =   0
         InitialParent   =   "ppViewer"
         InitialValue    =   ""
         Italic          =   False
         Left            =   0
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
         Width           =   300
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
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
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
         Left            =   0
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
         Width           =   300
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
         Left            =   0
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
         Width           =   300
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
         Left            =   0
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
         Width           =   300
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
         Left            =   0
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
         Width           =   300
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
         Left            =   0
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
         Width           =   300
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
         Left            =   0
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
         Width           =   300
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
         Index           =   -2147483648
         InitialParent   =   "ppViewer"
         InitialValue    =   ""
         Italic          =   False
         Left            =   312
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   72
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   280
      End
   End
   Begin Thread Thread1
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
		  Thread1.Stop
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  'LoadCompendium
		  pgWheel.Visible = True
		  Thread1.Start
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
		  lstObjects(Index).RemoveAllRows
		  if Index = 0 then popSources.RemoveAllRows
		  
		  
		  for each xNode as XMLNode in xNodes
		    var name as String
		    name = xNode.ValueOfNodeWithName("name")
		    
		    var multisources() as String = SourceFromXMLNode( xNode )
		    
		    for each source as string in multisources
		      if NOT ContentSources.Contains( source) then
		        ContentSources.Append source
		      end if
		      
		      if index = 0 and popSources.IndexOfItemWithTitle( source.Replace("&", "&&") ) = -1 then
		        popSources.AddRow source.Replace("&", "&&")
		      end if
		    next
		    
		    var firstSource as String
		    if multisources.LastIndex > -1 then firstSource = multisources(0)
		    lstObjects(Index).AddRow name, StringFromArray( multisources, "|" )
		    lstObjects(Index).Sort
		  next
		  
		  'if Index = 0 then
		  'ContentSources.Sort
		  '
		  'popSources.RemoveAllRows
		  'for i as Integer = 0 to ContentSources.LastIndex
		  'popSources.AddRow ContentSources(i).Replace("&", "&&")
		  'next
		  'end if
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

	#tag Method, Flags = &h0
		Sub LoadCompendium()
		  var t as new TimeFunction( "CompendiumBuilder.LoadList()" )
		  
		  var cCompendium as new Compendium
		  
		  
		  // Get Sources
		  var sourceFolders() as String = CommonModule.GetSourceFolderPaths
		  
		  var Count as Integer = 0
		  thread1.AddUserInterfaceUpdate( new Pair( "ProgressMax", sourceFolders.LastIndex+1 ) )
		  
		  
		  
		  var jDictionary as new JSONItem
		  for each sourcePath as String in sourceFolders
		    if NOT sourcePath.EndsWith("/") then
		      sourcePath = sourcePath + "/"
		    end if
		    var source as FolderItem = new FolderItem( sourcePath, FolderItem.PathTypeNative )
		    'var sourcePath as string = source.NativePath + "/"
		    
		    thread1.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + source.Name ) )
		    thread1.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		    
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
		    
		    thread1.AddUserInterfaceUpdate( new Pair( "ProgressMax", parentFolders.LastIndex+1 ) )
		    
		    
		    
		    // Add information
		    var cores() as SourceCore
		    var CoreRulebooks(), Supplements(), UnearthedArcana(), Homebrew(), OtherCategories(), Uncategorized() as String
		    
		    for each folderparent as FolderItem in parentfolders
		      thread1.AddUserInterfaceUpdate( new Pair( "Message", "Searching: " + folderparent.Name ) )
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
		    
		    thread1.AddUserInterfaceUpdate( new Pair( "Message", "Sorting information..." ) )
		    
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
		      thread1.AddUserInterfaceUpdate( new Pair( "Message", "Adding cores: " + core.ParentFolder.Name ) )
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
		        thread1.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + core.ParentFolder.Name ) )
		        thread1.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		        
		        for each xFile as FolderItem in core.XMLFiles
		          cCompendium.LoadXMLFile xFile
		        next
		      next
		      
		    next
		    
		    for each category as String in Supplements
		      unifiedCategories.Add category
		      
		      var categoryCores() as SourceCore = CoresForCategory( category, sourcePath )
		      for each core as SourceCore in categoryCores
		        thread1.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + core.ParentFolder.Name ) )
		        thread1.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		        
		        for each xFile as FolderItem in core.XMLFiles
		          cCompendium.LoadXMLFile xFile
		        next
		      next
		      
		    next
		    
		    for each category as String in OtherCategories
		      unifiedCategories.Add category
		      
		      var categoryCores() as SourceCore = CoresForCategory( category, sourcePath )
		      for each core as SourceCore in categoryCores
		        thread1.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + core.ParentFolder.Name ) )
		        thread1.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		        
		        for each xFile as FolderItem in core.XMLFiles
		          cCompendium.LoadXMLFile xFile
		        next
		      next
		      
		    next
		    
		    for each category as String in Homebrew
		      unifiedCategories.Add category
		      
		      var categoryCores() as SourceCore = CoresForCategory( category, sourcePath )
		      for each core as SourceCore in categoryCores
		        thread1.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + core.ParentFolder.Name ) )
		        thread1.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		        
		        for each xFile as FolderItem in core.XMLFiles
		          cCompendium.LoadXMLFile xFile
		        next
		      next
		      
		    next
		    
		    for each category as String in UnearthedArcana
		      unifiedCategories.Add category
		      
		      var categoryCores() as SourceCore = CoresForCategory( category, sourcePath )
		      for each core as SourceCore in categoryCores
		        thread1.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + core.ParentFolder.Name ) )
		        thread1.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		        
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
		        thread1.AddUserInterfaceUpdate( new Pair( "Message", "Loading: " + core.ParentFolder.Name ) )
		        thread1.AddUserInterfaceUpdate( new Pair( "ProgressUpdate", 1 ) )
		        
		        for each xFile as FolderItem in core.XMLFiles
		          cCompendium.LoadXMLFile xFile
		        next
		      next
		      
		    next
		    
		    
		    thread1.AddUserInterfaceUpdate( new Pair( "Message", "Finished compiling the compendium!" ) )
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
		  
		  if Thread1.ThreadState = Thread.ThreadStates.NotRunning then
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
		    
		    Thread1.Start
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
		  g.DrawingColor = Color.DisabledTextColor
		  'g.TextSize = 10
		  g.Bold = False
		  g.DrawText me.CellTextAt( row, 1 ).NthField("|", 1), 4, g.TextAscent + (g.Height/2) - (g.TextHeight/2) + (g.TextHeight/2) + 2
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cvsSplash
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  'g.ScaleImage( TheArchive, me.Width, me.Height, 0, 0 )
		  
		  
		  'if Source <> Nil and Source.CoverImageFile <> Nil then
		  var CoverImage as Picture =  compendiumviewerbg 'TheArchive 'Source.CoverImageLarge
		  var Factor as Double = Max( g.Width/CoverImage.Width, g.Height/CoverImage.Height )
		  
		  var NewWidth as Double = CoverImage.Width * Factor
		  var NewHeight as Double = CoverImage.Height * Factor
		  
		  'var backgroundImage as new Picture(NewWidth, NewHeight)
		  
		  'CoverImage = ImagePlayEffectsLibrary.Blur( CoverImage, 3, ImagePlayEffectsLibrary.kBlurModeFast )
		  'backgroundImage.Graphics.DrawPicture CoverImage, 0, 0, backgroundImage.Width, backgroundImage.Height,   0, CoverImage.Height, CoverImage.Width, CoverImage.Height
		  
		  'g.DrawPicture backgroundImage, 0, 0
		  g.DrawPicture CoverImage, (g.Width/2) - (NewWidth/2), (g.Height/2) - (NewHeight/2), NewWidth, NewHeight,   0, 0, CoverImage.Width, CoverImage.Height
		  'else
		  'g.DrawingColor = CommonModule.HeaderStartColor
		  'g.FillRectangle 0, 0, g.Width, g.Height
		  'end if
		  
		  // Overlay Gradient
		  'var Lightness as Integer = 0
		  'if NOT IsDarkMode then
		  'Lightness = 100
		  'end if
		  'g.DrawGradient( HSL( 0, 0, Lightness, 60 ), HSL( 0, 0, Lightness, 90 ),  0, 0, g.Width, g.Height )
		  
		  // Bottom Line
		  'if IsDarkMode then
		  'g.DrawingColor = &CFFFFFFAA
		  'else
		  'g.DrawingColor = &C000000AA
		  'end if
		  'g.DrawLine 0, me.Height-1, g.Width, me.Height-1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popSources
	#tag Event
		Sub Change()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Thread1
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
		      BuildList( CompiledCompendium.Classes, 1)
		      BuildList( CompiledCompendium.Backgrounds, 2)
		      BuildList( CompiledCompendium.Items, 3)
		      BuildList( CompiledCompendium.Feats, 4)
		      BuildList( CompiledCompendium.Spells, 5)
		      BuildList( CompiledCompendium.Creatures, 6)
		      
		      
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
		  
		  'if data <> Nil and data.LastIndex > -1 then
		  'for index as Integer = 0 to data.LastIndex
		  '
		  'MessageBox data(0).Key.StringValue
		  '
		  'Select case data(index).Key.StringValue
		  '
		  'case "Finished"
		  '
		  '
		  'End Select
		  '
		  'next
		  'end if
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
