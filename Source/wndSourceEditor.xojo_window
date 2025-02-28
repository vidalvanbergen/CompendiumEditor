#tag Window
Begin WindowPro wndSourceEditor
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
   Height          =   776
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   593336822
   MenuBarVisible  =   True
   MinimumHeight   =   480
   MinimumWidth    =   768
   Resizeable      =   True
   Title           =   ""
   Type            =   0
   Visible         =   True
   Width           =   1024
   Begin Canvas cvsHeader
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   123
      Index           =   -2147483648
      InitialParent   =   ""
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
      Begin Canvas cvsCover
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   75
         Index           =   -2147483648
         InitialParent   =   "cvsHeader"
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
         Top             =   28
         Transparent     =   True
         Visible         =   True
         Width           =   75
      End
      Begin Label lblSourceName
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsHeader"
         Italic          =   False
         Left            =   107
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Source Name"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   28
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   405
      End
      Begin Label lblSourcePublisher
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   11.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsHeader"
         Italic          =   False
         Left            =   107
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Publisher"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   44
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   405
      End
      Begin Label lblSourcePubDate
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   11.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsHeader"
         Italic          =   False
         Left            =   107
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Publish Date"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   60
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   405
      End
      Begin BevelButton bvlFolder
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         BackgroundColor =   &c00000000
         BevelStyle      =   3
         Bold            =   False
         ButtonStyle     =   0
         Caption         =   ""
         CaptionAlignment=   3
         CaptionDelta    =   0
         CaptionPosition =   1
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         HasBackgroundColor=   False
         Height          =   40
         Icon            =   532223999
         IconAlignment   =   1
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "cvsHeader"
         Italic          =   False
         Left            =   964
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuStyle       =   0
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   28
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   40
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
         InitialParent   =   "cvsHeader"
         InitialValue    =   ""
         Italic          =   False
         Left            =   382
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   15
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      BeginSegmented AddRemoveButton arSources
         AddEnabled      =   False
         Enabled         =   True
         Height          =   24
         Index           =   -2147483648
         InitialParent   =   "cvsHeader"
         Left            =   594
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacControlStyle =   0
         RemoveEnabled   =   False
         Scope           =   0
         Segments        =   "+\n\nFalse\r-\n\nFalse"
         SelectionType   =   2
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   False
         Top             =   12
         Transparent     =   True
         Visible         =   True
         Width           =   48
      End
      Begin BevelButton bvlURL
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         BackgroundColor =   &c00000000
         BevelStyle      =   3
         Bold            =   False
         ButtonStyle     =   0
         Caption         =   ""
         CaptionAlignment=   3
         CaptionDelta    =   0
         CaptionPosition =   1
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         HasBackgroundColor=   False
         Height          =   40
         Icon            =   244889599
         IconAlignment   =   1
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "cvsHeader"
         Italic          =   False
         Left            =   912
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuStyle       =   0
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   28
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   False
         Width           =   40
      End
   End
   Begin PagePanel ppSourceEditor
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   653
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   3
      Panels          =   ""
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   123
      Transparent     =   False
      Value           =   2
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
         Height          =   38
         Index           =   0
         InitialParent   =   "ppSourceEditor"
         IsDeactivated   =   False
         Left            =   0
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
         Top             =   123
         Transparent     =   True
         Visible         =   True
         Width           =   1024
         Begin PushButton btnSourceInfoSave
            AllowAutoDeactivate=   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "Save"
            Default         =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "cvsToolbar$0"
            Italic          =   False
            Left            =   884
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            MacButtonStyle  =   0
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   132
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   120
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
         Height          =   38
         Index           =   1
         InitialParent   =   "ppSourceEditor"
         IsDeactivated   =   False
         Left            =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   123
         Transparent     =   True
         Visible         =   True
         Width           =   1024
         Begin DesktopButton btnImageSelect
            AllowAutoDeactivate=   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "Select Image"
            Default         =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "cvsToolbar$1"
            Italic          =   False
            Left            =   884
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            MacButtonStyle  =   0
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Tooltip         =   ""
            Top             =   132
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   120
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
         Height          =   38
         Index           =   2
         InitialParent   =   "ppSourceEditor"
         IsDeactivated   =   False
         Left            =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   123
         Transparent     =   True
         Visible         =   True
         Width           =   1024
         Begin PushButton btnSourceSave
            AllowAutoDeactivate=   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "Save"
            Default         =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "cvsToolbar$2"
            Italic          =   False
            Left            =   929
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            MacButtonStyle  =   0
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   3
            TabStop         =   True
            Tooltip         =   ""
            Top             =   132
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   75
         End
         Begin PushButton btnSourceReset
            AllowAutoDeactivate=   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "Reset"
            Default         =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "cvsToolbar$2"
            Italic          =   False
            Left            =   842
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            MacButtonStyle  =   0
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   3
            TabStop         =   True
            Tooltip         =   ""
            Top             =   132
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   75
         End
         Begin Label lblAddType
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
            InitialParent   =   "cvsToolbar$2"
            Italic          =   False
            Left            =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   13
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Add:"
            TextAlignment   =   3
            TextColor       =   &cFAFAFA00
            Tooltip         =   ""
            Top             =   132
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   50
         End
         Begin PopupMenu popCompendiumTypes
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
            InitialParent   =   "cvsToolbar$2"
            InitialValue    =   ""
            Italic          =   False
            Left            =   62
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            SelectedRowIndex=   0
            TabIndex        =   14
            TabPanelIndex   =   3
            TabStop         =   True
            Tooltip         =   ""
            Top             =   132
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   180
         End
         BeginSegmented AddDuplicateRemoveButton arSourceType
            AddEnabled      =   False
            DuplicateEnabled=   False
            Enabled         =   True
            Height          =   24
            Index           =   -2147483648
            InitialParent   =   "cvsToolbar$2"
            Left            =   254
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MacControlStyle =   0
            RemoveEnabled   =   False
            Scope           =   0
            Segments        =   "+\n\nFalse\r⿻\n\nFalse\r-\n\nFalse"
            SelectionType   =   2
            TabIndex        =   15
            TabPanelIndex   =   3
            TabStop         =   False
            Top             =   130
            Transparent     =   True
            Visible         =   True
            Width           =   72
         End
      End
      Begin EmbedControl ecSourceEditor
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
         Height          =   615
         Index           =   -2147483648
         InitialParent   =   "ppSourceEditor"
         Left            =   187
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   161
         Transparent     =   True
         Visible         =   True
         Width           =   650
      End
      Begin ScalingCanvas scCoverImage
         AlignedWithTop  =   False
         AllowAutoDeactivate=   True
         AllowDrop       =   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         BorderColor     =   &c00000000
         DoubleBuffer    =   False
         DrawBorder      =   True
         Enabled         =   True
         Height          =   583
         Image           =   0
         Index           =   -2147483648
         InitialParent   =   "ppSourceEditor"
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         tmpImage        =   0
         Tooltip         =   ""
         Top             =   173
         Transparent     =   True
         Visible         =   True
         Width           =   984
      End
      Begin PagePanel ppEditorPanels
         AllowAutoDeactivate=   True
         Enabled         =   True
         Height          =   615
         Index           =   -2147483648
         InitialParent   =   "ppSourceEditor"
         Left            =   330
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         PanelCount      =   11
         Panels          =   ""
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   False
         Tooltip         =   ""
         Top             =   161
         Transparent     =   False
         Value           =   0
         Visible         =   True
         Width           =   694
         Begin EmbedControl EmbedBackgrounds
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
            Height          =   595
            Index           =   -2147483648
            InitialParent   =   "ppEditorPanels"
            Left            =   330
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Tooltip         =   ""
            Top             =   161
            Transparent     =   True
            Visible         =   True
            Width           =   694
         End
         Begin EmbedControl EmbedClass
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
            Height          =   595
            Index           =   -2147483648
            InitialParent   =   "ppEditorPanels"
            Left            =   330
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            Tooltip         =   ""
            Top             =   161
            Transparent     =   True
            Visible         =   True
            Width           =   694
         End
         Begin EmbedControl EmbedCreature
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
            Height          =   595
            Index           =   -2147483648
            InitialParent   =   "ppEditorPanels"
            Left            =   330
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            Tooltip         =   ""
            Top             =   161
            Transparent     =   True
            Visible         =   True
            Width           =   694
         End
         Begin EmbedControl EmbedEquipment
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
            Height          =   595
            Index           =   -2147483648
            InitialParent   =   "ppEditorPanels"
            Left            =   330
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   5
            TabStop         =   True
            Tooltip         =   ""
            Top             =   161
            Transparent     =   True
            Visible         =   True
            Width           =   694
         End
         Begin EmbedControl EmbedFeats
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
            Height          =   595
            Index           =   -2147483648
            InitialParent   =   "ppEditorPanels"
            Left            =   330
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   6
            TabStop         =   True
            Tooltip         =   ""
            Top             =   161
            Transparent     =   True
            Visible         =   True
            Width           =   694
         End
         Begin EmbedControl EmbedSpecies
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
            Height          =   595
            Index           =   -2147483648
            InitialParent   =   "ppEditorPanels"
            Left            =   330
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   7
            TabStop         =   True
            Tooltip         =   ""
            Top             =   161
            Transparent     =   True
            Visible         =   True
            Width           =   694
         End
         Begin EmbedControl EmbedSpells
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
            Height          =   595
            Index           =   -2147483648
            InitialParent   =   "ppEditorPanels"
            Left            =   330
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   8
            TabStop         =   True
            Tooltip         =   ""
            Top             =   161
            Transparent     =   True
            Visible         =   True
            Width           =   694
         End
         Begin TextArea txtXML
            AllowAutoDeactivate=   True
            AllowFocusRing  =   True
            AllowSpellChecking=   True
            AllowStyledText =   False
            AllowTabs       =   False
            BackgroundColor =   &cFFFFFF00
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Format          =   ""
            HasBorder       =   True
            HasHorizontalScrollbar=   False
            HasVerticalScrollbar=   True
            Height          =   575
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "ppEditorPanels"
            Italic          =   False
            Left            =   350
            LineHeight      =   0.0
            LineSpacing     =   1.0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            MaximumCharactersAllowed=   0
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   9
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   181
            Transparent     =   False
            Underline       =   False
            UnicodeMode     =   1
            ValidationMask  =   ""
            Visible         =   True
            Width           =   654
         End
      End
      Begin XMLListbox lstXML
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   True
         AllowRowReordering=   True
         Bold            =   False
         ColumnCount     =   2
         ColumnWidths    =   "75%,*"
         DefaultRowHeight=   24
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLineStyle   =   0
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   615
         IgnoreChange    =   False
         Index           =   -2147483648
         InitialParent   =   "ppSourceEditor"
         InitialValue    =   "Name	Type"
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
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   161
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   330
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
   Begin BevelButton bvlSourceTypes
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   32
      Icon            =   1930717183
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   6
      InitialParent   =   ""
      Italic          =   False
      Left            =   1608
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Creature"
      Top             =   268
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton bvlSourceTypes
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   32
      Icon            =   659851263
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   5
      InitialParent   =   ""
      Italic          =   False
      Left            =   1577
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Spell"
      Top             =   268
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton bvlSourceTypes
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   32
      Icon            =   21803007
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   4
      InitialParent   =   ""
      Italic          =   False
      Left            =   1546
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Feat"
      Top             =   268
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton bvlSourceTypes
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   32
      Icon            =   1487187967
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   3
      InitialParent   =   ""
      Italic          =   False
      Left            =   1515
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Item"
      Top             =   268
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton bvlSourceTypes
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   32
      Icon            =   90316799
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   1484
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Background"
      Top             =   268
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton bvlSourceTypes
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   32
      Icon            =   89425919
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   1453
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Class & Subclass"
      Top             =   268
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton bvlSourceTypes
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   32
      Icon            =   1228064767
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   1422
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Species"
      Top             =   268
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   32
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  
		  // Refresh
		  wndMain.lstSources.SelectedRowIndex = wndMain.lstSources.SelectedRowIndex
		  
		  for index as Integer = wndMain.SourceEditorWindows.LastIndex DownTo 0
		    if wndMain.SourceEditorWindows(index) = self then
		      wndMain.SourceEditorWindows.RemoveAt(index)
		      Exit
		    end if
		  next
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  ecSourceEditor.Width = Min( 650, ppSourceEditor.Width )
		  ecSourceEditor.Left = ( ppSourceEditor.Width/2 ) - ( ecSourceEditor.Width / 2 )
		  ecSourceEditor.AdjustScroller
		End Sub
	#tag EndEvent

	#tag Event
		Sub Settings()
		  #if TargetMacOS then
		    
		    me.TitlebarAppearsTransparent = True
		    me.TitleVisible = False
		    me.FullSizeContentView = True
		    
		  #endif
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileSaveFile() As Boolean Handles FileSaveFile.Action
		  if ppSourceEditor.Value = 0 then
		    SaveSourceNFO
		  elseif ppSourceEditor.Value = 2 then
		    SaveData
		  else
		    Break
		  end if
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub AppendToDocument(type as String)
		  
		  
		  
		  var homebrew as string
		  if Source.SourceInfo.Lookup("category", "") = "Homebrew" and type <> "class" and type <> "monster" then
		    homebrew = " (HB)"
		  end if
		  
		  if type <> "" then
		    var sample as string
		    
		    var className as string = popSources.SelectedRowValue
		    if type = "class" and className.Contains("class-") then
		      className = className.Match( "class-(.*?)-", 1 )
		      
		      sample = "<" + type + "><name>" + className.Titlecase + "</name></" + type + ">"
		    else
		      sample = "<" + type + "><name>Unnamed " + type + homebrew + "</name></" + type + ">"
		    end if
		    
		    var xNode as XMLNode = sample.ToXML
		    
		    if xNode <> Nil then
		      xNode =  lstXML.xDoc.FirstChild.AppendChildCopy( xNode )
		      
		      var itemtype as String = xNode.Name
		      if xNode.Name = "race" then
		        itemtype = "species"
		      elseif xNode.Name = "monster" then
		        itemtype = "creature"
		      end if
		      
		      lstXML.AddRow xNode.ValueOfNodeWithName("name"), itemtype 'xNode.Name
		      lstXML.RowTagAt( lstXML.LastAddedRowIndex ) = xNode
		      
		      lstXML.SelectedRowIndex = lstXML.LastAddedRowIndex
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DuplicateItem()
		  
		  if lstXML.SelectedRowIndex > -1 then
		    
		    'var lindex as Integer = lstXML.SelectedRowIndex
		    'var type as string = lstXML.CellTextAt( lstXML.SelectedRowIndex, 1 )
		    
		    
		    if lstXML.RowTagAt( lstXML.SelectedRowIndex ) IsA XMLNode then
		      var xnode as XMLNode = lstXML.RowTagAt( lstXML.SelectedRowIndex )
		      xnode = lstXML.xDoc.FirstChild.AppendChildCopy( xnode )
		      
		      lstXML.AddRowAt( lstXML.SelectedRowIndex+1, xnode.ValueOfNodeWithName("name") )
		      lstXML.CellTextAt( lstXML.LastAddedRowIndex, 1 ) = xnode.Name
		      lstXML.RowTagAt( lstXML.LastAddedRowIndex ) = xnode
		      
		      lstXML.SortByRow
		      
		      lstXML.SelectedRowIndex = lstXML.LastAddedRowIndex
		      
		      'var xDoc as XMLDocument = xnode.OwnerDocument
		      'xDoc.DocumentElement.RemoveChild( xnode )
		      
		      'lstXML.RemoveRowAt( lstXML.SelectedRowIndex )
		    else
		      Break
		    end if
		    
		    // Restore selection
		    'if lindex-1 > -1 then
		    'lstXML.SelectedRowIndex = lindex-1
		    'elseif lstXML.LastRowIndex > -1 then
		    'lstXML.SelectedRowIndex = 0
		    'end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load(TheSource as SourceCore = Nil)
		  if Source = Nil then
		    Source = TheSource
		  end if
		  
		  // Reset
		  lblSourceName.Text = ""
		  lblSourcePublisher.Text = ""
		  lblSourcePubDate.Text = ""
		  bvlURL.Visible = False
		  
		  'var c as new EmbedControl
		  'c.EmbedWithinPanel ppEditorPanels, 0, 0, 0, ppEditorPanels.Width, ppEditorPanels.Height
		  
		  
		  'var c as new ccBackground
		  cBackground = new ccBackground
		  EmbedBackgrounds.Embed( cBackground )
		  EmbedBackgrounds.AdjustScroller
		  
		  'var c as new ccClass
		  cClass = new ccClass
		  EmbedClass.Embed( cClass )
		  EmbedClass.AdjustScroller
		  
		  'var c as new ccCreature 
		  cCreature = new ccCreature
		  EmbedCreature.Embed( cCreature )
		  EmbedCreature.AdjustScroller
		  
		  'var c as new ccEquipment
		  cEquipment = new ccEquipment
		  EmbedEquipment.Embed( cEquipment )
		  EmbedEquipment.AdjustScroller
		  
		  'var c as new ccFeat
		  cFeat = new ccFeat
		  embedFeats.Embed( cFeat )
		  embedFeats.AdjustScroller
		  
		  'var c as new ccSpecies
		  cSpecies = new ccSpecies
		  EmbedSpecies.Embed( cSpecies )
		  EmbedSpecies.AdjustScroller
		  
		  'var c as new ccSpell
		  cSpell = new ccSpell
		  EmbedSpells.Embed( cSpell )
		  EmbedSpells.AdjustScroller
		  
		  
		  // Set Source Info
		  if Source.ParentFolder <> Nil then
		    lblSourceName.Text = Source.ParentFolder.Name
		  end if
		  
		  if Source <> Nil and Source.SourceInfoFile <> Nil then
		    lblSourceName.Text = Source.SourceInfo.Lookup("name", Source.ParentFolder.Name)
		    lblSourcePublisher.Text = Source.SourceInfo.Lookup("publisher", "")
		    
		    var pubDateString as String = Source.SourceInfo.Lookup("pubdate", "")
		    
		    if pubDateString <> "" then
		      var pubDate as new DatePro
		      pubDate.SQLDate = pubDateString
		      
		      lblSourcePubDate.Text = pubDate.ShortMonth + " " + Str( pubDate.Day ) + ", " + Str( pubDate.Year )
		    end if
		    
		    bvlURL.Visible = ( Source.SourceInfo.Lookup("url", "" ) <> "" )
		    
		    SourceInfoEditorPanel.LoadXML( Source.SourceInfoFile )
		  end if
		  
		  self.Title = lblSourceName.Text
		  
		  // Sources
		  popSources.RemoveAllRows
		  popSources.AddRowWithTagAndPicture "Source", Nil, template_icon_code_64
		  popSources.AddRowWithTagAndPicture "Cover Image", Nil, template_icon_image_32
		  popSources.AddRow "-"
		  if Source <> Nil and Source.XMLFiles <> Nil and Source.XMLFiles.LastIndex > -1 then
		    
		    for each XMLFile as FolderItem in Source.XMLFiles
		      var smallIcon as Picture
		      
		      if XMLFile.Name.Contains("bestiary") then
		        smallIcon = template_compendium_creature_32
		      elseif XMLFile.Name.Contains("item") then
		        smallIcon = template_compendium_treasure_32
		      elseif XMLFile.Name.Contains("spell") then
		        smallIcon = template_compendium_magic_32
		      elseif XMLFile.Name.Contains("class") then
		        smallIcon = template_compendium_classes_32
		      elseif XMLFile.Name.Contains("race") or XMLFile.Name.Contains("species") then
		        smallIcon = template_compendium_species_32
		      elseif XMLFile.Name.Contains("optionalfeatures") or XMLFile.Name.Contains("feats") then
		        smallIcon = template_compendium_feat_32
		      elseif XMLFile.Name.Contains("background") then
		        smallIcon = template_compendium_banner_32
		      else
		        smallIcon = template_compendium_32
		      end if
		      
		      popSources.AddRowWithTagAndPicture XMLFile.Name, XMLFile, smallIcon
		    next
		    
		  else
		    //
		  end if
		  popSources.SelectedRowIndex = 0
		  
		  // Images
		  scCoverImage.ImageFile = Source.CoverImageFile
		  scCoverImage.Image = Source.CoverImageFull
		  
		  // Refresh Canvas'
		  cvsHeader.Invalidate
		  cvsCover.Invalidate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveFromDocument()
		  
		  
		  if lstXML.SelectedRowIndex > -1 then
		    
		    var lindex as Integer = lstXML.SelectedRowIndex
		    var type as string = lstXML.CellTextAt( lstXML.SelectedRowIndex, 1 )
		    
		    
		    Var d As New MessageDialog                   ' declare the MessageDialog object
		    Var b As MessageDialogButton                 ' for handling the result
		    d.IconType = MessageDialog.IconTypes.Caution ' display warning icon
		    d.ActionButton.Caption = "Remove"
		    d.CancelButton.Visible = True                ' show the Cancel button
		    'd.AlternateActionButton.Visible = True       ' show the "Don't Save" button
		    'd.AlternateActionButton.Caption = "Don't Save"
		    d.Message = "Are you certain you want to remove the selected " + lstXML.CellTextAt( lstXML.SelectedRowIndex, 1 ) + "?"
		    'd.Explanation = "If you don't save, your changes will be lost."
		    
		    b = d.ShowModal                              ' display the dialog
		    Select Case b                                ' determine which button was pressed.
		    Case d.ActionButton
		      ' user pressed Save
		    Case d.CancelButton
		      ' user pressed Cancel
		      Return
		    End Select
		    
		    
		    if lstXML.RowTagAt( lstXML.SelectedRowIndex ) IsA XMLNode then
		      var xnode as XMLNode = lstXML.RowTagAt( lstXML.SelectedRowIndex )
		      
		      var xDoc as XMLDocument = xnode.OwnerDocument
		      xDoc.DocumentElement.RemoveChild( xnode )
		      
		      lstXML.RemoveRowAt( lstXML.SelectedRowIndex )
		    else
		      Break
		    end if
		    
		    // Restore selection
		    if lindex-1 > -1 then
		      lstXML.SelectedRowIndex = lindex-1
		    elseif lstXML.LastRowIndex > -1 then
		      lstXML.SelectedRowIndex = 0
		    end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SaveData()
		  
		  // Update list
		  'lstXML.SelectedRowIndex = lstXML.SelectedRowIndex
		  var newNode as XMLNode
		  
		  Select case ppEditorPanels.Value
		    
		  case 0 // BLANK
		    
		  case 1 // Backgrounds
		    newNode = cBackground.GetXMLNode
		    
		  case 2 // Class
		    newNode = cClass.GetXMLNode
		    
		  case 3 // Creature
		    newNode = cCreature.GetXMLNode
		    
		  case 4 // Equipment
		    newNode = cEquipment.GetXMLNode
		    
		  case 5 // Feats
		    newNode = cFeat.GetXMLNode
		    
		  case 6 // Species
		    newNode = cSpecies.GetXMLNode
		    
		  case 7 // Spells
		    newNode = cSpell.GetXMLNode
		    
		  case 8 // #TEXT
		    ' soldNode.Value = " " + txtXML.Text + " "
		    
		  else
		    Break
		    
		  End Select
		  
		  if newNode <> Nil then
		    lstXML.CellTextAt( lstXML.SelectedRowIndex, 0 ) = newNode.ValueOfNodeWithName("name")
		  end if
		  
		  lstXML.SoftRebuildList
		  
		  
		  if popSources.RowTagAt( popSources.SelectedRowIndex ) IsA FolderItem then
		    var destination as FolderItem = popSources.RowTagAt( popSources.SelectedRowIndex )
		    
		    if destination <> Nil and destination.IsWriteable then
		      lstXML.xDoc.SaveXMLFormatted( destination, AppPrefs.IndentCharacters )
		    end if
		    
		  end if
		  
		  
		  
		  MessageBox "Saved """ + popSources.SelectedRowValue + """."
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveSourceNFO()
		  var sourceDestination as FolderItem
		  if Source.SourceInfoFile <> Nil and Source.SourceInfoFile.Exists then
		    sourceDestination = Source.SourceInfoFile
		  else
		    var postfix as string
		    if source.SourceInfoFile <> Nil and Source.SourceInfo.Lookup("abbreviation", "") <> "" then
		      postfix = "-" + Source.SourceInfo.Lookup("abbreviation", "").StringValue.Lowercase
		    end if
		    sourceDestination = Source.ParentFolder.Child( "source" + postfix + ".xml" )
		  end if
		  SourceInfoEditorPanel.SaveXML( sourceDestination )
		  
		  Source.SetSource( sourceDestination )
		  
		  MessageBox "Saved source information."
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SortXMLDocumentByName(xDoc as xmldocument, Reverse as Boolean = False) As XMLDocument
		  
		  if xDoc <> Nil and xDoc.FirstChild <> Nil then
		    
		    var xRoot as XMLNode = xDoc.FirstChild
		    
		    var xNodes() as XMLNode
		    var xNames() as String
		    
		    for index as Integer = 0 to xRoot.ChildCount-1
		      var xNode as XMLNode = xRoot.Child(index)
		      
		      
		      if xNode <> Nil then 'and xNode.FirstChild <> Nil then
		        var xName as String = xNode.ValueOfNodeWithName("name")
		        if xName = "" then
		          if xNode.Value.Trim.Length <= 150 then
		            xName = xNode.Value.Trim
		          else
		            xName = "#comment"
		          end if
		        end if
		        
		        xNodes.Add xNode
		        xNames.Add xName
		      end if
		      
		    next
		    
		    xNames.SortWith( xNodes )
		    
		    xRoot.RemoveAllChildren
		    
		    if Reverse then
		      for index as Integer = xNodes.LastIndex DownTo 0
		        xRoot.AppendChildCopy( xNodes(index) )
		      next
		    else
		      for index as Integer = 0 to xNodes.LastIndex
		        xRoot.AppendChildCopy( xNodes(index) )
		      next
		    end if
		    
		  end if
		  
		  Return xDoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub XMLSortByName(xDoc as XMLDocument)
		  'var xNewDoc as new XMLDocument
		  
		  var xRoot as XMLNode = xDoc.FirstChild
		  
		  var names() as String
		  var xNodes() as XMLNode
		  
		  var OtherNodes() as XMLNode
		  
		  var xOldNodes() as XMLNode = xRoot.Children
		  
		  for index as Integer = xOldNodes.LastIndex DownTo 0
		    var xOldNode as XMLNode = xOldNodes(index)
		    
		    if xOldNode.Type = XMLNodeType.COMMENT_NODE then
		      OtherNodes.Add xOldNode'.Clone(True)
		    else
		      names.Append xOldNode.ValueOfNodeWithName("name")
		      xNodes.Add xOldNode'.Clone(True)
		    end if
		    
		    'xRoot.RemoveChild( xOldNode )
		  next
		  
		  'for each xOldNode as XMLNode in xOldNodes
		  'next
		  
		  names.SortWith(xNodes)
		  
		  //
		  for index as Integer = 0 to xNodes.LastIndex
		    'xRoot.AppendChildCopy( xNodes(index) )
		    xRoot.AppendChild( xNodes(index) )
		  next
		  
		  for index as Integer = 0 to OtherNodes.LastIndex
		    'xRoot.AppendChildCopy( OtherNodes( index ) )
		    xRoot.AppendChild( OtherNodes(index) )
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		cBackground As ccBackground
	#tag EndProperty

	#tag Property, Flags = &h0
		cClass As ccClass
	#tag EndProperty

	#tag Property, Flags = &h0
		cCreature As ccCreature
	#tag EndProperty

	#tag Property, Flags = &h0
		cEquipment As ccEquipment
	#tag EndProperty

	#tag Property, Flags = &h0
		cFeat As ccFeat
	#tag EndProperty

	#tag Property, Flags = &h0
		cSpecies As ccSpecies
	#tag EndProperty

	#tag Property, Flags = &h0
		cSpell As ccSpell
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSourceInfoEditorPanel As ccSourceInfoEditor
	#tag EndProperty

	#tag Property, Flags = &h0
		Source As SourceCore
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mSourceInfoEditorPanel = Nil then
			    mSourceInfoEditorPanel = new ccSourceInfoEditor
			  end if
			  
			  Return mSourceInfoEditorPanel
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mSourceInfoEditorPanel = value
			End Set
		#tag EndSetter
		SourceInfoEditorPanel As ccSourceInfoEditor
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events cvsHeader
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  if Source <> Nil and Source.CoverImageFile <> Nil then
		    var CoverImage as Picture =  Source.CoverImageLarge
		    var Factor as Double = Max( g.Width/CoverImage.Width, g.Height/CoverImage.Height )
		    
		    var NewWidth as Double = CoverImage.Width * Factor
		    var NewHeight as Double = CoverImage.Height * Factor
		    
		    var backgroundImage as new Picture(NewWidth, NewHeight)
		    
		    CoverImage = ImagePlayEffectsLibrary.Blur( CoverImage, 3, ImagePlayEffectsLibrary.kBlurModeFast )
		    backgroundImage.Graphics.DrawPicture CoverImage, 0, 0, backgroundImage.Width, backgroundImage.Height,   0, CoverImage.Height/4, CoverImage.Width, CoverImage.Height
		    
		    g.DrawPicture backgroundImage, 0, 0
		  end if
		  
		  // Overlay Gradient
		  var Lightness as Integer = 0
		  if NOT IsDarkMode then
		    Lightness = 100
		  end if
		  g.DrawGradient( HSL( 0, 0, Lightness, 60 ), HSL( 0, 0, Lightness, 90 ),  0, 0, g.Width, g.Height )
		  
		  // Bottom Line
		  if IsDarkMode then
		    g.DrawingColor = &CFFFFFFAA
		  else
		    g.DrawingColor = &C000000AA
		  end if
		  g.DrawLine 0, me.Height-1, g.Width, me.Height-1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsCover
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  
		  if Source <> Nil and Source.CoverImageFile <> Nil then
		    var coverImage as Picture = Source.CoverImageThumbnail
		    if coverImage <> Nil then
		      Dim Factor as Double = Min( g.Width/coverImage.Width, g.Height/coverImage.Height )
		      
		      Dim NewWidth as Double = coverImage.Width * Factor
		      Dim NewHeight as Double = coverImage.Height * Factor
		      
		      g.DrawPicture coverImage, (g.Width/2) - (NewWidth/2) + 1, 1, NewWidth-2, NewHeight-2,  0, 0, coverImage.Width, coverImage.Height
		      
		      g.ForeColor = HeaderStartColor
		      g.DrawRoundRectangle (g.Width/2) - (NewWidth/2), 0, NewWidth, NewHeight, 8, 8
		    end if
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  if Source.ParentFolder <> Nil and Source.ParentFolder.Exists then
		    #if TargetMacOS then
		      base.AddMenu new MenuItem( "Reveal in Finder", Source.ParentFolder )
		    #else
		      base.AddMenu new MenuItem( "Reveal in Explorer", Source.ParentFolder )
		    #endif
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  if hitItem <> Nil then
		    
		    Select case hitItem.Text
		      
		    case "Reveal in Finder", "Reveal in Explorer"
		      var f as FolderItem = hitItem.Tag
		      if f <> Nil and f.Exists then
		        #if TargetMacOS then
		          f.Launch 'RevealInFinder
		        #else
		          f.Launch
		        #endif
		        
		      end if
		      
		    End Select
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events bvlFolder
	#tag Event
		Sub Action()
		  if Source <> Nil and Source.ParentFolder <> Nil and Source.ParentFolder.Exists then
		    Source.ParentFolder.Launch
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popSources
	#tag Event
		Sub Change()
		  
		  arSources.RemoveEnabled = False
		  
		  Select case me.Text
		    
		  case "Source"
		    ppSourceEditor.Value = 0
		    SourceInfoEditorPanel.LoadXML( Source.SourceInfoFile )
		    
		  case "Cover Image"
		    ppSourceEditor.Value = 1
		    
		  else
		    ppSourceEditor.Value = 2
		    arSources.RemoveEnabled =  True
		    
		    if me.RowTagAt( me.SelectedRowIndex ) IsA FolderItem then
		      var xmlFile as FolderItem = me.RowTagAt( me.SelectedRowIndex )
		      lstXML.BuildList( xmlFile )
		      
		      lstXML.SelectedRowIndex = 0
		    end if
		    
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events arSources
	#tag Event
		Sub ActionAdd()
		  var postfix, options() as String
		  
		  if Source.SourceInfo.Lookup("abbreviation", "") <> "" then
		    postfix = "-" + Source.SourceInfo.Lookup("abbreviation", "").StringValue.Lowercase
		  end if
		  
		  options.Add "backgrounds" + postfix + ".xml"
		  options.Add "bestiary" + postfix + ".xml"
		  options.Add "class-classname" + postfix + ".xml"
		  options.Add "feats" + postfix + ".xml"
		  'options.Add "items-base" + postfix + ".xml"
		  options.Add "items" + postfix + ".xml"
		  options.Add "optionalfeatures" + postfix + ".xml"
		  options.Add "races" + postfix + ".xml"
		  options.Add "species" + postfix + ".xml"
		  options.Add "spells" + postfix + ".xml"
		  if postfix <> "" then
		    options.Add "spells" + postfix + "+phb.xml"
		  end if
		  
		  
		  var Filename as string
		  
		  do
		    Filename = InputDialogMulti.ShowPrompt( "File Name", "Enter a name for the file:", options, Filename )
		    
		    if trim( Filename ) <> "" then
		      if NOT Filename.EndsWith(".xml") then
		        Filename = Filename + ".xml"
		      end if
		      
		      while Filename.StartsWith(".")
		        Filename = Filename.Right( Filename.Length-1 )
		      wend
		      
		      Filename = Filename.ReplaceAll(":", "- ")
		    end if
		    
		    
		    if Trim( Filename ) <> "" and Source.ParentFolder.Child( Filename ).Exists then
		      MessageBox "A file with the name """ + Filename + """ already exists, please try a different name."
		    end if
		    
		  loop until Filename = "" or NOT Source.ParentFolder.Child( Filename ).Exists
		  
		  if Filename <> "" and NOT Source.ParentFolder.Child( Filename ).Exists then
		    var destination as FolderItem = Source.ParentFolder.Child( Filename )
		    
		    var xDoc as new XMLDocument
		    xDoc.PreserveWhitespace = True
		    
		    var xRoot as XmlNode = xDoc.AppendChild( xDoc.CreateElement( "compendium" ) )
		    xRoot.SetAttribute("version", "5")
		    xRoot.SetAttribute("auto_indent", "NO")
		    
		    'xDoc.IndentDocument(0)
		    
		    xDoc.SaveXMLFormatted( destination, AppPrefs.IndentCharacters )
		    
		    
		    var smallIcon as Picture
		    
		    if Filename.Contains("background") then
		      smallIcon = template_compendium_banner_32
		    elseif Filename.Contains("bestiary") or Filename.Contains("monster") then
		      smallIcon = template_compendium_creature_32
		    elseif Filename.Contains("class") then
		      smallIcon = template_compendium_classes_32
		    elseif Filename.Contains("feats") or Filename.Contains("optionalfeatures") then
		      smallIcon = template_compendium_feat_32
		    ElseIf Filename.Contains("items") then
		      smallIcon = template_compendium_treasure_32
		    ElseIf Filename.Contains("races") or Filename.Contains("species") then
		      smallIcon = template_compendium_species_32
		    elseif Filename.Contains("spells") then
		      smallIcon = template_compendium_magic_32
		    else
		      smallIcon = template_compendium_32
		    end if
		    
		    popSources.AddRowWithTagAndPicture( Filename, destination, smallIcon )
		    popSources.SelectedRowIndex = popSources.LastAddedRowIndex
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionRemove()
		  if popSources.RowTagAt( popSources.SelectedRowIndex ) IsA FolderItem then
		    var TheFile as FolderItem = popSources.RowTagAt( popSources.SelectedRowIndex )
		    
		    if TheFile <> Nil and TheFile.Exists then
		      
		      Var d As New MessageDialog                   ' declare the MessageDialog object
		      Var b As MessageDialogButton                 ' for handling the result
		      d.IconType = MessageDialog.IconTypes.Caution ' display warning icon
		      d.ActionButton.Caption = "Remove"
		      d.CancelButton.Visible = True                ' show the Cancel button
		      'd.AlternateActionButton.Visible = True       ' show the "Don't Save" button
		      'd.AlternateActionButton.Caption = "Don't Save"
		      d.Message = "Do you want to remove """ + TheFile.Name + """?"
		      d.Explanation = "This action cannot be undone."
		      
		      b = d.ShowModal                              ' display the dialog
		      Select Case b                                ' determine which button was pressed.
		      Case d.ActionButton
		        
		        #if TargetMacOS then
		          TheFile.MoveToTrash
		        #else
		          TheFile.Delete
		        #endif
		        
		        popSources.RemoveRowAt( popSources.SelectedRowIndex )
		        if popSources.LastRowIndex > -1 then
		          popSources.SelectedRowIndex = 0
		        end if
		        
		        ' user pressed Save
		        'Case d.AlternateActionButton
		        ' user pressed Don't Save
		      Case d.CancelButton
		        ' user pressed Cancel
		      End Select
		      
		    end if
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bvlURL
	#tag Event
		Sub Action()
		  if Source <> Nil and Source.SourceInfo.Lookup("url","") <> "" then
		    ShowURL Source.SourceInfo.Value("url")
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSourceInfoSave
	#tag Event
		Sub Action()
		  SaveSourceNFO
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnImageSelect
	#tag Event
		Sub Pressed()
		  scCoverImage.SelectImageFile
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSourceSave
	#tag Event
		Sub Action()
		  SaveData
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSourceReset
	#tag Event
		Sub Action()
		  'popSources.SelectedRowIndex = popSources.SelectedRowIndex
		  'lstXML.SelectedRowIndex = lstXML.SelectedRowIndex
		  
		  if Keyboard.AsyncAltKey then
		    if popSources.RowTagAt( popSources.SelectedRowIndex ) IsA FolderItem then
		      var xmlFile as FolderItem = popSources.RowTagAt( popSources.SelectedRowIndex )
		      lstXML.BuildList( xmlFile )
		    end if
		    
		  else
		    
		    var oldNode as XMLNode
		    
		    Select case ppEditorPanels.Value
		      
		    case 0
		      oldNode = cFeat.xNode
		      cFeat.SetData( oldNode, Source.SourceInfo.Lookup("source", "") )
		      'newNode = cFeat.GetXMLNode
		      
		    case 1
		      oldNode = cBackground.xNode
		      cBackground.SetData( oldNode, Source.SourceInfo.Lookup("source", "") ) ', "", Source.SourceInfo.Lookup("category","") )
		      
		      
		    case 2
		      oldNode = cSpell.xNode
		      cSpell.SetData( oldNode, Source.SourceInfo.Lookup("source", "") )
		      'newNode = cSpell.GetXMLNode
		      
		    case 3
		      oldNode = cSpecies.xNode
		      cSpecies.SetData( oldNode, Source.SourceInfo.Lookup("source", "") )
		      'newNode = cSpecies.GetXMLNode
		      
		    case 4
		      oldNode = cBackground.xNode
		      cBackground.SetData( oldNode, Source.SourceInfo.Lookup("source", "") )
		      'newNode = cBackground.GetXMLNode
		      
		    case 5
		      oldNode = cEquipment.xNode
		      cEquipment.SetData( oldNode, Source.SourceInfo.Lookup("source", "") )
		      'newNode = cEquipment.GetXMLNode
		      
		    case 6 // Species
		      oldNode = cSpecies.xNode
		      cSpecies.SetData( oldNode, Source.SourceInfo.Lookup("source", "") )
		      
		    case 7 // Spells
		      oldNode = cSpell.xNode
		      cSpell.SetData( oldNode, Source.SourceInfo.Lookup("source", "") )
		      
		    case 8 // #TEXT
		      ' soldNode.Value = " " + txtXML.Text + " "
		    End Select
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popCompendiumTypes
	#tag Event
		Sub Open()
		  me.AddRowWithTagAndPicture "Species", "race", template_compendium_species_32
		  me.AddRowWithTagAndPicture "Class", "class", template_compendium_classes_32
		  'me.AddRowWithTagAndPicture "Subclass", "subclass", templatesmall_swords
		  me.AddRowWithTagAndPicture "Background", "background", template_compendium_banner_32
		  me.AddRowWithTagAndPicture "Equipment", "item", template_compendium_treasure_32
		  me.AddRowWithTagAndPicture "Feat", "feat", template_compendium_feat_32
		  me.AddRowWithTagAndPicture "Spell", "spell", template_compendium_magic_32
		  me.AddRowWithTagAndPicture "Creature", "monster", template_compendium_creature_32
		  'me.AddRowWithTagAndPicture "NPC", "monster", templatesmall_dragon
		  #if DebugBuild then
		    me.AddRow "-"
		    me.AddRowWithTagAndPicture "Template", "itemtemplate", template_compendium_32
		  #endif
		  
		  me.SelectedRowIndex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events arSourceType
	#tag Event
		Sub ActionAdd()
		  if Keyboard.AsyncAltKey then
		    DuplicateItem
		  else
		    AppendToDocument( popCompendiumTypes.RowTagAt( popCompendiumTypes.SelectedRowIndex ).StringValue )
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionRemove()
		  RemoveFromDocument
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionDuplicate()
		  DuplicateItem
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ecSourceEditor
	#tag Event
		Sub Open()
		  me.Embed( SourceInfoEditorPanel )
		  me.AdjustScroller
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events scCoverImage
	#tag Event
		Function BackdropChanged(Obj as Variant) As Boolean
		  
		  
		  var TheSelectedImageFile as FolderItem
		  if obj IsA FolderItem then
		    TheSelectedImageFile = obj
		  end if
		  
		  
		  // File extension
		  var fileextension as string = "jpg"
		  if obj IsA FolderItem then
		    var objFile as FolderItem = obj
		    
		    fileextension = objFile.Extension
		  elseif obj IsA Picture then
		    var objImage as Picture = obj
		    
		    if objImage.HasAlphaChannel then
		      fileextension = "png"
		    end if
		  end if
		  
		  // abbreviation
		  var postfix as String
		  if Source <> Nil and Source.SourceInfo <> Nil and Source.SourceInfo.Lookup("abbreviation", "") <> "" then
		    postfix = "-" + Source.SourceInfo.Value("abbreviation").StringValue.Lowercase
		  end if
		  
		  
		  // Set destination
		  var imageDestination as FolderItem = Source.CoverImageFile
		  if imageDestination <> Nil and imageDestination.Exists then
		    imageDestination = imageDestination.Parent.Child( imageDestination.NameNoExtension + "." + fileextension )
		  else
		    imageDestination = Source.ParentFolder.Child( "cover" + postfix + "." + fileextension )
		  end if
		  
		  
		  
		  if imageDestination <> Nil then
		    
		    if imageDestination.Exists then 'me.ImageFile <> Nil and me.ImageFile.Exists then
		      Var d As New MessageDialog                   ' declare the MessageDialog object
		      Var b As MessageDialogButton                 ' for handling the result
		      d.IconType = MessageDialog.IconTypes.Caution ' display warning icon
		      d.ActionButton.Caption = "Save"
		      d.CancelButton.Visible = True                ' show the Cancel button
		      'd.AlternateActionButton.Visible = True       ' show the "Don't Save" button
		      'd.AlternateActionButton.Caption = "Don't Save"
		      d.Message = "Do you want to overwrite the existing image?"
		      'd.Explanation = "If you don't save, your changes will be lost."
		      
		      b = d.ShowModal                              ' display the dialog
		      Select Case b                                ' determine which button was pressed.
		      Case d.ActionButton
		        ' user pressed Save
		      Case d.AlternateActionButton
		        ' user pressed Don't Save
		      Case d.CancelButton
		        ' user pressed Cancel
		        Return False
		      End Select
		      
		    end if
		    
		  end if
		  
		  
		  // remove existing file
		  if imageDestination <> Nil and imageDestination.Exists then
		    #if TargetMacOS then
		      imageDestination.MoveToTrash
		    #else
		      imageDestination.Delete
		    #endif
		  end if
		  
		  // Save new image
		  if Obj IsA FolderItem then
		    var TheImageFile as FolderItem = obj
		    TheImageFile.CopyTo( imageDestination )
		    
		    Source.CoverImageFile = TheImageFile
		    Source.ResetImages
		    
		  elseif Obj IsA Picture then
		    var image as Picture = Obj
		    
		    if image.HasAlphaChannel then
		      image.Save( imageDestination, Picture.Formats.PNG )
		    else
		      image.Save( imageDestination, Picture.Formats.JPEG, Picture.QualityHigh )
		    end if
		    
		    Source.CoverImageFile = imageDestination
		    Source.ResetImages
		  end if
		  
		  
		  me.Image = Picture.Open( imageDestination )
		  me.ImageFile = imageDestination 'TheSource.CoverImageFile
		  
		  
		  cvsCover.Invalidate
		  cvsHeader.Invalidate
		  
		  me.Invalidate
		  self.Invalidate
		  Return true
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.BorderColor = Color.TextColor
		  'me.BorderColor = SelectionColor 'HeaderStartColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub ImageRemoved()
		  Source.CoverImageFile = Nil
		  Source.ResetImages
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ppEditorPanels
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EmbedBackgrounds
	#tag Event
		Sub Open()
		  me.Height = me.Parent.Height
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EmbedClass
	#tag Event
		Sub Open()
		  me.Height = me.Parent.Height
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EmbedCreature
	#tag Event
		Sub Open()
		  me.Height = me.Parent.Height
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EmbedEquipment
	#tag Event
		Sub Open()
		  me.Height = me.Parent.Height
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EmbedFeats
	#tag Event
		Sub Open()
		  me.Height = me.Parent.Height
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EmbedSpecies
	#tag Event
		Sub Open()
		  me.Height = me.Parent.Height
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EmbedSpells
	#tag Event
		Sub Open()
		  me.Height = me.Parent.Height
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstXML
	#tag Event
		Sub SelectionChanged()
		  
		  arSourceType.RemoveEnabled = me.SelectedRowIndex > -1
		  arSourceType.DuplicateEnabled = me.SelectedRowIndex > -1
		  
		  txtXML.Text = ""
		  
		  var TheSourceBook as String = Source.SourceInfo.Lookup("name", "")
		  var IsHomebrew as Boolean = Source.SourceInfo.Lookup("category","").StringValue.Contains("Homebrew")
		  'var Postfix as String
		  'if IsHomebrew then
		  'Postfix = " (Homebrew)"
		  'end if
		  
		  if IsHomebrew and Source.SourceInfo.Lookup("author", "").StringValue <> "" and Source.SourceInfo.Lookup("publisher", "").StringValue = "" then
		    TheSourceBook = TheSourceBook + " by " + Source.SourceInfo.Lookup("author", "").StringValue
		  end if
		  
		  var lastPageNr as String
		  
		  
		  // Update list
		  var oldNode, newNode as XMLNode
		  
		  Select case ppEditorPanels.Value
		    
		  case 0 // BLANK
		    
		  case 1 // Backgrounds
		    oldNode = cBackground.xNode
		    newNode = cBackground.GetXMLNode
		    
		    lastPageNr = cBackground.SourcePageNr
		    
		  case 2 // Class
		    oldNode = cClass.xNode
		    newNode = cClass.GetXMLNode
		    
		    'lastPageNr = cClass.SourcePageNr
		    
		    
		  case 3 // Creature
		    oldNode = cCreature.xNode
		    newNode = cCreature.GetXMLNode
		    
		    lastPageNr = cCreature.SourcePageNr
		    
		  case 4 // Equipment
		    oldNode = cEquipment.xNode
		    newNode = cEquipment.GetXMLNode
		    
		    lastPageNr = cEquipment.SourcePageNr
		    
		  case 5 // Feats
		    oldNode = cFeat.xNode
		    newNode = cFeat.GetXMLNode
		    
		    lastPageNr = cFeat.SourcePageNr
		    
		  case 6 // Species
		    oldNode = cSpecies.xNode
		    newNode = cSpecies.GetXMLNode
		    
		    lastPageNr = cSpecies.SourcePageNr
		    
		  case 7 // Spells
		    oldNode = cSpell.xNode
		    newNode = cSpell.GetXMLNode
		    
		    lastPageNr = cSpell.SourcePageNr
		    
		  case 8 // #TEXT
		    ' soldNode.Value = " " + txtXML.Text + " "
		    
		  else
		    Break
		    
		  End Select
		  
		  if oldNode <> Nil and newNode <> Nil then 'and newNode <> Nil and oldNode.ToString = newNode.ToString then
		    for row as Integer = me.LastRowIndex DownTo 0
		      if me.RowTagAt( row ) Isa XMLNode and me.RowTagAt( row ) = oldNode then
		        me.CellTextAt( row, 0 ) = newNode.ValueOfNodeWithName("name")
		        me.RowTagAt( row ) = newNode
		      end if
		    next
		  end if
		  
		  cBackground.Reset
		  cClass.Reset
		  cCreature.Reset
		  cEquipment.Reset
		  cFeat.Reset
		  cSpell.Reset
		  cSpecies.Reset
		  
		  if NOT Keyboard.AsyncAltKey then
		    EmbedBackgrounds.ScrollToTop
		    EmbedClass.ScrollToTop
		    EmbedCreature.ScrollToTop
		    EmbedEquipment.ScrollToTop
		    EmbedFeats.ScrollToTop
		    EmbedSpells.ScrollToTop
		  end if
		  
		  
		  
		  
		  // Process selected node
		  if me.SelectedRowIndex > -1 and me.RowTagAt( me.SelectedRowIndex ) IsA XMLNode then
		    var currentNode as XMLNode = me.RowTagAt( me.SelectedRowIndex )
		    
		    TheSourceBook = ComposeSource( currentNode, TheSourceBook, lastPageNr, Source.SourceInfo.Lookup( "category", "" ).StringValue )
		    
		    Select case currentNode.Name
		      
		    case "background"
		      ppEditorPanels.Value = 1
		      cBackground.SetData( currentNode, TheSourceBook )
		      
		    case "class"
		      ppEditorPanels.Value = 2
		      cClass.SetData( currentNode, TheSourceBook )
		      
		    case "monster", "creature"
		      ppEditorPanels.Value = 3
		      cCreature.SetData( currentNode, TheSourceBook )
		      
		    case "item"
		      ppEditorPanels.Value = 4
		      cEquipment.SetData( currentNode, TheSourceBook )
		      
		    case "feat"
		      ppEditorPanels.Value = 5
		      cFeat.SetData( currentNode, TheSourceBook )
		      
		    case "race", "species"
		      ppEditorPanels.Value = 6
		      cSpecies.SetData( currentNode, TheSourceBook )
		      
		    case "spell"
		      ppEditorPanels.Value = 7
		      cSpell.SetData( currentNode, TheSourceBook )
		      
		    case "itemtemplate"
		      //
		      
		    case "#comment"
		      ppEditorPanels.Value = 8
		      txtXML.Text = currentNode.Value.Trim
		      
		      if txtXML.Text.Contains( ">" ) and NOT txtXML.Text.StartsWith("<") then
		        txtXML.Text = "<" + txtXML.Text + ">"
		      end if
		      
		    case "itemtemplate"
		      //
		      
		    else
		      Break
		      
		      
		    end Select
		    
		    
		  else
		    // Nothing selected
		    
		    '#if DebugBuild then
		    'var xmlDoc as new XMLDocument( me.xDoc.ToString )
		    'xmlDoc.IndentDocument
		    '
		    'txtXML.Text = xmlDoc.ToString
		    'ppEditorPanels.Value = 8
		    '#else
		    ppEditorPanels.Value = 0
		    '#endif
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  
		  var AppendTypeMenu as new DesktopMenuItem( "Add New" )
		  
		  AppendTypeMenu.AddMenu new DesktopMenuItem( "Specie", "Append:race" )
		  AppendTypeMenu.AddMenu new DesktopMenuItem( "Class", "Append:class" )
		  AppendTypeMenu.AddMenu new DesktopMenuItem( "Subclass", "Append:subclass" )
		  AppendTypeMenu.AddMenu new DesktopMenuItem( "Background", "Append:background" )
		  AppendTypeMenu.AddMenu new DesktopMenuItem( "Equipment", "Append:item" )
		  AppendTypeMenu.AddMenu new DesktopMenuItem( "Feat", "Append:feat" )
		  AppendTypeMenu.AddMenu new DesktopMenuItem( "Spell", "Append:spell" )
		  AppendTypeMenu.AddMenu new DesktopMenuItem( "Creature", "Append:monster" )
		  'AppendTypeMenu.AddMenu new DesktopMenuItem( "NPC", "Append:npc" )
		  
		  base.AddMenu AppendTypeMenu
		  
		  
		  if lstXML.SelectedRowIndex > -1 then
		    base.AddMenu new MenuItem("-")
		    
		    var name as string = lstXML.CellTextAt( lstXML.SelectedRowIndex, 0 )
		    
		    base.AddMenu new MenuItem("Duplicate """ + name + """")
		    base.AddMenu new MenuItem("Remove """ + name + """")
		    base.AddMenu new MenuItem("-")
		    base.AddMenu new MenuItem("Copy """ + name + """")
		  end if
		  
		  var c as new Clipboard
		  if c.Text.StartsWith("<") and c.Text.EndsWith(">") then
		    var xNode as XMLNode = c.Text.ToXML
		    if xNode <> Nil then
		      base.AddMenu new MenuItem("Paste """ + xNode.ValueOfNodeWithName("name") + """", xNode)
		    end if
		  end if
		  
		  base.AddMenu new MenuItem("-")
		  
		  var MovetoXMLFileMenu as new DesktopMenuItem( "Move To" )
		  for each file as FolderItem in Source.XMLFiles
		    MovetoXMLFileMenu.AddMenu new DesktopMenuItem( file.Name, file )
		  next
		  
		  base.AddMenu MovetoXMLFileMenu
		  
		  'base.AddMenu new MenuItem( "Sort by Name", "SortByName" )
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  
		  if selectedItem <> Nil then
		    
		    // Move between files
		    if selectedItem.Tag IsA FolderItem and me.SelectedRowIndex > -1 and me.RowTagAt( me.SelectedRowIndex ) IsA XMLNode then
		      
		      var xNode as XMLNode = me.RowTagAt( me.SelectedRowIndex )
		      var TheXMLDestination as FolderItem = selectedItem.Tag
		      
		      if TheXMLDestination <> Nil and TheXMLDestination.Exists and TheXMLDestination.IsReadable and TheXMLDestination.IsWriteable then
		        
		        var xDoc as new XMLDocument( TheXMLDestination )
		        if xDoc <> Nil and xDoc.FirstChild <> Nil then
		          var xRoot as XMLNode = xDoc.FirstChild
		          
		          xRoot.AppendChildCopy( xNode )
		        end if
		        
		        xDoc.SaveXMLFormatted( TheXMLDestination, AppPrefs.IndentCharacters )
		        
		        
		        var OriginXMLFile as FolderItem
		        if popSources.RowTagAt( popSources.SelectedRowIndex ) IsA FolderItem then
		          OriginXMLFile = popSources.RowTagAt( popSources.SelectedRowIndex )
		          
		          me.xDoc.SaveXMLFormatted( OriginXMLFile )
		        end if
		        
		        
		      end if
		      xNode.Parent.RemoveChild( xNode )
		      
		      var lindex as Integer = me.SelectedRowIndex
		      
		      me.RemoveRowAt( me.SelectedRowIndex )
		      
		      if lindex <= me.LastRowIndex then
		        me.SelectedRowIndex = lindex
		      elseif lindex-1 > -1 then
		        me.SelectedRowIndex = lindex-1
		      end if
		      
		      SaveData
		      
		      MessageBox "Moved " + xNode.ValueOfNodeWithName("name") + " to " + TheXMLDestination.Name + "."
		      
		      
		      // Templates
		    elseif selectedItem.Tag <> Nil and selectedItem.Tag.Type = Variant.TypeString and selectedItem.Tag.StringValue.StartsWith("Append:") then
		      var type as string = selectedItem.Tag.StringValue.Replace("Append:","")
		      
		      AppendToDocument(type)
		      
		      // Other
		    else
		      
		      if selectedItem.Text.StartsWith("Remove") then
		        RemoveFromDocument
		        
		      elseif selectedItem.Text.StartsWith("Duplicate") then
		        DuplicateItem
		        
		      elseif selectedItem.Text.StartsWith("Copy") then
		        if me.RowTagAt( me.SelectedRowIndex ) IsA XMLNode then
		          var xNode as XMLNode = me.RowTagAt( me.SelectedRowIndex )
		          
		          var c as new Clipboard
		          c.Text = xNode.ToString
		        end if
		        
		      elseif selectedItem.Text.StartsWith("Paste") then
		        if selectedItem.Tag IsA XMLNode then
		          var xNode as XMLNode = selectedItem.Tag
		          
		          me.xDoc.FirstChild.AppendChildCopy( xNode )
		          me.BuildList( me.xDoc )
		          me.SelectedRowIndex = me.LastRowIndex
		        end if
		        
		        
		      elseif selectedItem.Text = "Sort by Name" then
		        me.xDoc = SortXMLDocumentByName( me.xDoc )
		        me.BuildList( me.xDoc )
		        
		        
		        
		      end if
		    end if
		    
		    Return True
		    
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function KeyDown(Key as String) As Boolean
		  dim AscKey as Integer = Asc( key )
		  
		  if Keyboard.AsyncCommandKey then
		    
		    Select case AscKey
		      
		    case 8', 127 // delete
		      RemoveFromDocument
		      Return True
		      
		    case 13, 110 // Return, nxw
		      if me.SelectedRowIndex > -1 then
		        var type as string = me.CellTextAt( me.SelectedRowIndex, 1 )
		        AppendToDocument( type )
		      end if
		      Return True
		      
		    case 100 // cmnd + d = Duplicate
		      DuplicateItem
		      Return True
		      
		    End Select
		    
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub Openening()
		  'me.ColumnSortTypeAt(0) = DesktopListBox.SortTypes.NotSortable
		  'me.ColumnSortTypeAt(1) = DesktopListBox.SortTypes.NotSortable
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bvlSourceTypes
	#tag Event
		Sub Action(index as Integer)
		  for i as Integer = 0 to 6
		    bvlSourceTypes(i).Value = (i = index)
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
