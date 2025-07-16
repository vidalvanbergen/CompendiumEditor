#tag Window
Begin ContainerControl ccEquipment
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
   Height          =   1423
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
   Width           =   700
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
      FieldName       =   "Name:"
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Item name."
      Top             =   54
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   624
   End
   Begin Canvas cvsArmor
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   88
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   426
      Transparent     =   True
      Visible         =   False
      Width           =   700
      Begin Label lblStealth
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
         InitialParent   =   "cvsArmor"
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
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Stealth:"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   494
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   150
      End
      Begin CheckBox chkStealthDisadvantage
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Disadvantage"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsArmor"
         Italic          =   False
         Left            =   182
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Check this box if the armor causes the wearer to have disadvantage on Dexterithy (stealth) checks."
         Top             =   494
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   498
      End
      Begin ccEditorTextField cArmorClass
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
         InitialParent   =   "cvsArmor"
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
         Tooltip         =   "Armor class."
         Top             =   426
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
      Begin ccEditorTextField cStrength
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
         InitialParent   =   "cvsArmor"
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
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "Strength score required to wear armor, the armor reduces the wearer’s speed by 10 feet unless the wearer has a Strength score equal to or higher than the listed score."
         Top             =   460
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
   End
   Begin Canvas cvsWeapon
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   124
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   290
      Transparent     =   True
      Visible         =   False
      Width           =   700
      Begin ccEditorTextField cDMG1
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
         InitialParent   =   "cvsWeapon"
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
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "One-handed weapon damage."
         Top             =   323
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   324
      End
      Begin ccEditorTextField cDMG2
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
         InitialParent   =   "cvsWeapon"
         IsPrefixedNumber=   False
         Left            =   356
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
         Tooltip         =   "Two-handed weapon damage."
         Top             =   324
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   324
      End
      Begin ccEditorTextField cDamageType
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
         InitialParent   =   "cvsWeapon"
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
         Tooltip         =   "Damage type or element."
         Top             =   357
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
      Begin ccEditorTextField cRangeShort
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
         InitialParent   =   "cvsWeapon"
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
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "The weapon's normal range in feet. When attacking a target beyond normal range, you have disadvantage on the attack roll. You can't attack a target beyond the weapon's long range."
         Top             =   391
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   324
      End
      Begin ccEditorTextField cRangeLong
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
         InitialParent   =   "cvsWeapon"
         IsPrefixedNumber=   False
         Left            =   356
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
         Tooltip         =   "The weapon's long range in feet. When attacking a target beyond normal range, you have disadvantage on the attack roll. You can't attack a target beyond the weapon's long range."
         Top             =   391
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   324
      End
      Begin ccEditorTextField cProperties
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
         InitialParent   =   "cvsWeapon"
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
         Tooltip         =   "Weapon properties. (multiple values allowed)"
         Top             =   290
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
   End
   Begin ccEditorTextField cCategories
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      FieldName       =   "Detail:"
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
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Name of the base item in case of a named treasure, or the category it falls under."
      Top             =   88
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   660
   End
   Begin ccEditorTextField cDetail
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      FieldName       =   "Detail:"
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
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Item rarity and attunement requirements. (only visible on iOS and macOS)"
      Top             =   122
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   660
   End
   Begin ccEditorTextField cItemType
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
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "The type of item."
      Top             =   156
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   660
   End
   Begin ccEditorTextField cWeight
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
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Item weight."
      Top             =   222
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   660
   End
   Begin ccEditorTextField cGoldValue
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
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Gold value of the item."
      Top             =   256
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   660
   End
   Begin ccEditorCheckbox cMagicItem
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
      FieldValue      =   False
      HasBackgroundColor=   False
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Check this box if the item is magical."
      Top             =   190
      Transparent     =   True
      Visible         =   True
      Width           =   660
   End
   Begin Canvas cvsPlacard
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   877
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   526
      Transparent     =   True
      Visible         =   True
      Width           =   700
      Begin ccEditorTextArea cDescription
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
         Height          =   400
         Index           =   -2147483648
         InitialParent   =   "cvsPlacard"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Item description."
         Top             =   526
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
      Begin ccDiceRolls cDiceRolls
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
         Height          =   158
         Index           =   -2147483648
         InitialParent   =   "cvsPlacard"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Dice roll formulas."
         Top             =   972
         Transparent     =   True
         Visible         =   True
         Width           =   660
      End
      Begin ccEditorModifiers cModifiers
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
         Height          =   260
         Index           =   -2147483648
         InitialParent   =   "cvsPlacard"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Modifiers. The category can be set to one of the following: bonus, ability score, ability modifier, saving throw, or skill. The value for this element is the modifier name, followed by its value."
         Top             =   1142
         Transparent     =   True
         Visible         =   True
         Width           =   660
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
         InitialParent   =   "cvsPlacard"
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
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tag             =   ""
         TagsForValue    =   False
         Tooltip         =   "The name of the source material and a page number this item came from. (e.g. Player's Handbook p. 128)"
         Top             =   938
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
   End
   Begin PopupMenu popBaseItems
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
      InitialValue    =   ""
      Italic          =   False
      Left            =   182
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Choose a base item to load as a template."
      Top             =   22
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   406
   End
   Begin PushButton btnLoadTemplate
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Load"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   600
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label lblTemplates
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
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Templates:"
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin BevelButton bvlClipboard
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   0
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   "📋"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   656
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
      Tooltip         =   "Import from Clipboard"
      Top             =   54
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   24
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Function GetXMLNode() As XMLNode
		  
		  
		  
		  var xItem as XMLNode = xNode
		  
		  if xItem = Nil then
		    Return Nil
		  end if
		  
		  // Clear old children
		  xItem.RemoveAllChildren
		  
		  
		  // Name
		  xItem.AppendSimpleChild( "name", cName.Value )
		  
		  // Detail
		  var detail as string = cCategories.Value'.Lowercase
		  if cDetail.Value <> ""  then
		    if detail = "" then
		      detail = cDetail.Value'.Lowercase
		    else
		      detail = detail + ", " + cDetail.Value'.Lowercase
		    end if
		  end if
		  
		  if detail <> "" then
		    xItem.AppendSimpleChild( "detail", detail.Lowercase )
		  else
		    'xItem.AppendSimpleChild( "detail", Nil )
		  end if
		  
		  // Type
		  xItem.AppendSimpleChild( "type", cItemType.Tag.Uppercase )
		  
		  // Magic Item
		  if cMagicItem.FieldValue then
		    xItem.AppendSimpleChild( "magic", "YES" )
		  else
		    'xItem.AppendSimpleChild( "magic", Nil )
		  end if
		  
		  // weight
		  if cWeight.Value <> "" then
		    xItem.AppendSimpleChild( "weight", cWeight.Value )
		  else
		    'xItem.AppendSimpleChild( "weight", Nil )
		  end if
		  
		  // value
		  if cGoldValue.Value <> "" then
		    xItem.AppendSimpleChild( "value", cGoldValue.Value )
		  else
		    'xItem.AppendSimpleChild( "value", Nil )
		  end if
		  
		  
		  // Armor
		  if cvsArmor.Visible then
		    
		    if cArmorClass.Value <> "" then
		      xItem.AppendSimpleChild( "ac", cArmorClass.Value )
		    end if
		    
		    if chkStealthDisadvantage.Value then
		      xItem.AppendSimpleChild( "stealth", "YES" )
		    end if
		    
		    if cStrength.Value <> "" then
		      xItem.AppendSimpleChild( "strength", cStrength.Value )
		    end if
		    
		    
		  elseif cvsWeapon.Visible then
		    
		    // property
		    if cProperties.Tags.LastIndex > -1 then
		      xItem.AppendSimpleChild( "property", StringFromArray( cProperties.Tags, "," ).Uppercase )
		    end if
		    
		    // Damages
		    if cDMG1.Tag <> "" then
		      xItem.AppendSimpleChild( "dmg1", cDMG1.Tag )
		    end if
		    
		    if cDMG2.Tag <> "" then
		      xItem.AppendSimpleChild( "dmg2", cDMG2.Tag )
		    end if
		    
		    if cDamageType.Tag <> "" then
		      xItem.AppendSimpleChild( "dmgType", cDamageType.Tag )
		    end if
		    
		    // Range
		    if cRangeShort.Value <> "" and cRangeLong.Value <> "" then
		      var range as String = cRangeShort.Value + "/" + cRangeLong.Value
		      xItem.AppendSimpleChild( "range", range )
		    end if
		    
		  end if
		  
		  
		  // Description
		  'if cDescription.Value <> "" then
		  SetDescription( xItem, cDescription.Value, cSource.Value )
		  'elseif cSource.Value <> "" then
		  'xItem.AppendSimpleChild( "text", "Source:" + chr(9) + cSource.Value )
		  'end if
		  
		  // Modifiers
		  var lst as Listbox = cModifiers.lstModifiers
		  
		  if lst.LastRowIndex > -1 then
		    for row as Integer = 0 to lst.LastRowIndex
		      var xModifier as XMLNode = xItem.AppendNewChild( "modifier" )
		      
		      xModifier.SetAttribute( "category", lst.CellValueAt( row, 0 ).Lowercase.Trim )
		      xModifier.SetValue( lst.CellValueAt( row, 1 ).Trim.Replace( " + Proficiency Bonus", " +%0" ).Replace( "+Proficiency Bonus", " +%0" ) )
		    next
		  end if
		  
		  // Dice Rolls
		  if cDiceRolls.lstDiceRolls.LastIndex > -1 then
		    cDiceRolls.AddDiceRollsTo( xItem )
		  end if
		  
		  
		  
		  Return xItem
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadTemplate()
		  if popBaseItems.RowTagAt( popBaseItems.SelectedRowIndex ) IsA XMLNode then
		    var tmpxNode as XMLNode = popBaseItems.RowTagAt( popBaseItems.SelectedRowIndex )
		    
		    LoadXML( tmpxNode, True )
		    xNode = GetXMLNode
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadXML(s as String, xParent as XMLNode)
		  var xDoc as XMLDocument = xParent.OwnerDocument
		  var xRoot as XMLNode = xDoc.FirstChild
		  
		  var tmpxNode as XMLNode = s.ToXML
		  
		  if xRoot <> Nil and xNode <> Nil then
		    tmpxNode = xRoot.AppendChildCopy( xNode )
		  end if
		  
		  LoadXML( xNode, True )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadXML(TheNode as XMLNode, TemplateNode as Boolean = False)
		  me.Reset(True)
		  
		  if NOT TemplateNode then
		    xNode = TheNode
		  end if
		  
		  if TheNode <> Nil then
		    
		    var descriptionLines() as String
		    
		    for index as Integer = 0 to TheNode.ChildCount-1
		      var xChild as XMLNode = TheNode.Child(index)
		      
		      if xChild <> Nil then
		        
		        var xValue as string
		        if xChild.FirstChild <> Nil then
		          xValue = xChild.FirstChild.Value
		        end if
		        
		        
		        Select case xChild.Name
		          
		        case "name"
		          cName.Value = xValue
		          
		        case "category" // Not supported by FightClub 5e
		          if cCategories.Value = "" then
		            cCategories.Value = xValue
		          else
		            cCategories.Value = cCategories.Value + ", " + xValue
		          end if
		          
		        case "detail"
		          if xValue <> "" then
		            var rarity() as string = Array( "uncommon", "common", "very rare", "rare", "legendary", "artifact", "curse", "rarity varies", "varies" )
		            
		            var details, category as String
		            
		            for i as Integer = 0 to rarity.LastIndex
		              if xValue.Contains( rarity(i) ) then
		                if rarity.IndexOf( rarity(i) ) > -1 then
		                  category = xValue.NthField( rarity(i), 1 ).Trim
		                  details = rarity(i) + xValue.NthField( rarity(i), 2)'.Trim
		                  
		                  'category = xValue.Match( "(.*?)" + rarity(i), 1 ).Trim
		                  'details = xValue.Match( "(" + rarity(i) + ".*?)", 1 ).Trim
		                  Exit
		                end if
		              end if
		            next
		            
		            if category = "" and details = "" then
		              category = xValue
		            end if
		            if category.EndsWith(",") then
		              category = category.Left( category.Length-1 )
		            end if
		            
		            cDetail.Value = details.Trim
		            cCategories.Value = category.Trim
		            cCategories.Values = category.SplitString(",")
		          else
		            var s as String
		          end if
		          
		        case "magic"
		          if xValue = "1" or xValue = "YES" then
		            cMagicItem.FieldValue = True
		          end if
		          
		        case "weight"
		          cWeight.Value = xValue
		          
		        case "value"
		          cGoldValue.Value = xValue
		          
		        case "type"
		          cItemType.Value = TitleForMenuWithTag( cItemType.BaseMenu, xValue )
		          cItemType.Tag = xValue
		          
		          
		          // armor
		        case "ac"
		          cArmorClass.Value = xValue
		          
		        case "stealth"
		          if xValue = "1" or xValue = "YES" then
		            chkStealthDisadvantage.Value = True
		          end if
		          
		        case "strength"
		          cStrength.Value = xValue
		          
		          // weapon
		          
		        case "property"
		          var tags() as String = xValue.SplitString(",")
		          cProperties.Tags = tags
		          
		          var properties() as String
		          for each tag as String in tags
		            properties.Append TitleForMenuWithTag( cProperties.BaseMenu, tag )
		          next
		          cProperties.Value = StringFromArray( properties, ", " )
		          cProperties.Values = properties
		          
		        case "dmg1"
		          cDMG1.Value = DiceCalculatorMethods.PrettifyMath( xValue )
		          cDMG1.Tag = xValue
		          
		        case "dmg2"
		          cDMG2.Value = DiceCalculatorMethods.PrettifyMath( xValue )
		          cDMG2.Tag = xValue
		          
		        case "dmgType"
		          cDamageType.Value = TitleForMenuWithTag( cDamageType.BaseMenu, xValue )
		          cDamageType.Tag = xValue
		          
		        case "range"
		          cRangeShort.Value = xValue.NthField("/", 1)
		          cRangeLong.Value = xValue.NthField("/", 2)
		          
		        case "text"
		          descriptionLines.Add xValue
		          
		        case "roll"
		          var attribute, level, attributeValue as String
		          if xChild.AttributeCount > 0 then
		            for i as Integer = 0 to xChild.AttributeCount-1
		              var xAttribute as XMLAttribute = xChild.GetAttributeNode(i)
		              attribute = xAttribute.Name
		              if attribute = "description" then
		                attributeValue = xAttribute.Value
		              elseif attribute = "level" then
		                level = xAttribute.Value
		              else
		                Break
		              end if
		            next
		          end if
		          
		          cDiceRolls.lstDiceRolls.AddRow DiceCalculatorMethods.PrettifyMath( xValue ), level, attributeValue
		          cDiceRolls.lstDiceRolls.RowTagAt( cDiceRolls.lstDiceRolls.LastAddedRowIndex ) = xValue
		          
		          
		        case "modifier"
		          if xChild.GetAttribute("category") <> "" then
		            
		            var category as String = xChild.GetAttribute("category").Titlecase
		            if category = "Skills" then
		              category = "Skill"
		            End if
		            
		            cModifiers.addrow category, xValue
		          else
		            cModifiers.addrow "Bonus", xValue
		            Break
		          end if
		          
		        else
		          'Break
		          
		        End Select
		        
		      end if // xchild <> Nil
		      
		    next
		    
		    
		    cDescription.Value = String.FromArray( descriptionLines, EndOfLine )
		    
		    if cDescription.Value.Contains("Source:") then
		      var sourceString as String = SourceFromDescription( cDescription.Value ).ReplaceAll( EndOfLine, " " ).ReplaceAll( chr(9), "" ).Trim
		      
		      if NOT TemplateNode then
		        cSource.Value = sourceString
		      elseif TemplateNode then
		        
		        if cSource.Value = "" then
		          cSource.Value = sourceString
		        else
		          var aaaoriginalvalue as String = cSource.Value
		          cSource.Value = cSource.Value + ", " + sourceString
		        end if
		      end if
		      
		      cDescription.Value = DescriptionWithoutSource( cDescription.Value )
		    end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset(IsTemplate as Boolean = False)
		  if NOT IsTemplate then
		    xNode = Nil
		  end if
		  
		  cName.Reset
		  cCategories.Reset
		  cDetail.Reset
		  cItemType.Reset
		  cWeight.Reset
		  cGoldValue.Reset
		  cMagicItem.FieldValue = False
		  
		  cProperties.Reset
		  cDMG1.Reset
		  cDMG2.Reset
		  cDamageType.Reset
		  cRangeShort.Reset
		  cRangeLong.Reset
		  
		  
		  cArmorClass.Reset
		  cStrength.Reset
		  chkStealthDisadvantage.Value = False
		  
		  cDescription.Reset
		  if not IsTemplate then
		    cSource.Reset
		  end if
		  
		  cModifiers.Reset
		  cModifiers.Refresh
		  cModifiers.lstModifiers.Refresh
		  
		  cDiceRolls.Reset
		  cDiceRolls.Refresh
		  cDiceRolls.lstDiceRolls.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetData(TheNode as XMLNode, TheSource as String, PageNr as String = "")
		  var source as string
		  if PageNr <> "" then
		    source = TheSource.Trim + " p. " + PageNr
		  else
		    source = TheSource.Trim
		  end if
		  
		  LoadXML( TheNode )
		  
		  if cSource.Value = "" then
		    cSource.Value = Source
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SourcePageNr() As String
		  Return cSource.Value.Match(" p. (\d+)", 1)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		xNode As XMLNode
	#tag EndProperty


