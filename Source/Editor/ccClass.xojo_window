#tag Window
Begin ContainerControl ccClass
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
   Height          =   1995
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   680
   Begin Canvas cvsClassFeatures
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   837
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   1138
      Transparent     =   True
      Visible         =   True
      Width           =   680
      Begin ccTraits cClassFeatures
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FeatureType     =   "trait"
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   512
         Index           =   -2147483648
         InitialParent   =   "cvsClassFeatures"
         IsAutoLevelFeature=   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         Source          =   ""
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Class features gained at the indicated level. If a feature is optional, set ""optional"" to 'YES'. If the level isn't automatically added, set or correct it by clicking on the level and entering the desired level."
         Top             =   1138
         Transparent     =   True
         UseMode         =   ""
         Visible         =   True
         Width           =   640
      End
      Begin Label lblCounter
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
         InitialParent   =   "cvsClassFeatures"
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
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Trackers:"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   1662
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   150
      End
      Begin Listbox lstCounter
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   5
         ColumnWidths    =   "50,*,50,100,*"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   24
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLinesHorizontalStyle=   0
         GridLinesVerticalStyle=   0
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   200
         Index           =   -2147483648
         InitialParent   =   "cvsClassFeatures"
         InitialValue    =   "Level	Name	Value	Reset	Subclass"
         Italic          =   False
         Left            =   182
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Tracker for usage of class or subclass features. (e.g., Rage or Ki Points)"
         Top             =   1662
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   478
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      BeginSegmented AddRemoveEditButton areCounters
         AddEnabled      =   False
         EditEnabled     =   False
         Enabled         =   True
         Height          =   24
         Index           =   -2147483648
         InitialParent   =   "cvsClassFeatures"
         Left            =   90
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacControlStyle =   0
         RemoveEnabled   =   False
         Scope           =   0
         Segments        =   "+\n\nFalse\r-\n\nFalse\r✏️\n\nFalse"
         SelectionType   =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   False
         Top             =   1694
         Transparent     =   False
         Visible         =   True
         Width           =   72
      End
      Begin ccEditorSpells cSpells
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   100
         Index           =   -2147483648
         InitialParent   =   "cvsClassFeatures"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   1874
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   640
      End
   End
   Begin ccEditorTextField cName
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      FieldName       =   ""
      HasBackgroundColor=   False
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      IsPrefixedNumber=   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Class name. (e.g. Barbarian, Sorcerer, Warlock)"
      Top             =   20
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin Canvas cvsMainClass
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   1004
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   122
      Transparent     =   True
      Visible         =   True
      Width           =   680
      Begin ccEditorTextField cHitDice
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         IsPrefixedNumber=   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MultipleOption  =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "Hit Die. Input the die number. (e.g., 8 for a d8)"
         Top             =   122
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   250
      End
      Begin ccEditorTextField cNumSkills
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         IsPrefixedNumber=   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MultipleOption  =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "Number of class skills to be chosen from when creating a character."
         Top             =   326
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   250
      End
      Begin ccEditorTextField cProficienciesArmor
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         IsPrefixedNumber=   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MultipleOption  =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "Armor and shield proficiencies."
         Top             =   156
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   640
      End
      Begin ccEditorTextField cProficienciesWeapons
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         IsPrefixedNumber=   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MultipleOption  =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "Weapon proficiencies."
         Top             =   190
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   640
      End
      Begin ccEditorTextField cProficienciesTools
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         IsPrefixedNumber=   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MultipleOption  =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "Tool proficiencies."
         Top             =   224
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   640
      End
      Begin ccEditorTextField cWealth
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         IsPrefixedNumber=   False
         Left            =   296
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MultipleOption  =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "Starting wealth. Enter a formula that determines a 1st-level character's starting gold."
         Top             =   122
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   250
      End
      Begin ccEditorTextField cProficienciesSavingThrows
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         IsPrefixedNumber=   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MultipleOption  =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "Saving throw proficiencies that players can choose from. Enter names of abilities separated by commas."
         Top             =   258
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   640
      End
      Begin ccEditorTextField cProficienciesSkills
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         IsPrefixedNumber=   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MultipleOption  =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "Class skill proficiencies that players can choose from. Enter names of skills separated by commas"
         Top             =   292
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   640
      End
      Begin Label lblSpellsOptional
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
         InitialParent   =   "cvsMainClass"
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Spells Optional:"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   394
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chkSpellsOptional
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "YES"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         Italic          =   False
         Left            =   157
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Check if the class's spell slots are optional."
         Top             =   394
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   100
      End
      Begin Listbox lstSpellsTable
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   12
         ColumnWidths    =   "55,*,*, 40, 40, 40, 40, 40, 40, 40, 40, 40"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   24
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLinesHorizontalStyle=   0
         GridLinesVerticalStyle=   4
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   511
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         InitialValue    =   "Level	Cantrips Known	Spells Known	1st	2nd	3rd	4th	5th	6th	7th	8th	9th\n1st	0	0	0	0	0	0	0	0	0	0	0\n2nd	0	0	0	0	0	0	0	0	0	0	0\n3rd	0	0	0	0	0	0	0	0	0	0	0\n4th	0	0	0	0	0	0	0	0	0	0	0\n5th	0	0	0	0	0	0	0	0	0	0	0\n6th	0	0	0	0	0	0	0	0	0	0	0\n7th	0	0	0	0	0	0	0	0	0	0	0\n8th	0	0	0	0	0	0	0	0	0	0	0\n9th	0	0	0	0	0	0	0	0	0	0	0\n10th	0	0	0	0	0	0	0	0	0	0	0\n11th	0	0	0	0	0	0	0	0	0	0	0\n12th	0	0	0	0	0	0	0	0	0	0	0\n13th	0	0	0	0	0	0	0	0	0	0	0\n14th	0	0	0	0	0	0	0	0	0	0	0\n15th	0	0	0	0	0	0	0	0	0	0	0\n16th	0	0	0	0	0	0	0	0	0	0	0\n17th	0	0	0	0	0	0	0	0	0	0	0\n18th	0	0	0	0	0	0	0	0	0	0	0\n19th	0	0	0	0	0	0	0	0	0	0	0\n20th	0	0	0	0	0	0	0	0	0	0	0"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Spell slots per class and spell level. Optional 'Spells Known' counter."
         Top             =   418
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   640
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin ccTraits cClassTraits
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FeatureType     =   "trait"
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   150
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         IsAutoLevelFeature=   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         Source          =   ""
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Optional class description traits."
         Top             =   941
         Transparent     =   True
         UseMode         =   ""
         Visible         =   True
         Width           =   640
      End
      Begin DesktopLabel lblSpellsDescription
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         Italic          =   False
         Left            =   296
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Spell Slots per Spell Level"
         TextAlignment   =   2
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   394
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   364
      End
      Begin ccEditorTextField cSpellAbility
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         IsPrefixedNumber=   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MultipleOption  =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "Spellcasting ability. (e.g., Intelligence, Charisma, etc.)"
         Top             =   360
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   328
      End
      Begin ccEditorTextField cSlotsReset
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         IsPrefixedNumber=   False
         Left            =   360
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MultipleOption  =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "Spell slots reset on short or long rests."
         Top             =   360
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin ccEditorTextField cAbilityScoreImprovementLevels
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         FieldName       =   ""
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "cvsMainClass"
         IsPrefixedNumber=   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MultipleOption  =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "A comma separated list of levels on which an Ability Score Improvement occurs."
         Top             =   1103
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   640
      End
   End
   Begin Label lblSubclass
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
      InitialParent   =   ""
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Subclass:"
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   56
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   BeginSegmented AddRemoveButton areSubclasses
      AddEnabled      =   False
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   604
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   False
      Top             =   54
      Transparent     =   False
      Visible         =   True
      Width           =   48
   End
   Begin PopupMenuPro popSubclasses
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialValue    =   "Add or select a subclass."
      Italic          =   False
      Left            =   182
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   56
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   410
   End
   Begin ccEditorTextField cSource
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      FieldName       =   ""
      HasBackgroundColor=   False
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      IsPrefixedNumber=   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "The name of the source material and a page number this class came from. (e.g. Player's Handbook p. 128)"
      Top             =   88
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h1
		Protected Sub BuildPopSubclasses()
		  popSubclasses.RemoveAllRows
		  
		  popSubclasses.AddRow new DesktopMenuItem( "Main Class Features", xClass )
		  'popSubclasses.RowTagAt( popSubclasses.LastAddedRowIndex ) = xClass
		  
		  if SubclassNames.LastIndex > -1 then
		    popSubclasses.AddRow "-"
		    
		    SubclassNames.SortWith( xSubclasses )
		    
		    for index as Integer = 0 to SubclassNames.LastIndex
		      popSubclasses.AddRow new DesktopMenuItem( SubclassNames(index), xSubclasses(index) )
		      'popSubclasses.RowTagAt xSubclasses(index)
		    next
		  end if
		  
		  popSubclasses.SelectedRowIndex = 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CompileToXMLNode(isMainClass as boolean)
		  var xClass as XMLNode = GetCompiledXMLNode( Nil, isMainClass )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetCompiledXMLNode(TheNode as XMLNode = Nil, isMainClass as Boolean) As XMLNode
		  
		  var xmlClass as XMLNode
		  
		  'var isMainClass as Boolean = False
		  
		  if TheNode <> Nil then
		    xmlClass = TheNode
		    
		    'isMainClass = ( TheNode.ValueOfNodeWithName("hd") <> "" )
		    
		  elseif popSubclasses.RowTagAt( popSubclasses.SelectedRowIndex ) IsA XMLNode then
		    xmlClass = popSubclasses.RowTagAt( popSubclasses.SelectedRowIndex )
		    
		    'isMainClass = ( popSubclasses.SelectedRowIndex = 0 )
		    
		  else
		    var xDoc as new XMLDocument
		    var xRoot as XmlNode = xDoc.AppendChild( xDoc.CreateElement( "compendium" ) )
		    xmlClass = xRoot.AppendNewChild("class")
		    
		  end if
		  xmlClass.RemoveAllChildren
		  
		  xmlClass.AppendSimpleChild( "name", cName.Value )
		  
		  
		  'if popSubclasses.SelectedRowIndex = 0 then
		  if isMainClass and cHitDice.Value <> ""  then
		    
		    'if cClassFeatures.lstTraits.LastRowIndex > -1 or TheNode.ValueOfNodeWithName("hd") <> "" then
		    
		    // Hit Dice
		    if cHitDice.Value.Trim <> "" then
		      xmlClass.AppendSimpleChild( "hd", cHitDice.Value.Trim )
		    else
		      xmlClass.AppendSimpleChild( "hd", Nil )
		    end if
		    
		    // Proficiency
		    var proficiencies as String = cProficienciesSavingThrows.Value
		    if proficiencies <> "" then
		      proficiencies = proficiencies + ", " + cProficienciesSkills.Value
		    else
		      proficiencies = cProficienciesSkills.Value
		    end if
		    
		    if proficiencies.Trim <> "" then
		      xmlClass.AppendSimpleChild( "proficiency", proficiencies.Trim )
		    else
		      'xmlClass.AppendSimpleChild( "proficiency", Nil )
		    end if
		    
		    // Number of Skills
		    if cNumSkills.Value.Trim <> "" then
		      xmlClass.AppendSimpleChild( "numSkills", cNumSkills.Value.Trim )
		    else
		      xmlClass.AppendSimpleChild( "numSkills", Nil )
		    end if
		    
		    // Armor Proficiency
		    if cProficienciesArmor.Value.Trim <> "" then
		      xmlClass.AppendSimpleChild( "armor", cProficienciesArmor.Value )
		    else
		      xmlClass.AppendSimpleChild( "armor", Nil )
		    end if
		    
		    // Weapon Proficiency
		    if cProficienciesWeapons.Value.Trim <> "" then
		      xmlClass.AppendSimpleChild( "weapons", cProficienciesWeapons.Value )
		    else
		      xmlClass.AppendSimpleChild( "weapons", Nil )
		    end if
		    
		    // Tools Proficiency
		    if cProficienciesTools.Value.Trim <> "" then
		      xmlClass.AppendSimpleChild( "tools", cProficienciesTools.Value )
		    else
		      xmlClass.AppendSimpleChild( "tools", Nil )
		    end if
		    
		    // Wealth
		    if cWealth.Tag <> "" then
		      xmlClass.AppendSimpleChild( "wealth", cWealth.Tag )
		    else
		      'xmlClass.AppendSimpleChild( "wealth", Nil )
		    end if
		    
		    // SpellAbility
		    if cSpellAbility.Value.Trim <> "" then
		      xmlClass.AppendSimpleChild( "spellAbility", cSpellAbility.Value.Trim )
		    else
		      'xmlClass.AppendSimpleChild( "spellAbility", Nil )
		    end if
		    
		    // slotsReset
		    if cSlotsReset.Tag.Trim <> "" then
		      xmlClass.AppendSimpleChild( "slotsReset", cSlotsReset.Tag )
		    else
		      xmlClass.AppendSimpleChild( "slotsReset", Nil )
		    end if
		    
		    
		    // Spell Slots
		    for row as Integer = 0 to lstSpellsTable.LastRowIndex
		      var Slots() as String
		      
		      for column as Integer = 0 to lstSpellsTable.LastColumnIndex
		        
		        if column = 0 or column = 2 then
		          // skip
		        else
		          slots.Add lstSpellsTable.CellValueAt( row, column )
		        end if
		        
		      next // @NEXT column
		      
		      
		      while slots.LastIndex > -1 and (Slots( slots.LastIndex ) = "0" or Slots( slots.LastIndex ) = "")
		        slots.RemoveAt( slots.LastIndex )
		      wend
		      
		      
		      if slots.LastIndex > -1 then
		        var xAutolevel as XMLNode = xmlClass.AppendNewChild( "autolevel" )
		        xAutolevel.SetAttribute( "level", str( row+1 ) )
		        
		        var xSlots as XMLNode = xAutolevel.AppendNewChild("slots")
		        if chkSpellsOptional.Value then
		          xSlots.SetAttribute( "optional", "YES" )
		        end if
		        xSlots.SetValue( StringFromArray( Slots, "," ) )
		        
		      end if
		      
		      
		    next // @NEXT Row
		    
		    
		    // Spells Known
		    for row as Integer = 0 to lstSpellsTable.LastRowIndex
		      if lstSpellsTable.CellValueAt( row, 2 ) <> "" and lstSpellsTable.CellValueAt( row, 2 ) <> "0" then
		        
		        var xAutolevel as XMLNode = xmlClass.AppendNewChild( "autolevel" )
		        xAutolevel.SetAttribute( "level", Str( row+1 ) )
		        
		        var xCounter as XMLNode = xAutolevel.AppendNewChild( "counter" )
		        xCounter.AppendSimpleChild( "name", "Spells Known" )
		        xCounter.AppendSimpleChild( "value", lstSpellsTable.CellValueAt( row, 2 ) )
		        
		      end if
		    next
		    
		    'end if // @END class.hasFeatures
		    
		    
		  end if // IsMainClass and HitDice <> ""
		  
		  if isMainClass then
		    
		    // Traits
		    if cClassTraits.lstTraits.LastRowIndex > -1 then
		      for row as Integer = 0 to cClassTraits.lstTraits.LastRowIndex
		        if cClassTraits.lstTraits.RowTagAt( row ) IsA XMLNode then
		          var xChild as XMLNode = cClassTraits.lstTraits.RowTagAt( row )
		          
		          // Add page source to first trait
		          if row = 0 and NOT xChild.ToString.Contains("Source:") and cSource.Value <> "" then
		            AddSourceTo( xChild, cSource.Value )
		          end if
		          
		          xmlClass.AppendChildCopy( xChild )
		        end if
		      next
		    end if // @END classTraits.hasFeatures
		    
		  end if // IsMainClass
		  
		  
		  'end if // @END popsubclass.listindex = 0
		  
		  
		  
		  // Autolevel -> Features
		  'if cClassFeatures.lstTraits.LastRowIndex > -1 then
		  var xSubclassNames() as string
		  var currentSubclassName as string
		  
		  
		  for level as Integer = 1 to 20
		    var xAutoLevel as XMLNode
		    
		    
		    // Features
		    for row as Integer = 0 to cClassFeatures.lstTraits.LastRowIndex 
		      
		      if cClassFeatures.lstTraits.CellValueAt( row, 0 ) = Str( level ) then
		        
		        if xAutoLevel = Nil then
		          xAutoLevel = xmlClass.AppendNewChild( "autolevel" )
		          xAutoLevel.SetAttribute("level", Str( level ) )
		        end if
		        
		        if cClassFeatures.lstTraits.RowTagAt( row ) IsA XMLNode then
		          var xFeature as XMLNode = cClassFeatures.lstTraits.RowTagAt( row )
		          
		          // Add page source to first trait
		          'if NOT xFeature.ToString.Contains("Source:") and cSource.Value <> "" then
		          'var TheSource as String = cSource.Value
		          'if TheSource.Contains(" p. ") then
		          'TheSource = cSource.Value.NthField(" p. ", 1 )
		          'end if
		          'if TheSource.Contains(",") then
		          'TheSource = TheSource.NthField(",", 1)
		          'end if
		          'if TheSource.Contains( "(" ) then
		          'TheSource = TheSource.NthField("(", 1)
		          'end if
		          'TheSource = TheSource.Trim
		          '
		          'var PageNr as String = cClassFeatures.lstTraits.CellValueAt( row, 2 )
		          ''var PostFix as String = cSource.Value.Match("( \(.*?\))", 1 )
		          ''TheSource = TheSource.ReplaceAllRegEx( "( \(.*?\))", "" )
		          ''if IsHomebrew then
		          ''PostFix = " (Homebrew)"
		          ''end if
		          '
		          'if PageNr <> "" then
		          'TheSource = TheSource + " p. " + PageNr' + PostFix
		          'end if
		          '
		          'if PostFix <> "" then
		          'TheSource = TheSource + PostFix
		          'end if
		          'TheSource = TheSource.Trim
		          '
		          'AddSourceTo( xFeature, TheSource )
		          'end if
		          
		          
		          xAutoLevel.AppendChildCopy( xFeature )
		        end if
		        
		        'Break
		        
		      end if
		      
		      
		    next // @NEXT cClassFeatures.Row
		    
		    
		    xSubclassNames = Compendium.GetSubclassNames( xmlClass )
		    if xSubclassNames.LastIndex > -1 then
		      currentSubclassName = xSubclassNames(0)
		    end if
		    
		    
		    // Counters
		    for row as Integer = 0 to lstCounter.LastRowIndex
		      
		      if lstCounter.CellValueAt( row, 0 ) = Str( level ) then
		        
		        if xAutoLevel = Nil then
		          xAutoLevel = xmlClass.AppendNewChild( "autolevel" )
		          xAutoLevel.SetAttribute("level", Str( level ) )
		        end if
		        
		        var xCounter as XMLNode = xAutoLevel.AppendNewChild( "counter" )
		        if lstCounter.CellValueAt( row, 1 ).Trim <> "" and lstCounter.CellValueAt( row, 2 ).Trim <> "" then
		          xCounter.AppendSimpleChild( "name", lstCounter.CellValueAt( row, 1 ).Trim )
		          xCounter.AppendSimpleChild( "value", lstCounter.CellValueAt( row, 2 ).Trim )
		          xCounter.AppendSimpleChild( "reset", lstCounter.CellValueAt( row, 3 ).Trim.Left(1).Uppercase )
		          
		          if lstCounter.CellValueAt( row, 4 ).Trim <> "" then
		            xCounter.AppendSimpleChild( "subclass", lstCounter.CellValueAt( row, 4 ).Trim )
		          end if
		        end if
		        
		        
		        var MoveToClass as XMLNode
		        if xCounter.ValueOfNodeWithName("subclass") = "" and NOT isMainClass then 'popSubclasses.SelectedRowIndex > 0 then
		          // move counter to main class
		          MoveToClass = xClass
		          
		        elseif xCounter.ValueOfNodeWithName("subclass") <> "" and xCounter.ValueOfNodeWithName("subclass") <> currentSubclassName  then
		          // Move counter to subclass
		          if SubclassNames.IndexOf( xCounter.ValueOfNodeWithName( "subclass" ) ) > -1 then
		            MoveToClass = xSubclasses( SubclassNames.IndexOf( xCounter.ValueOfNodeWithName( "subclass" ) ) )
		          end if
		          
		        end if
		        
		        if MoveToClass <> Nil then
		          for index as Integer = MoveToClass.ChildCount-1 DownTo 0
		            var xChild as XMLNode = MoveToClass.Child(index)
		            
		            if xChild.Name = "autolevel" and xChild.GetAttribute("level") = Str(level) then
		              xChild.AppendChildCopy( xCounter )
		              xCounter.Parent.RemoveChild( xCounter )
		            end if
		          next
		        end if
		        
		        
		      end if
		      
		    next
		    
		    
		    if cAbilityScoreImprovementLevels.Values.Contains( Str( level ) ) then
		      
		      if xAutoLevel = Nil then
		        xAutoLevel = xmlClass.AppendNewChild( "autolevel" )
		        xAutoLevel.SetAttribute("level", Str( level ) )
		      end if
		      
		      xAutoLevel.SetAttribute("scoreImprovement", "YES")
		    end if
		    
		    // Remove empty xautolevels
		    if xAutoLevel <> Nil and xAutoLevel.FirstChild = Nil then
		      xAutoLevel.Parent.RemoveChild( xAutoLevel )
		    end if
		  next // @NEXT Level
		  
		  
		  if xSubclassNames.LastIndex > -1 then 'and txtSpells.Text.trim <> "" then
		    SaveSubclassSpells( cName.Value + " (" + xSubclassNames(0) + ")", cSpells.Value.SplitString(",") )
		  elseif isMainClass then
		    SaveSubclassSpells( cName.Value, cSpells.Value.SplitString(",") )
		  end if
		  
		  
		  Return xmlClass
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetXMLNode() As XMLNode
		  // Compile current node
		  CompileToXMLNode( popSubclasses.SelectedRowIndex = 0 )
		  
		  // Merge nodes
		  MergeClasses
		  
		  Return xNode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadXML(s as String, xParent as XMLNode)
		  var xDoc as XMLDocument = xParent.OwnerDocument
		  var xRoot as XMLNode = xDoc.FirstChild
		  
		  var xNode as XMLNode = s.ToXML
		  
		  if xRoot <> Nil and xNode <> Nil then
		    xNode = xRoot.AppendChildCopy( xNode )
		  end if
		  
		  LoadXML( xNode )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadXML(TheNode as XMLNode)
		  me.Reset( True )
		  
		  'if NOT TemplateNode then
		  'xNode = TheNode
		  'end if
		  
		  
		  if TheNode <> Nil then
		    
		    var AbilityScoreIncreaseAutoLevels() as String // Collect for ability score increases
		    
		    for index as Integer = 0 to TheNode.ChildCount-1
		      var xChild as XMLNode = TheNode.Child(index)
		      
		      var xValue as String
		      if xChild.FirstChild <> Nil then
		        xValue = xChild.FirstChild.Value
		      end if
		      
		      
		      Select case xChild.Name
		        
		      case "name"
		        cName.Value = xValue
		        
		      case "hd"
		        cHitDice.Value = xValue
		        
		      case "proficiency"
		        var proficiensies() as String = SplitString( xValue, "," )
		        var abilityScores(), Skills() as String
		        
		        for each proficiency as String in proficiensies
		          if DnDArrays.AbilityNames.Contains( proficiency ) then
		            abilityScores.Add proficiency
		          else
		            skills.Add proficiency
		          end if
		        next
		        
		        cProficienciesSavingThrows.SetMultiValues abilityScores
		        
		        cProficienciesSkills.SetMultiValues Skills
		        
		      case "numSkills"
		        cNumSkills.Value = xValue
		        
		      case "armor"
		        cProficienciesArmor.SetMultiValues SplitString( xValue, "," )
		        
		      case "weapons"
		        cProficienciesWeapons.SetMultiValues SplitString( xValue, "," )
		        
		      case "tools"
		        cProficienciesTools.SetMultiValues SplitString( xValue, "," )
		        
		      case "wealth"
		        cWealth.Value = DiceCalculatorMethods.PrettifyMath( xValue )
		        cWealth.Tag = xValue
		        
		      case "slotsReset"
		        cSlotsReset.Value = TitleForMenuWithTag( cSlotsReset.BaseMenu, xValue )
		        cSlotsReset.Tag = xValue
		        
		      case "spellability"
		        cSpellAbility.Value = xValue
		        
		        
		      case "trait"
		        cClassTraits.FeatureAdd( xChild )
		        
		        var description as String = xChild.ToString
		        if description.Contains("source:") then
		          cSource.Value = SourceFrom( xChild )
		          cClassFeatures.Source = cSource.Value
		        end if
		        
		        
		      case "autolevel"
		        var level as String = xChild.GetAttribute("level")'.Val
		        var AutoLevel as String = xChild.GetAttribute("scoreImprovement")
		        
		        if AutoLevel = "YES" then
		          AbilityScoreIncreaseAutoLevels.Append level
		        end if
		        
		        for each xFeature as XMLNode in xChild.Children
		          
		          if xFeature.Name = "feature" then
		            
		            var Source as String = SourceFrom( xFeature )
		            
		            // Set Sourcefield if not set yet.
		            if cSource.Value = "" then
		              cSource.Value = Source
		              cClassFeatures.Source = Source
		            end if
		            
		            'Source = Source.Match( " p\. (\d+)", 1 )
		            
		            
		            if popSubclasses.SelectedRowIndex > 0 then
		              SetFeatureName( xFeature, popSubclasses.SelectedRowValue )
		            end if
		            
		            cClassFeatures.FeatureAdd( level, xFeature, false )
		            
		          elseif xFeature.Name = "slots" then
		            var slots() as String = xFeature.FirstChild.Value.SplitString(",")
		            chkSpellsOptional.Value = ( xFeature.GetAttribute("optional") = "YES" )
		            
		            
		            for i as Integer = 0 to slots.LastIndex
		              var column as Integer
		              
		              if i = 0 then
		                column = 1
		              elseif i > 0 then
		                column = i + 2
		              end if
		              
		              'if column = 1 and i = 0 and slots(i) = "0" then
		              '//
		              'else
		              lstSpellsTable.CellValueAt( level.Val-1, column ) = slots(i)
		              'end if
		            next
		            
		          elseif xFeature.Name = "counter" then
		            
		            if xFeature.ValueOfNodeWithName("name") = "Spells Known" then
		              
		              lstSpellsTable.CellValueAt( level.Val-1, 2 ) = xFeature.ValueOfNodeWithName("value")
		              
		            else
		              var counterName, counterValue, counterSubclass, counterReset as String
		              
		              for each xCounterField as XMLNode in xFeature.Children
		                
		                if xCounterField.FirstChild <> Nil then
		                  
		                  Select case xCounterField.Name
		                    
		                  case "name"
		                    counterName = xCounterField.FirstChild.Value
		                    
		                  case "value"
		                    counterValue = xCounterField.FirstChild.Value
		                    
		                  case "subclass"
		                    counterSubclass = xCounterField.FirstChild.Value
		                    
		                  case "reset"
		                    counterReset = xCounterField.FirstChild.Value
		                    
		                  End Select
		                  
		                end if
		              next
		              
		              if counterReset = "S" then
		                counterReset = "Short Rest"
		              elseif counterReset = "L" then
		                counterReset = "Long Rest"
		              else
		                Break
		              end if
		              
		              lstCounter.AddRow level, counterName, counterValue, counterReset, counterSubclass
		              lstCounter.Invalidate
		              
		              'var CounterColumn as Integer = -1
		              'for column as Integer = 0 to lstCounterTable.LastColumnIndex
		              'if lstCounterTable.HeaderAt(column) = counterName then
		              'CounterColumn = column
		              'Exit
		              'end if
		              'next
		              '
		              'if CounterColumn = -1 then
		              'lstCounterTable.ColumnCount = lstCounterTable.ColumnCount+1
		              'lstCounterTable.HeaderAt( lstCounterTable.LastColumnIndex ) = counterName
		              'CounterColumn = lstCounterTable.LastColumnIndex
		              'end if
		              '
		              'lstCounterTable.CellValueAt( level.Val-1, CounterColumn ) = counterValue
		              
		              
		            end if
		            
		          else
		            var aaaName as string = xFeature.Name
		            Break
		            
		          end if
		          
		        next
		        
		      end select
		      
		      
		    next
		    
		    cAbilityScoreImprovementLevels.SetMultiValues( AbilityScoreIncreaseAutoLevels )
		    
		    // Find spells
		    'txtSpells.Text = ""
		    cSpells.Value = ""
		    var spellFinderClassName as String = cName.Value
		    if popSubclasses.SelectedRowIndex > 0 then
		      spellFinderClassName = spellFinderClassName + " (" + popSubclasses.SelectedRowValue + ")"
		    end if
		    var SpellNames() as String
		    
		    'if TheNode <> Nil then
		    var xRoot as XMLNode = xNode.Parent
		    if xRoot <> Nil then
		      
		      for each xChild as XMLNode in xRoot.Children
		        if xChild.Name = "spell" then
		          var classes() as String = xChild.ValueOfNodeWithName("classes").SplitString(",")
		          if classes.Contains( spellFinderClassName ) then
		            SpellNames.Add xChild.ValueOfNodeWithName("name")
		          end if
		        end if
		      next
		      
		    end if
		    'SpellNames.Sort
		    'SpellNames.RemoveDuplicates
		    'txtSpells.Text = StringFromArray( SpellNames, ", " )
		    cSpells.Value = StringFromArray( SpellNames, ", " )
		    
		  end if // @END TheNode <> NIl
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub MergeClasses()
		  
		  // Replace xNode with xMainClass
		  xNode.RemoveAllChildren
		  
		  for each xChild as XMLNode in xClass.Children
		    xNode.AppendChildCopy xChild
		  next
		  
		  // Add xSubclasses to xNode
		  for index as Integer = 0 to xSubclasses.LastIndex
		    
		    // Rename features according to settings
		    if SubclassNames(index) <> "" then
		      for each xChild as XMLNode in xSubclasses(index).Children
		        if xChild.Name = "autolevel" then
		          
		          for each xFeature as XMLNode in xChild.Children
		            if xFeature.Name = "feature" then
		              SetFeatureName( xFeature, SubclassNames(index) )
		            end if
		          next
		          
		        end if
		      next
		    end if
		    
		    
		    Compendium.AddSubclassToClass( xNode, xSubclasses(index), SubclassNames(index) )
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset(ClassFeaturesOnly as Boolean = False)
		  
		  
		  if NOT ClassFeaturesOnly then
		    
		    xNode = Nil
		    xClass = Nil
		    Redim SubclassNames(-1)
		    Redim xSubclasses(-1)
		    
		    cName.Reset
		    cSource.Reset
		    
		  end if
		  
		  cHitDice.Reset
		  cProficienciesSavingThrows.Reset
		  cProficienciesSkills.Reset
		  cNumSkills.Reset
		  cProficienciesArmor.Reset
		  cProficienciesWeapons.Reset
		  cProficienciesTools.Reset
		  cWealth.Reset
		  cSpellAbility.Reset
		  cSlotsReset.Reset
		  
		  cClassTraits.Reset
		  
		  cClassFeatures.Reset
		  
		  for column as Integer = 1 to lstSpellsTable.LastColumnIndex
		    for row as Integer = 0 to lstSpellsTable.LastRowIndex
		      lstSpellsTable.CellValueAt( row, column ) = ""
		    next
		  next
		  lstSpellsTable.Invalidate
		  
		  'lstCounterTable.ColumnCount = 1
		  lstCounter.DeleteAllRows
		  lstCounter.Invalidate
		  
		  cSpells.Value = ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SaveSubclassSpells(SubclassName as String, SpellNames() as string)
		  var xRoot as XMLNode = xNode.Parent
		  
		  var AddedSpells() as XMLNode
		  var AddedSpellNames() as String
		  
		  if xRoot <> Nil then
		    for each xChild as XMLNode in xRoot.Children
		      
		      if xChild.Name = "spell" then
		        
		        var xSpellName as String = xChild.ValueOfNodeWithName("name")
		        var xSpellclasses as String = xChild.ValueOfNodeWithName("classes")
		        var xClasses() as String = xSpellclasses.SplitString(",")
		        
		        // Add class to existing spell that is in the spell list
		        if SpellNames.Contains( xSpellName ) and NOT xClasses.Contains( SubclassName ) then
		          xClasses.Add SubclassName
		          
		          AddedSpells.Add xChild
		          AddedSpellNames.Add xSpellName
		          
		          xChild.SetValueOfNodeWithName("classes", StringFromArray( xClasses, ", " ) )
		          
		          // Remove class from spell that is not in the spell list
		        elseif NOT SpellNames.Contains( xSpellName ) and xClasses.Contains( SubclassName ) then
		          xClasses.RemoveAt( xClasses.IndexOf( SubclassName ) )
		          
		          if xClasses.LastIndex = -1 then
		            xRoot.RemoveChild( xChild )
		          end if
		          
		          // Already added
		        elseif SpellNames.Contains( xSpellName ) and xClasses.Contains( SubclassName ) then
		          AddedSpells.Add xChild
		          AddedSpellNames.Add xSpellName
		          
		        else
		          Continue
		        end if
		        
		        
		      end if
		      
		    next
		    
		    'SpellNames.Sort
		    
		    for index as Integer = 0 to SpellNames.LastIndex
		      
		      if AddedSpellNames.Contains( SpellNames(index) ) then
		        // skip
		      else
		        var xSpell as XMLNode = xRoot.AppendNewChild( "spell" )
		        xSpell.AppendSimpleChild( "name", SpellNames(index) )
		        xSpell.AppendSimpleChild( "classes", SubclassName )
		        
		        AddedSpells.Add xSpell
		        AddedSpellNames.Add SpellNames(index)
		      end if
		      
		    next
		  end if
		  
		  'RaiseEvent AddedSpells( AddedSpells )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetData(TheNode as XMLNode, TheSource as String)
		  var t as new TimeFunction( "SetData()" )
		  
		  if TheSource.Contains("Third Party") then
		    postFix = " (Third Party)"
		  elseif TheSource.Contains("Homebrew") then
		    postFix = " (Homebrew)"
		  end if
		  'TheSource = TheSource.NthField( "(", 1 )
		  'TheSource = TheSource.Trim
		  
		  
		  'if Category = "Third Party" then
		  'postFix = " (Third Party)"
		  'elseif Category = "Homebrew" then
		  'postFix = " (Homebrew)"
		  'else
		  ''PostFix = " (" + Category + ")"
		  'end if
		  
		  'var source as string
		  
		  'if (TheSource = "" or PageNr = "") and TheNode.ToString.Contains("Source:") then
		  'source = TheNode.ToString.Match("Source:(.*?)<", 1)
		  'end if
		  
		  'if source = "" then
		  'if PageNr <> "" then
		  'source = TheSource.Trim + " p. " + PageNr + postFix
		  'else
		  'source = TheSource.Trim + postFix
		  'end if
		  'source = source.ReplaceAll( EndOfLine, ", " )
		  'end if
		  
		  popSubclasses.LastItem = Nil
		  
		  // Split up class features
		  SplitClasses( TheNode )
		  
		  // Build popup menu which loads the main class
		  BuildPopSubclasses()
		  
		  if cSource.Value = "" and TheSource <> "" then
		    cSource.Value = TheSource' + postFix
		    'elseif postFix <> "" and NOT cSource.Value.Contains(postFix) then
		    'cSource.Value = cSource.Value + postFix
		    'elseif cSource.Value = "" and TheSource <> "" then
		    'cSource.Value = TheSource
		  end if
		  
		  
		  if cHitDice.Value = "" and popSubclasses.LastRowIndex >= 2 then
		    popSubclasses.SelectedRowIndex = 2
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetFeatureName(xFeature as XMLNode, SubclassName as String)
		  var xName as string = xFeature.ValueOfNodeWithName("name")
		  'var SubclassName as string = popSubclasses.SelectedRowValue
		  
		  'var SubclassBeforeFeatureName as Boolean = AppSettings.Prefs.Value("SubclassBeforeFeatureName", False)
		  
		  if AppPrefs.SubclassBeforeFeatureName and xName.Contains("("+SubclassName+")") then
		    xName = SubclassName + ": " + xName.Replace( "("+SubclassName+")", "" ).Trim
		    
		  elseif NOT AppPrefs.SubclassBeforeFeatureName and xName.StartsWith( SubclassName + ":" ) then
		    xName = xName.Replace( SubclassName + ": ", "" ) + " (" + SubclassName + ")"
		    
		  elseif not xName.Contains( SubclassName ) then
		    
		    if AppPrefs.SubclassBeforeFeatureName then
		      xName = SubclassName + ": " + xName
		    else
		      xName = xName + " (" + SubclassName + ")"
		    end if
		    
		  else
		    'Break
		  end if
		  
		  xFeature.SetValueOfNodeWithName("name", xName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SourcePageNr() As String
		  Return cSource.Value.Match(" p. (\d+)", 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SplitClasses(TheFullClassNode as XMLNode)
		  
		  SubclassNames.RemoveAll
		  xSubclasses.RemoveAll
		  
		  xNode = TheFullClassNode
		  
		  SubclassNames = Compendium.GetSubclassNames( TheFullClassNode )
		  xClass = Compendium.GetClassWithoutSubclassFeatures( TheFullClassNode )
		  
		  for each subclassName as String in SubclassNames
		    var xSubclass as XMLNode = Compendium.GetSubclassFeatures( TheFullClassNode, subclassName )
		    
		    if xSubclass <> Nil and xSubclass.ChildCount > 0 then
		      xSubclasses.Add xSubclass
		      'SubclassNames.Add subclassNames
		    else
		      subclassNames.RemoveAt( subclassName.IndexOf( subclassName ) )
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SubclassAdd(SubclassName as String, TheNode as XMLNode = Nil)
		  SubclassNames.Add SubclassName
		  
		  if TheNode <> Nil then
		    
		    xSubclasses.Add TheNode
		  else
		    var xDoc as new XMLDocument
		    var xRoot as XmlNode = xDoc.AppendChild( xDoc.CreateElement( "compendium" ) )
		    
		    var xNewClass as XMLNode = xRoot.AppendNewChild("class")
		    xNewClass.AppendSimpleChild( "name", cName.Value.Trim )
		    
		    xSubclasses.Add xNewClass
		  end if
		  
		  BuildPopSubclasses
		  
		  popSubclasses.SelectedRowIndex = popSubclasses.IndexOfRowWithValue( SubclassName )
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SubclassEdit(xSubclass as XMLNode, isMainClass as Boolean)
		  var xClass as XMLNode = GetCompiledXMLNode( xSubclass, isMainClass )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SubclassRemove(SubclassName as String)
		  if SubclassNames.IndexOf( SubclassName ) > -1 then
		    xSubclasses.RemoveAt( SubclassNames.IndexOf( SubclassName  ) )
		    SubclassNames.RemoveAt( SubclassNames.IndexOf( SubclassName ) )
		  end if
		  
		  me.Reset( True )
		  
		  BuildPopSubclasses()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Untitled(xFeature as XMLNode)
		  var descriptionLines() as String
		  var xChildren() as XMLNode = xFeature.Children
		  xFeature.RemoveAllChildren
		  
		  for each xChild as XMLNode in xChildren
		    if xChild.Name = "text" then
		      if xChild.FirstChild = Nil then
		        descriptionLines.Add ""
		      else
		        descriptionLines.Add xChild.FirstChild.Value
		      end if
		    end if
		  next
		  
		  var addedDescription as Boolean = False
		  for each xChild as XMLNode in xChildren
		    
		    if xChild.Name <> "text" then
		      xFeature.AppendChildCopy( xChild )
		    elseif NOT addedDescription then
		      'xFeature.AppendSimpleChild( "text", String.FromArray( descriptionLines, EndOfLine ) )
		      SetDescription( xFeature, String.FromArray( descriptionLines ), "" )
		      addedDescription = True
		    end if
		    
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		PostFix As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SubclassNames() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		xClass As XMLNode
	#tag EndProperty

	#tag Property, Flags = &h0
		xNode As XMLNode
	#tag EndProperty

	#tag Property, Flags = &h0
		xSubclasses() As XMLNode
	#tag EndProperty


#tag EndWindowCode

#tag Events cClassFeatures
	#tag Event
		Sub Open()
		  me.FieldName = "Class Features:"
		  me.FeatureType = "feature"
		  
		  var newArray() as String = Array( "", "YES" )
		  
		  me.SetCategories newArray
		  me.SetAutoLevelCategories
		End Sub
	#tag EndEvent
	#tag Event
		Sub BuildTemplateMenu()
		  // Features Templates
		  var TemplateMenu as new MenuItem("Templates")
		  
		  var archetype as String = ArchetypeFor( cName.Value )
		  
		  TemplateMenu.AddMenu new MenuItem( archetype + ": " + popSubclasses.SelectedRowValue )
		  TemplateMenu.AddMenu new MenuItem( popSubclasses.SelectedRowValue + ": FeatureName" )
		  TemplateMenu.AddMenu new MenuItem( "FeatureName (" + popSubclasses.SelectedRowValue + ")" )
		  TemplateMenu.AddMenu new MenuItem( "-" )
		  TemplateMenu.AddMenu new MenuItem( popSubclasses.SelectedRowValue + ": Channel Divinity: FeatureName" )
		  TemplateMenu.AddMenu new MenuItem( "Channel Divinity: FeatureName (" + popSubclasses.SelectedRowValue + ")" )
		  
		  me.TemplateMenu = TemplateMenu
		  'cClassFeatures.TemplateMenu = TemplateMenu
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstCounter
	#tag Event
		Sub Open()
		  
		  
		  
		  me.ColumnTypeAt(1) = Listbox.CellTypes.TextField
		  me.ColumnTypeAt(2) = Listbox.CellTypes.TextField
		  
		  me.ColumnAlignmentAt( 0 ) = Listbox.Alignments.Center
		  me.ColumnAlignmentAt( 2 ) = Listbox.Alignments.Center
		  me.ColumnAlignmentAt( 3 ) = Listbox.Alignments.Center
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if me.SelectedRowIndex <> row then
		    g.DrawAlternatingRows(row)
		    
		    Return True
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  Select Case column
		  Case 0, 2 ' This is our numerical value column. Let's do the work ourselves
		    If Val(Me.CellValueAt(row1, column )) < Val(Me.CellValueAt(row2, column)) Then
		      result = -1
		    ElseIf Val(Me.CellValueAt(row1, column)) > Val(Me.CellValueAt(row2, column)) Then
		      result = 1
		    Else
		      result = 0
		    End If
		    Return True
		    
		  Else //some other column for which we let the listbox handle comparison
		    Return False
		  End Select
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  areCounters.RemoveEnabled = me.SelectedIndex > -1
		  areCounters.EditEnabled = me.SelectedIndex > -1
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  if column = 0 or column = 3 or column = 4 then
		    
		    var baseMenu as new MenuItem( "base" )
		    
		    Select case column
		    case 0
		      for level as Integer = 1 to 20
		        baseMenu.AddMenu new MenuItem( Str(level), Str(level) )
		      next
		      
		    case 3
		      baseMenu.AddMenu new MenuItem("Short Rest", "Short Rest")
		      baseMenu.AddMenu new MenuItem("Long Rest", "Long Rest")
		      
		    case 4
		      baseMenu.AddMenu new MenuItem( "None", "" )
		      baseMenu.AddMenu new MenuItem( "-", "" )
		      
		      for index as Integer = 0 to SubclassNames.LastIndex
		        baseMenu.AddMenu new MenuItem( SubclassNames(index), SubclassNames(index) )
		      next
		      
		    end Select
		    
		    
		    var hitItem as MenuItem = baseMenu.PopUp '( self.Left + me.Left + x,  self.Top + me.Top + y )
		    
		    if hitItem <> Nil then
		      me.CellValueAt( row, column ) = hitItem.Tag
		    end if
		    
		    Return True
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if column = 4 then
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events areCounters
	#tag Event
		Sub ActionAdd()
		  
		  var subclassName as String
		  if popSubclasses.SelectedRowIndex > 0 then
		    subclassName = popSubclasses.SelectedRowValue
		  end if
		  
		  var featureName as string = "Unnamed"
		  var featureLevel as String = "1"
		  if cClassFeatures.lstTraits.SelectedRowIndex > 0 then
		    featureName = cClassFeatures.lstTraits.CellValueAt( cClassFeatures.lstTraits.SelectedRowIndex, 1 )
		    featureName = featureName.Replace( subclassName + ": ", "" ).Replace( " (" + subclassName + ")", "").Trim
		    
		    featureLevel = cClassFeatures.lstTraits.CellValueAt( cClassFeatures.lstTraits.SelectedRowIndex, 0 )
		  end if
		  
		  lstCounter.AddRow featureLevel, featureName, "1", "Long Rest", subclassName
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionEdit()
		  var row as Integer = 0
		  if lstCounter.SelectedRowIndex > -1 then
		    row = lstCounter.SelectedRowIndex
		  end if
		  
		  lstCounter.EditCellAt( row, 0 )
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionRemove()
		  
		  if lstCounter.SelectedRowIndex > -1 then
		    var lindex as Integer = lstCounter.SelectedRowIndex
		    
		    lstCounter.RemoveRowAt( lindex )
		    
		    if lindex-1 > -1 then
		      lstCounter.SelectedRowIndex = lindex-1
		    elseif lstCounter.LastRowIndex > -1 then
		      lstCounter.SelectedRowIndex = 0
		    end if
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSpells
	#tag Event
		Sub Open()
		  me.FieldName = "Spells:"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cName
	#tag Event
		Sub Open()
		  me.FieldName = "Name:"
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cHitDice
	#tag Event
		Sub Open()
		  me.FieldName = "Hit Dice:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = True
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("4")
		  me.BaseMenu.AddMenu new MenuItem("6")
		  me.BaseMenu.AddMenu new MenuItem("8")
		  me.BaseMenu.AddMenu new MenuItem("10")
		  me.BaseMenu.AddMenu new MenuItem("12")
		  me.BaseMenu.AddMenu new MenuItem("20")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cNumSkills
	#tag Event
		Sub Open()
		  me.FieldName = "Number of Skills:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = True
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  
		  for index as Integer = 0 to 20
		    me.BaseMenu.AddMenu new MenuItem( Str( index ) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cProficienciesArmor
	#tag Event
		Sub Open()
		  me.FieldName = "Armor Proficiencies:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = True
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Light Armor")
		  me.BaseMenu.AddMenu new MenuItem("Medium Armor")
		  me.BaseMenu.AddMenu new MenuItem("Heavy Armor")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Shields")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cProficienciesWeapons
	#tag Event
		Sub Open()
		  me.FieldName = "Weapon Proficiencies:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = False
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Simple Weapons")
		  me.BaseMenu.AddMenu new MenuItem("Martial Weapons")
		  // Weapons
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Battleaxes" )
		  me.BaseMenu.Append new MenuItem( "Clubs" )
		  me.BaseMenu.Append new MenuItem( "Daggers" )
		  me.BaseMenu.Append new MenuItem( "Double-Bladed Scimitars" )
		  me.BaseMenu.Append new MenuItem( "Flails" )
		  me.BaseMenu.Append new MenuItem( "Glaives" )
		  me.BaseMenu.Append new MenuItem( "Greataxes" )
		  me.BaseMenu.Append new MenuItem( "Greatclubs" )
		  me.BaseMenu.Append new MenuItem( "Greatswords" )
		  me.BaseMenu.Append new MenuItem( "Halberds" )
		  me.BaseMenu.Append new MenuItem( "Handaxes" )
		  me.BaseMenu.Append new MenuItem( "Hooked Shortspears" )
		  me.BaseMenu.Append new MenuItem( "Hoopaks" )
		  me.BaseMenu.Append new MenuItem( "Javelins" )
		  me.BaseMenu.Append new MenuItem( "Lances" )
		  me.BaseMenu.Append new MenuItem( "Light Hammers" )
		  me.BaseMenu.Append new MenuItem( "Longswords" )
		  me.BaseMenu.Append new MenuItem( "Maces" )
		  me.BaseMenu.Append new MenuItem( "Mauls" )
		  me.BaseMenu.Append new MenuItem( "Morningstars" )
		  me.BaseMenu.Append new MenuItem( "Pikes" )
		  me.BaseMenu.Append new MenuItem( "Quarterstaffs" )
		  me.BaseMenu.Append new MenuItem( "Rapiers" )
		  me.BaseMenu.Append new MenuItem( "Scimitars" )
		  me.BaseMenu.Append new MenuItem( "Shortswords" )
		  me.BaseMenu.Append new MenuItem( "Sickles" )
		  me.BaseMenu.Append new MenuItem( "Spears" )
		  me.BaseMenu.Append new MenuItem( "Staffs" )
		  me.BaseMenu.Append new MenuItem( "Tridents" )
		  me.BaseMenu.Append new MenuItem( "War Picks" )
		  me.BaseMenu.Append new MenuItem( "Warhammers" )
		  me.BaseMenu.Append new MenuItem( "Whips" )
		  me.BaseMenu.Append new MenuItem( "Yklwas" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Blowguns" )
		  me.BaseMenu.Append new MenuItem( "Darts" )
		  me.BaseMenu.Append new MenuItem( "Hand Crossbows" )
		  me.BaseMenu.Append new MenuItem( "Heavy Crossbows" )
		  me.BaseMenu.Append new MenuItem( "Light Crossbows" )
		  me.BaseMenu.Append new MenuItem( "Light Repeating Crossbows" )
		  me.BaseMenu.Append new MenuItem( "Longbows" )
		  me.BaseMenu.Append new MenuItem( "Nets" )
		  me.BaseMenu.Append new MenuItem( "Shortbows" )
		  me.BaseMenu.Append new MenuItem( "Slings" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cProficienciesTools
	#tag Event
		Sub Open()
		  me.FieldName = "Tool Proficiencies:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = False
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.Append new MenuItem( "Alchemist's Supplies" )
		  me.BaseMenu.Append new MenuItem( "Brewer's Supplies" )
		  me.BaseMenu.Append new MenuItem( "Calligrapher's Supplies" )
		  me.BaseMenu.Append new MenuItem( "Carpenter's Tools" )
		  me.BaseMenu.Append new MenuItem( "Cartographer's Tools" )
		  me.BaseMenu.Append new MenuItem( "Cobbler's Tools" )
		  me.BaseMenu.Append new MenuItem( "Cook's Utensils" )
		  me.BaseMenu.Append new MenuItem( "Glassblower's Tools" )
		  me.BaseMenu.Append new MenuItem( "Jeweler's Tools" )
		  me.BaseMenu.Append new MenuItem( "Leatherworker's Tools" )
		  me.BaseMenu.Append new MenuItem( "Mason's Tools" )
		  me.BaseMenu.Append new MenuItem( "Painter's Supplies" )
		  me.BaseMenu.Append new MenuItem( "Potter's Tools" )
		  me.BaseMenu.Append new MenuItem( "Smith's Tools" )
		  me.BaseMenu.Append new MenuItem( "Thieves' Tools" )
		  me.BaseMenu.Append new MenuItem( "Tinker's Tools" )
		  me.BaseMenu.Append new MenuItem( "Weaver's Tools" )
		  me.BaseMenu.Append new MenuItem( "Woodcarver's Tools" )
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Gaming Set")
		  me.BaseMenu.AddMenu new MenuItem("Musical Instrument")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cWealth
	#tag Event
		Sub Open()
		  me.FieldName = "Wealth:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = True
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.Append new MenuItem( "New dice roll" )
		  me.BaseMenu.Append new MenuItem( "Edit dice roll" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cProficienciesSavingThrows
	#tag Event
		Sub Open()
		  me.FieldName = "Saving Throws:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = True
		  
		  me.BaseMenu.Append new MenuItem("None", "")
		  me.BaseMenu.Append new MenuItem("-")
		  for each abilityname as String in DnDArrays.AbilityNames
		    me.BaseMenu.Append new MenuItem( abilityname, abilityname )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cProficienciesSkills
	#tag Event
		Sub Open()
		  me.FieldName = "Skills:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = True
		  
		  me.BaseMenu.Append new MenuItem("None", "")
		  me.BaseMenu.Append new MenuItem("-")
		  for each skill as string in DnDArrays.Skills
		    me.BaseMenu.Append new MenuItem( skill, skill )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstSpellsTable
	#tag Event
		Sub Open()
		  'me.ColumnTypeAt(1) = Listbox.CellTypes.CheckBox
		  'for row as Integer = 0 to me.LastRowIndex
		  'me.CellCheckBoxStateAt( row, 1 ) = CheckBox.VisualStates.Checked
		  'next
		  
		  for column as Integer = 1 to me.LastColumnIndex
		    me.ColumnAlignmentAt( column ) = Listbox.Alignments.Center
		    me.ColumnTypeAt(column) = Listbox.CellTypes.TextField
		    
		    me.HeaderType(column) = Listbox.HeaderTypes.NotSortable
		  next
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  if me.SelectedRowIndex <> row then
		    g.DrawAlternatingRows(row)
		    Return True
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cClassTraits
	#tag Event
		Sub Open()
		  me.FieldName = "Class Introduction:"
		  me.UseMode = ccTraits.Mode.SimpleTrait
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSpellAbility
	#tag Event
		Sub Open()
		  me.FieldName = "Spell Ability:"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  me.ReadOnly = True
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  var AbilityNames() as String = DnDArrays.AbilityNames
		  for index as Integer = 0 to AbilityNames.LastIndex
		    me.BaseMenu.AddMenu new MenuItem( AbilityNames(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSlotsReset
	#tag Event
		Sub Open()
		  me.FieldName = "Spell Slots Reset On:"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  me.ReadOnly = True
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Short Rests", "S")
		  me.BaseMenu.AddMenu new MenuItem("Long Rests", "L")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cAbilityScoreImprovementLevels
	#tag Event
		Sub Open()
		  me.FieldName = "Improvement Levels:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = True
		  
		  me.BaseMenu.Append new MenuItem("None", "")
		  me.BaseMenu.Append new MenuItem("-")
		  for level as Integer = 1 to 20
		    'for each abilityname as String in DnDArrays.AbilityNames
		    me.BaseMenu.Append new MenuItem( Str( level ) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events areSubclasses
	#tag Event
		Sub ActionAdd()
		  
		  var newSubclassName as String = InputDialog.ShowPrompt( "Subclass name", "Enter a name for the new subclass" )
		  
		  if newSubclassName.Trim <> "" then
		    SubclassAdd( newSubclassName.Trim )
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionRemove()
		  if popSubclasses.SelectedRowIndex > 0 then
		    SubclassRemove( popSubclasses.SelectedRowValue )
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popSubclasses
	#tag Event
		Sub SelectionChanged(OldItem as DesktopMenuItem, NewItem as DesktopMenuItem)
		  // Save changes
		  if OldItem <> Nil and OldItem.Tag IsA XMLNode then
		    var xOldSubclass as XMLNode = OldItem.Tag
		    SubclassEdit( xOldSubclass, xOldSubclass = xClass )
		  end if
		  
		  // Load new
		  if NewItem <> Nil and NewItem.Tag IsA XMLNode then
		    var xNewSubclass as XMLNode = NewItem.Tag
		    LoadXML( xNewSubclass )
		  end if
		  
		  areSubclasses.RemoveEnabled = ( me.SelectedRowIndex > 0 )
		  
		  // Show only related features
		  if me.SelectedRowIndex > 0 then
		    cvsMainClass.Visible = False
		    cvsClassFeatures.Top = cvsMainClass.Top
		  else
		    cvsMainClass.Visible = True
		    cvsClassFeatures.Top = cvsMainClass.Top + cvsMainClass.Height + 12
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSource
	#tag Event
		Sub Open()
		  me.FieldName = "Source:"
		  me.SetMode ccEditorTextField.Mode.Textfield
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
		Name="Super"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
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
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowAutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Tooltip"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
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
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="PostFix"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