#tag EndWindowCode

#tag Events cName
	#tag Event
		Sub Open()
		  me.FieldName = "Name:"
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cArmorClass
	#tag Event
		Sub Open()
		  me.FieldName = "Armor Class:"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  'me.ReadOnly = True
		  me.txtField.ValidationMask = "##"
		  
		  for index as Integer = 0 to 99
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cStrength
	#tag Event
		Sub Open()
		  me.FieldName = "Required Strength:"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  'me.ReadOnly = True
		  me.txtField.ValidationMask = "##"
		  
		  me.BaseMenu.Append new MenuItem("None", "")
		  me.BaseMenu.Append new MenuItem("-")
		  for index as Integer = 0 to 99
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDMG1
	#tag Event
		Sub Open()
		  me.FieldName = "DMG (One-Handed):"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  me.ReadOnly = True
		  
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.Append new MenuItem( "New dice roll" )
		  me.BaseMenu.Append new MenuItem( "Edit dice roll" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDMG2
	#tag Event
		Sub Open()
		  me.FieldName = "DMG (Two-Handed):"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  me.ReadOnly = True
		  
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.Append new MenuItem( "New dice roll" )
		  me.BaseMenu.Append new MenuItem( "Edit dice roll" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDamageType
	#tag Event
		Sub Open()
		  me.FieldName = "Damage Type:"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  me.ReadOnly = True
		  
		  
		  me.BaseMenu.Append new MenuItem( "None", "" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Bludgeoning", "B" )
		  me.BaseMenu.Append new MenuItem( "Piercing", "P" )
		  me.BaseMenu.Append new MenuItem( "Slashing", "S" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Acid", "A" )
		  me.BaseMenu.Append new MenuItem( "Cold", "C" )
		  me.BaseMenu.Append new MenuItem( "Fire", "F" )
		  me.BaseMenu.Append new MenuItem( "Force", "FC" )
		  me.BaseMenu.Append new MenuItem( "Lightning", "L" )
		  me.BaseMenu.Append new MenuItem( "Necrotic", "N" )
		  me.BaseMenu.Append new MenuItem( "Poison", "PS" )
		  me.BaseMenu.Append new MenuItem( "Psychic", "PY" )
		  me.BaseMenu.Append new MenuItem( "Radiant", "R" )
		  me.BaseMenu.Append new MenuItem( "Thunder", "T" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cRangeShort
	#tag Event
		Sub Open()
		  me.FieldName = "Range:"
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cRangeLong
	#tag Event
		Sub Open()
		  me.FieldName = "Long Range:"
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cProperties
	#tag Event
		Sub Open()
		  me.FieldName = "Properties:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = True
		  
		  me.BaseMenu.AddMenu new MenuItem( "None", "" )
		  me.BaseMenu.AddMenu new MenuItem( "-", "" )
		  me.BaseMenu.AddMenu new MenuItem( "Martial", "M" )
		  me.BaseMenu.AddMenu new MenuItem( "-", "" )
		  me.BaseMenu.AddMenu new MenuItem( "Ammunition", "A" )
		  me.BaseMenu.AddMenu new MenuItem( "Finesse", "F" )
		  me.BaseMenu.AddMenu new MenuItem( "Heavy", "H" )
		  me.BaseMenu.AddMenu new MenuItem( "Light", "L" )
		  me.BaseMenu.AddMenu new MenuItem( "Loading", "LD" )
		  me.BaseMenu.AddMenu new MenuItem( "Reach", "R" )
		  me.BaseMenu.AddMenu new MenuItem( "Special", "S" )
		  me.BaseMenu.AddMenu new MenuItem( "Thrown", "T" )
		  me.BaseMenu.AddMenu new MenuItem( "Two-Handed", "2H" )
		  me.BaseMenu.AddMenu new MenuItem( "Versatile", "V" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cCategories
	#tag Event
		Sub Open()
		  me.FieldName = "Categories:"
		  me.SetMode ccEditorTextField.Mode.MultipleChoice
		  me.ReadOnly = False
		  
		  me.BaseMenu.Append new MenuItem( "None", "")
		  
		  me.BaseMenu.Append new MenuItem( "-" )
		  
		  me.BaseMenu.Append new MenuItem( "spellcasting focus" )
		  me.BaseMenu.Append new MenuItem( "druidic focus" )
		  me.BaseMenu.Append new MenuItem( "holy symbol" )
		  
		  me.BaseMenu.Append new MenuItem( "-" )
		  
		  me.BaseMenu.Append new MenuItem( "container" )
		  me.BaseMenu.Append new MenuItem( "clothes" )
		  me.BaseMenu.Append new MenuItem( "food and drink" )
		  me.BaseMenu.Append new MenuItem( "flora" )
		  me.BaseMenu.Append new MenuItem( "trade good" )
		  me.BaseMenu.Append new MenuItem( "livestock" )
		  me.BaseMenu.Append new MenuItem( "services" )
		  me.BaseMenu.Append new MenuItem( "instrument" )
		  me.BaseMenu.Append new MenuItem( "gaming set" )
		  me.BaseMenu.Append new MenuItem( "artisan tools" )
		  me.BaseMenu.Append new MenuItem( "tool" )
		  me.BaseMenu.Append new MenuItem( "generic variant" )
		  
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "poison (contact)" )
		  me.BaseMenu.Append new MenuItem( "poison (ingested)" )
		  me.BaseMenu.Append new MenuItem( "poison (inhaled)" )
		  me.BaseMenu.Append new MenuItem( "poison (injury)" )
		  
		  
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "mount" )
		  me.BaseMenu.Append new MenuItem( "vehicle (air)" )
		  me.BaseMenu.Append new MenuItem( "vehicle (land)" )
		  me.BaseMenu.Append new MenuItem( "vehicle (land/water)" )
		  me.BaseMenu.Append new MenuItem( "vehicle (water)" )
		  
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "firearm" )
		  me.BaseMenu.Append new MenuItem( "renaissance" )
		  me.BaseMenu.Append new MenuItem( "modern" )
		  me.BaseMenu.Append new MenuItem( "futuristic" )
		  
		  me.BaseMenu.Append new MenuItem( "-" )
		  // Light Armor
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "leather armor" )
		  me.BaseMenu.Append new MenuItem( "padded armor" )
		  me.BaseMenu.Append new MenuItem( "studded leather armor" )
		  // Medium Armor
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "breastplate" )
		  me.BaseMenu.Append new MenuItem( "chain shirt" )
		  me.BaseMenu.Append new MenuItem( "hide armor" )
		  me.BaseMenu.Append new MenuItem( "scale mail" )
		  // Heavy armor
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "chain mail" )
		  me.BaseMenu.Append new MenuItem( "half plate armor" )
		  me.BaseMenu.Append new MenuItem( "plate armor" )
		  me.BaseMenu.Append new MenuItem( "ring mail" )
		  me.BaseMenu.Append new MenuItem( "splint armor" )
		  // Shield
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "shield" )
		  // Melee Weapons
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "battleaxe" )
		  me.BaseMenu.Append new MenuItem( "club" )
		  me.BaseMenu.Append new MenuItem( "dagger" )
		  me.BaseMenu.Append new MenuItem( "double-bladed scimitar" )
		  me.BaseMenu.Append new MenuItem( "flail" )
		  me.BaseMenu.Append new MenuItem( "glaive" )
		  me.BaseMenu.Append new MenuItem( "greataxe" )
		  me.BaseMenu.Append new MenuItem( "greatclub" )
		  me.BaseMenu.Append new MenuItem( "greatsword" )
		  me.BaseMenu.Append new MenuItem( "Halberd" )
		  me.BaseMenu.Append new MenuItem( "handaxe" )
		  me.BaseMenu.Append new MenuItem( "hooked shortspear" )
		  me.BaseMenu.Append new MenuItem( "hoopak" )
		  me.BaseMenu.Append new MenuItem( "javelin" )
		  me.BaseMenu.Append new MenuItem( "lance" )
		  me.BaseMenu.Append new MenuItem( "light hammer" )
		  me.BaseMenu.Append new MenuItem( "longsword" )
		  me.BaseMenu.Append new MenuItem( "mace" )
		  me.BaseMenu.Append new MenuItem( "maul" )
		  me.BaseMenu.Append new MenuItem( "morningstar" )
		  me.BaseMenu.Append new MenuItem( "pike" )
		  me.BaseMenu.Append new MenuItem( "quarterstaff" )
		  me.BaseMenu.Append new MenuItem( "rapier" )
		  me.BaseMenu.Append new MenuItem( "scimitar" )
		  me.BaseMenu.Append new MenuItem( "shortsword" )
		  me.BaseMenu.Append new MenuItem( "sickle" )
		  me.BaseMenu.Append new MenuItem( "spear" )
		  me.BaseMenu.Append new MenuItem( "trident" )
		  me.BaseMenu.Append new MenuItem( "war pick" )
		  me.BaseMenu.Append new MenuItem( "warhammer" )
		  me.BaseMenu.Append new MenuItem( "whip" )
		  me.BaseMenu.Append new MenuItem( "yklwa" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "rod" )
		  me.BaseMenu.Append new MenuItem( "staff" )
		  me.BaseMenu.Append new MenuItem( "wand" )
		  // Ranged Weapons
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "blowgun" )
		  me.BaseMenu.Append new MenuItem( "dart" )
		  me.BaseMenu.Append new MenuItem( "hand crossbow" )
		  me.BaseMenu.Append new MenuItem( "heavy crossbow" )
		  me.BaseMenu.Append new MenuItem( "light crossbow" )
		  me.BaseMenu.Append new MenuItem( "light repeating crossbow" )
		  me.BaseMenu.Append new MenuItem( "longbow" )
		  me.BaseMenu.Append new MenuItem( "net" )
		  me.BaseMenu.Append new MenuItem( "shortbow" )
		  me.BaseMenu.Append new MenuItem( "sling" )
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDetail
	#tag Event
		Sub Open()
		  me.FieldName = "Detail:"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  me.ReadOnly = False
		  
		  me.BaseMenu.Append new MenuItem( "None", "" )
		  me.BaseMenu.Append new MenuItem( "-", "" )
		  me.BaseMenu.Append new MenuItem( "common" )
		  me.BaseMenu.Append new MenuItem( "uncommon" )
		  me.BaseMenu.Append new MenuItem( "rare" )
		  me.BaseMenu.Append new MenuItem( "very rare" )
		  me.BaseMenu.Append new MenuItem( "legendary" )
		  me.BaseMenu.Append new MenuItem( "artifact" )
		  me.BaseMenu.Append new MenuItem( "varies" )
		  
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "uncommon (requires attunement)" )
		  me.BaseMenu.Append new MenuItem( "rare (requires attunement)" )
		  me.BaseMenu.Append new MenuItem( "very rare (requires attunement)" )
		  me.BaseMenu.Append new MenuItem( "legendary (requires attunement)" )
		  me.BaseMenu.Append new MenuItem( "artifact (requires attunement)" )
		  me.BaseMenu.Append new MenuItem( "varies (requires attunement)" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "cursed (requires attunement)" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cItemType
	#tag Event
		Sub Open()
		  me.FieldName = "Type:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = True
		  
		  me.BaseMenu.Append new MenuItem("Wondrous Item", "W")
		  me.BaseMenu.Append new MenuItem("Adventuring Gear", "G")
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("Light Armor", "LA") 'Armor
		  me.BaseMenu.Append new MenuItem("Medium Armor", "MA") 'Armor
		  me.BaseMenu.Append new MenuItem("Heavy Armor", "HA") 'Armor
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("Shield", "S")
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("Melee Weapon", "M") 'Melee
		  me.BaseMenu.Append new MenuItem("Ranged Weapon", "R") 'Ranged
		  me.BaseMenu.Append new MenuItem("Ammunition", "A")
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("Rod", "RD") 'Melee?
		  me.BaseMenu.Append new MenuItem("Staff", "ST") 'Melee
		  me.BaseMenu.Append new MenuItem("Wand", "WD") 'Melee?
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("Ring", "RG")
		  me.BaseMenu.Append new MenuItem("Potion", "P")
		  me.BaseMenu.Append new MenuItem("Scroll", "SC")
		  me.BaseMenu.Append new MenuItem("Wealth", "$")
		  
		  me.Value = "Wondrous Item"
		  me.Tag = "W"
		End Sub
	#tag EndEvent
	#tag Event
		Sub ValueChanged(TheValue as String)
		  
		  
		  Select case TheValue
		    
		  case "Melee Weapon", "Ranged Weapon", "Staff"', "Wand", "Rod"
		    cvsArmor.Visible = False
		    cvsWeapon.Visible = True
		    
		    cvsWeapon.Top = 290
		    cvsPlacard.Top = cvsWeapon.Top + cvsWeapon.Height + 12
		    
		    self.Height = cvsPlacard.Top + cvsPlacard.Height + 20
		    
		  case "Light Armor", "Medium Armor", "Heavy Armor", "Shield"
		    cvsArmor.Visible = True
		    cvsWeapon.Visible = False
		    
		    cvsArmor.Top = 290
		    cvsPlacard.Top = cvsArmor.Top + cvsArmor.Height + 12
		    
		    self.Height = cvsPlacard.Top + cvsPlacard.Height + 20
		    
		  else
		    cvsArmor.Visible = False
		    cvsWeapon.Visible = False
		    
		    cvsPlacard.Top = 290
		    
		  End Select
		  
		  'self.Height = cvsPlacard.Top + cvsPlacard.Height + 20
		  
		  
		  
		  Select case TheValue
		    
		  case "Staff"
		    if cDMG1.Value = "" then
		      cDMG1.Value = "1d6"
		    end if
		    if cDMG2.Value = "" then
		      cDMG2.Value = "1d8"
		    end if
		    
		    if cProperties.Value = "" then
		      cProperties.Reset
		      cProperties.Value = "Versatile"
		      cProperties.Values.Append "Versatile"
		      cProperties.Tags.Append "V"
		    end if
		    
		    if cDamageType.Value = "" then
		      cDamageType.Value = "Bludgeoning"
		      cDamageType.Tag = "B"
		    end if
		    
		    'case "Rod", "Wand"
		    'if cDMG1.Value = "" then
		    'cDMG1.Value = "1d4"
		    'end if
		    'cDMG2.Value = ""
		    
		    'if cProperties.Value = "" then
		    'cProperties.Reset
		    'cProperties.Value = "Light"
		    'cProperties.Values.Append "Light"
		    'cProperties.Tags.Append "L"
		    'end if
		    
		    'if cDamageType.Value = "" then
		    'cDamageType.Value = "Bludgeoning"
		    'cDamageType.Tag = "B"
		    'end if
		    
		  End Select
		  
		  'var ec as EmbedControl
		  'if me.Parent IsA EmbedControl then
		  'ec = EmbedControl( me.Parent )
		  'ec.AdjustScroller
		  'end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cWeight
	#tag Event
		Sub Open()
		  me.FieldName = "Weight (lbs):"
		  me.SetMode ccEditorTextField.Mode.Textfield
		  'me.txtField.ValidationMask = "9999999999.999"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cGoldValue
	#tag Event
		Sub Open()
		  me.FieldName = "Gold (gp):"
		  me.SetMode ccEditorTextField.Mode.Textfield
		  'me.txtField.ValidationMask = "9999999999.999"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cMagicItem
	#tag Event
		Sub Open()
		  me.FieldName = "Magic Item:"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsPlacard
	#tag Event
		Sub Open()
		  
		  'self.Height = cvsPlacard.Top + cvsPlacard.Height + 20
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDescription
	#tag Event
		Sub Open()
		  me.FieldName = "Description:"
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub BuildTemplateMenu()
		  var templatesMenu as new MenuItem("Templates")
		  
		  var miWeaponProperties as new MenuItem( "Property Descriptions:", "Properties" )
		  miWeaponProperties.Enabled = False
		  
		  templatesMenu.AddMenu miWeaponProperties
		  
		  templatesMenu.AddMenu new MenuItem( "Special", "template:" + "Special: " )
		  templatesMenu.AddMenu new MenuItem( "Curse", "template:" + kWeaponPropertyCurse )
		  templatesMenu.AddMenu new MenuItem( "Ammunition", "template:" + kWeaponPropertyAmmunition )
		  templatesMenu.AddMenu new MenuItem( "Finesse", "template:" + kWeaponPropertyFinesse )
		  templatesMenu.AddMenu new MenuItem( "Thrown", "template:" + kWeaponPropertyThrown )
		  templatesMenu.AddMenu new MenuItem( "Range", "template:" + kWeaponPropertyRange )
		  templatesMenu.AddMenu new MenuItem( "Loading", "template:" + kWeaponPropertyLoading )
		  templatesMenu.AddMenu new MenuItem( "Reload", "template:" + kWeaponPropertyReload )
		  templatesMenu.AddMenu new MenuItem( "Burst Fire", "template:" + kWeaponPropertyBurstFire )
		  templatesMenu.AddMenu new MenuItem( "Heavy", "template:" + kWeaponPropertyHeavy )
		  templatesMenu.AddMenu new MenuItem( "Reach", "template:" + kWeaponPropertyReach )
		  templatesMenu.AddMenu new MenuItem( "Two-Handed", "template:" + kWeaponPropertyTwoHanded )
		  templatesMenu.AddMenu new MenuItem( "Versatile", "template:" + kWeaponPropertyVersatile )
		  templatesMenu.AddMenu new MenuItem( "Light", "template:" + kWeaponPropertyLight )
		  
		  templatesMenu.AddMenu new MenuItem( "-", "-" )
		  
		  templatesMenu.AddMenu new MenuItem( "Arcane Focus", "template:" + kSpellFocusArcane )
		  templatesMenu.AddMenu new MenuItem( "Druidic Focus", "template:" + kSpellFocusDruidic )
		  templatesMenu.AddMenu new MenuItem( "Holy Symbol", "template:" + kSpellFocusHolySymbol )
		  templatesMenu.AddMenu new MenuItem( "Instrument", "template:" + kSpellFocusInstrument )
		  
		  templatesMenu.AddMenu new MenuItem( "-", "-" )
		  
		  templatesMenu.AddMenu new MenuItem( "Stealth Disadvantage", "template:" + kArmorStealthDisadvantage )
		  
		  var ArmorMinimumStrength as String = kArmorMinimumStrength
		  ArmorMinimumStrength = ArmorMinimumStrength.Replace( "%STR%", cStrength.Value.Trim )
		  templatesMenu.AddMenu new MenuItem( "Minimum Strength", "template:" + ArmorMinimumStrength )
		  
		  templatesMenu.AddMenu new MenuItem( "-", "-" )
		  
		  var miStatusConditions as new MenuItem( "Status Descriptions:", "Status" )
		  miStatusConditions.Enabled = False
		  
		  templatesMenu.AddMenu miStatusConditions
		  
		  templatesMenu.AddMenu new MenuItem( "Asleep", "template:" + kStatusAsleep )
		  templatesMenu.AddMenu new MenuItem( "Blinded", "template:" + kStatusBlinded )
		  templatesMenu.AddMenu new MenuItem( "Charmed", "template:" + kStatusCharmed )
		  templatesMenu.AddMenu new MenuItem( "Deafened", "template:" + kStatusDeafened )
		  templatesMenu.AddMenu new MenuItem( "Frightened", "template:" + kStatusFrightened )
		  templatesMenu.AddMenu new MenuItem( "Incapacitated", "template:" + kStatusIncapacitated )
		  templatesMenu.AddMenu new MenuItem( "Invisible", "template:" + kStatusInvisible )
		  templatesMenu.AddMenu new MenuItem( "Panicked", "template:" + kStatusPanicked )
		  templatesMenu.AddMenu new MenuItem( "Paralyzed", "template:" + kStatusParalyzed )
		  templatesMenu.AddMenu new MenuItem( "Petrified", "template:" + kStatusPetrified )
		  templatesMenu.AddMenu new MenuItem( "Poisoned", "template:" + kStatusPoisoned )
		  templatesMenu.AddMenu new MenuItem( "Prone", "template:" + kStatusProne )
		  templatesMenu.AddMenu new MenuItem( "Restrained", "template:" + kStatusRestrained )
		  templatesMenu.AddMenu new MenuItem( "Sickened", "template:" + kStatusSickened )
		  templatesMenu.AddMenu new MenuItem( "Stunned", "template:" + kStatusStunned )
		  templatesMenu.AddMenu new MenuItem( "Unconscious", "template:" + kStatusUnconscious )
		  
		  'me.TemplateMenu = templatesMenu
		  
		  
		  templatesMenu.AddMenu new MenuItem( "-", "-" )
		  
		  var miPoisonTypes as new MenuItem( "Poison Types:", "Poisons" )
		  miPoisonTypes.Enabled = False
		  
		  templatesMenu.AddMenu miPoisonTypes
		  
		  templatesMenu.AddMenu new MenuItem( "Contact", "template:" + kPoisonContact )
		  templatesMenu.AddMenu new MenuItem( "Ingested", "template:" + kPoisonIngested )
		  templatesMenu.AddMenu new MenuItem( "Injury", "template:" + kPoisonInjury )
		  templatesMenu.AddMenu new MenuItem( "Inhaled", "template:" + kPoisonInhaled )
		  
		  me.TemplateMenu = templatesMenu
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDiceRolls
	#tag Event
		Sub FindDiceNotationsIn(ByRef Name as String, ByRef Source as String)
		  Source = cDescription.Value
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
#tag Events popBaseItems
	#tag Event
		Sub Open()
		  var xNodes() as XMLNode = BaseItems
		  
		  me.AddRow ""
		  me.AddRow "-"
		  
		  for index as Integer = 0 to xNodes.LastIndex
		    me.AddRow xNodes(index).ValueOfNodeWithName( "name" )
		    me.RowTagAt( me.LastAddedRowIndex ) = xNodes(index)
		  next
		  
		  me.SelectedRowIndex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLoadTemplate
	#tag Event
		Sub Action()
		  LoadTemplate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bvlClipboard
	#tag Event
		Sub Action()
		  var c as new Clipboard
		  
		  var Title as string
		  var Description as String
		  var detail, type, rarity as string
		  
		  if c.Text <> "" then
		    
		    var lines() as string
		    Description = NormalizeLineEndings( c.Text )
		    
		    lines = Description.Split( EndOfLine )
		    
		    
		    if lines.LastIndex > -1 then
		      
		      if lines(0).Length <= 50 then
		        Title = lines(0)
		        lines.RemoveAt(0)
		        if not lines(0).Contains("wondrous item") and not lines(0).Contains("rare") and not lines(0).Contains("common") and not lines(0).Contains("legendary") and not lines(0).Contains("artifact") then
		          Title = Title + " " + lines(0)
		          lines.RemoveAt(0)
		        end if
		      end if
		      
		      // pre-apply formatting
		      'Description = String.FromArray( lines, EndOfLine )
		      '
		      'cDescription.FormatParagraphs( Description, False )
		      'cDescription.FormatLists( Description, false )
		      '
		      'lines = Description.Split( EndOfLine )
		      '//
		      if lines.LastIndex > -1 then
		        var detailline as String = lines(0)
		        if detailline.Contains( "rare" ) or detailline.Contains("common") or detailline.Contains("legendary") or detailline.Contains("artifact") then
		          type = detailline.NthField(",", 1).Trim
		          rarity = detailline.NthField(",", 2).Trim
		          if rarity.Contains("(") and NOT rarity.Contains(")") then
		            rarity = rarity + " " + lines(1)
		            lines.RemoveAt(1)
		          end if
		          
		          if type.Contains("Wondrous Item") then
		            cItemType.Value = "Wondrous Item"
		            cItemType.Tag = "W"
		            
		            cMagicItem.FieldValue = True
		            
		          elseif type.Contains("armor") or type.Contains("weapon") then
		            var baseItem as String = type.Match("\((.*?)\)", 1 ).Trim
		            
		            var rowIndex as Integer = -1
		            for index as Integer = 0 to popBaseItems.LastRowIndex
		              if popBaseItems.RowValueAt( index ) = Title then
		                rowIndex = index
		                Exit
		              end if
		            next
		            
		            if rowIndex > -1 then
		              popBaseItems.SelectRowWithValue( baseItem )
		              if baseItem <> "" and popBaseItems.SelectedRowIndex > 0 then
		                LoadTemplate
		              end if
		            end if
		            
		          else
		            
		            if type <> "" then
		              
		              Select case type
		                
		              case "Wondrous Item"
		                cItemType.Tag = "W"
		              case "Adventuring Gear"
		                cItemType.Tag = "G"
		              case "Light Armor"
		                cItemType.Tag = "LA"
		              case "Medium Armor"
		                cItemType.Tag = "MA"
		              case "Heavy Armor"
		                cItemType.Tag = "HA"
		              case "Shield"
		                cItemType.Tag = "S"
		              case "Melee Weapon"
		                cItemType.Tag = "M"
		              case "Ranged Weapon"
		                cItemType.Tag = "R"
		              case "Ammunition"
		                cItemType.Tag = "A"
		              case "Rod"
		                cItemType.Tag = "RD"
		              case "Staff"
		                cItemType.Tag = "ST"
		              case "Wand"
		                cItemType.Tag = "WD"
		              case "Ring"
		                cItemType.Tag = "RG"
		              case "Potion"
		                cItemType.Tag = "P"
		              case "Scroll"
		                cItemType.Tag = "SC"
		              case "Wealth"
		                cItemType.Tag = "$"
		                
		              End Select
		              
		              
		              cItemType.Value = type.Titlecase
		            end if
		            
		            var rowIndex as Integer = -1
		            for index as Integer = 0 to popBaseItems.LastRowIndex
		              if popBaseItems.RowValueAt( index ) = Title then
		                rowIndex = index
		                Exit
		              end if
		            next
		            
		            
		            if rowIndex > -1 then
		              popBaseItems.SelectRowWithValue( type )
		              if popBaseItems.SelectedRowIndex > 0 then
		                LoadTemplate
		              end if
		              
		            end if
		            
		          end if
		        end if
		        
		        lines.RemoveAt(0)
		      end if
		    end if
		    
		    Description = string.FromArray( lines, EndOfLine )
		  end if
		  
		  
		  cDescription.FormatParagraphs( Description, False )
		  cDescription.FormatLists( Description, false )
		  
		  
		  'if cName.Value.Contains( "Unnamed" ) then
		  'cName.Value = cName.Value.Replace("Unnamed", Title)
		  'else
		  Title = Title.Titlecase.ReplaceAll(" Of ", " of ").ReplaceAll(" The ", " the ").ReplaceAll( " A ", " a " ).ReplaceAll( " With ", " with " ).ReplaceAll(" And ", " and ")
		  
		  cName.Value = Title
		  cDetail.Value = rarity
		  'end if
		  
		  'if cDescription.Value.Trim <> "" then
		  'cDescription.Value = Description + EndOfLine + EndOfLine + cDescription.Value
		  'else
		  cDescription.Value = Description
		  'end if
		  
		  
		  
		  '
		  'me.BaseMenu.Append new MenuItem("Wondrous Item", "W")
		  'me.BaseMenu.Append new MenuItem("Adventuring Gear", "G")
		  'me.BaseMenu.Append new MenuItem("-")
		  'me.BaseMenu.Append new MenuItem("Light Armor", "LA") 'Armor
		  'me.BaseMenu.Append new MenuItem("Medium Armor", "MA") 'Armor
		  'me.BaseMenu.Append new MenuItem("Heavy Armor", "HA") 'Armor
		  'me.BaseMenu.Append new MenuItem("-")
		  'me.BaseMenu.Append new MenuItem("Shield", "S")
		  'me.BaseMenu.Append new MenuItem("-")
		  'me.BaseMenu.Append new MenuItem("Melee Weapon", "M") 'Melee
		  'me.BaseMenu.Append new MenuItem("Ranged Weapon", "R") 'Ranged
		  'me.BaseMenu.Append new MenuItem("Ammunition", "A")
		  'me.BaseMenu.Append new MenuItem("-")
		  'me.BaseMenu.Append new MenuItem("Rod", "RD") 'Melee?
		  'me.BaseMenu.Append new MenuItem("Staff", "ST") 'Melee
		  'me.BaseMenu.Append new MenuItem("Wand", "WD") 'Melee?
		  'me.BaseMenu.Append new MenuItem("-")
		  'me.BaseMenu.Append new MenuItem("Ring", "RG")
		  'me.BaseMenu.Append new MenuItem("Potion", "P")
		  'me.BaseMenu.Append new MenuItem("Scroll", "SC")
		  'me.BaseMenu.Append new MenuItem("Wealth", "$")
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
#tag EndViewBehavior
