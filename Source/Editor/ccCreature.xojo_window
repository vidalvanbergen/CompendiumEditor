#tag Window
Begin ContainerControl ccCreature
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
   Height          =   2930
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
      Tooltip         =   "Name of the creature."
      Top             =   20
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorCheckbox cNPC
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Check this box if the creature is a named NPC."
      Top             =   156
      Transparent     =   True
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextField cSize
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
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Creature size."
      Top             =   190
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextField cCreatureType
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
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Creature type. (e.g., dragon, undead)"
      Top             =   224
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextField cNameSort
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Sorting name of the creature. (e.g. 'Blue Dragon, Ancient')"
      Top             =   54
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   568
   End
   Begin ccEditorTextField cBaseCreature
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
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Base creature, or name from the statblock serving as the creature's origin. (e.g. 'Blue Dragon')"
      Top             =   88
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextField cAlignment
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
      Tooltip         =   "Alignment. (e.g., ""chaotic evil"")"
      Top             =   258
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
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
      InitialParent   =   ""
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
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Armor class value. Press up or down on the arrow keys to increase or decrease the score."
      Top             =   292
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   324
   End
   Begin ccEditorTextField cArmorType
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
      Left            =   356
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
      Tooltip         =   "Armor type or name."
      Top             =   292
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   304
   End
   Begin ccEditorTextField cMaxHP
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
      LockRight       =   False
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Hit points value. Press up or down on the arrow keys to increase or decrease the score."
      Top             =   326
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   324
   End
   Begin ccEditorTextField cMaxHPRoll
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
      Left            =   356
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Hit points dice formula."
      Top             =   326
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   304
   End
   Begin ccEditorTextField cInitiative
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
      LockRight       =   False
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Initiative bonus. Press up or down on the arrow keys to increase or decrease the score."
      Top             =   394
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   297
   End
   Begin ccEditorTextField cSpeed
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
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Movement speeds. Defaults to walking speed, adding optional fly, burrow, swim and other speeds."
      Top             =   360
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextFieldVertical cAbilityConstitution
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
      Height          =   44
      Index           =   -2147483648
      InitialParent   =   ""
      IsPrefixedNumber=   False
      Left            =   501
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      Tooltip         =   "Constitution score. Press up or down on the arrow keys to increase or decrease the score."
      Top             =   428
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   159
   End
   Begin ccEditorTextFieldVertical cAbilityDexterity
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
      Height          =   44
      Index           =   -2147483648
      InitialParent   =   ""
      IsPrefixedNumber=   False
      Left            =   329
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      Tooltip         =   "Dexterity score. Press up or down on the arrow keys to increase or decrease the score."
      Top             =   428
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   160
   End
   Begin ccEditorTextFieldVertical cAbilityStrength
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
      Height          =   44
      Index           =   -2147483648
      InitialParent   =   ""
      IsPrefixedNumber=   False
      Left            =   157
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      Tooltip         =   "Strength score. Press up or down on the arrow keys to increase or decrease the score."
      Top             =   428
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   160
   End
   Begin ccEditorTextFieldVertical cAbilityIntelligence
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
      Height          =   44
      Index           =   -2147483648
      InitialParent   =   ""
      IsPrefixedNumber=   False
      Left            =   157
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      Tooltip         =   "Intelligence score. Press up or down on the arrow keys to increase or decrease the score."
      Top             =   484
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   160
   End
   Begin ccEditorTextFieldVertical cAbilityWisdom
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
      Height          =   44
      Index           =   -2147483648
      InitialParent   =   ""
      IsPrefixedNumber=   False
      Left            =   329
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      Tooltip         =   "Wisdom score. Press up or down on the arrow keys to increase or decrease the score."
      Top             =   484
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   160
   End
   Begin ccEditorTextFieldVertical cAbilityCharisma
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
      Height          =   44
      Index           =   -2147483648
      InitialParent   =   ""
      IsPrefixedNumber=   False
      Left            =   501
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      Tooltip         =   "Charisma score. Press up or down on the arrow keys to increase or decrease the score."
      Top             =   484
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   159
   End
   Begin ccEditorTextField cSavingThrows
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
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Saving throws with modifiers."
      Top             =   540
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextField cSkills
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
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Skills with modifiers."
      Top             =   574
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextField cDamageVulnerabilities
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
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Damage vulnerabilities."
      Top             =   608
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextField cDamageResistance
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
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Damage resistances."
      Top             =   642
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextField cDamageImmunities
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
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Damage immunities."
      Top             =   676
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextField cConditionImmunities
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
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Condition immunities."
      Top             =   710
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextField cSenses
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
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Special senses (e.g., darkvision 60 ft.)."
      Top             =   744
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextFieldVertical cProficiencyBonus
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
      Height          =   44
      Index           =   -2147483648
      InitialParent   =   ""
      IsPrefixedNumber=   False
      Left            =   157
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      Tooltip         =   "Proficiency Bonus score."
      Top             =   812
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   160
   End
   Begin ccEditorTextFieldVertical cPassivePerception
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
      Height          =   44
      Index           =   -2147483648
      InitialParent   =   ""
      IsPrefixedNumber=   False
      Left            =   329
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      Tooltip         =   "Passive Perception score."
      Top             =   812
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   160
   End
   Begin ccEditorTextFieldVertical cChallengeRating
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
      Height          =   44
      Index           =   -2147483648
      InitialParent   =   ""
      IsPrefixedNumber=   False
      Left            =   501
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      Tooltip         =   "Challenge rating. (1–30, or fractions: 1/2, 1/4, 1/8, 0, 00)."
      Top             =   812
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   159
   End
   Begin ccEditorTextField cLanguagesKnown
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
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Languages known by the creature."
      Top             =   778
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccTraits cFeatureTraits
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
      Height          =   200
      Index           =   -2147483648
      InitialParent   =   ""
      IsAutoLevelFeature=   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      Source          =   ""
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Passive abilities. (e.g., Legendary Resistance)"
      Top             =   902
      Transparent     =   True
      UseMode         =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccTraits cFeatureActions
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
      Height          =   200
      Index           =   -2147483648
      InitialParent   =   ""
      IsAutoLevelFeature=   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      Source          =   ""
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Actions the creature can take."
      Top             =   1114
      Transparent     =   True
      UseMode         =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccTraits cFeatureReaction
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
      Height          =   200
      Index           =   -2147483648
      InitialParent   =   ""
      IsAutoLevelFeature=   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      Source          =   ""
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Reactions it can perform."
      Top             =   1538
      Transparent     =   True
      UseMode         =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccTraits cFeatureLegendary
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
      Height          =   200
      Index           =   -2147483648
      InitialParent   =   ""
      IsAutoLevelFeature=   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      Source          =   ""
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Legendary actions (used outside its turn)."
      Top             =   1750
      Transparent     =   True
      UseMode         =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccEditorTextField cEnvironments
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
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Environments where the creature is found."
      Top             =   868
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin Label lblSpellSlots
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
      TabIndex        =   42
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Spell Slots:"
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   2288
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   125
   End
   Begin TextField txtSpellSlots
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   "0, 4, 3, 3, 2"
      Index           =   -2147483648
      Italic          =   False
      Left            =   157
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   43
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Available spell slots, starting with 0 for cantrips."
      Top             =   2286
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   503
   End
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
      Height          =   590
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   44
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Creature's description."
      Top             =   2320
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   640
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
      FieldName       =   "Source:"
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
      Tooltip         =   ""
      Top             =   122
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccTraits cFeatureActionsBonus
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
      Height          =   200
      Index           =   -2147483648
      InitialParent   =   ""
      IsAutoLevelFeature=   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      Source          =   ""
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Bonus actions the creature can take."
      Top             =   1326
      Transparent     =   True
      UseMode         =   ""
      Visible         =   True
      Width           =   640
   End
   Begin ccTraits cFeatureLair
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
      Height          =   200
      Index           =   -2147483648
      InitialParent   =   ""
      IsAutoLevelFeature=   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      Source          =   ""
      TabIndex        =   37
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Lair actions and descriptions."
      Top             =   1962
      Transparent     =   True
      UseMode         =   ""
      Visible         =   True
      Width           =   640
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
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   45
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   2174
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin PushButton btnSortName
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Set"
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
      TabIndex        =   46
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   54
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Function GetXMLNode() As XMLNode
		  
		  var xCreature as XMLNode = xNode 'xRoot.AppendNewChild( "feat" )
		  
		  if xCreature = Nil then
		    Return Nil
		  end if
		  
		  // Clear old children
		  xCreature.RemoveAllChildren
		  
		  // Name
		  xCreature.AppendSimpleChild( "name", cName.Value.Trim )
		  
		  //-----
		  // Sort name
		  if cNameSort.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "sortname", cNameSort.Value.Trim )
		  end if
		  
		  // Base creature
		  if cBaseCreature.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "ancestry", cBaseCreature.Value.Trim )
		  end if
		  
		  // NPC
		  if cNPC.FieldValue then
		    xCreature.AppendSimpleChild( "npc", "YES" )
		  end if
		  //-----
		  
		  
		  // Size
		  if cSize.Value <> "" then
		    xCreature.AppendSimpleChild( "size", cSize.Tag.Trim )
		  else
		    xCreature.AppendSimpleChild( "size", Nil )
		  end if
		  
		  // Type
		  if cCreatureType.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "type", cCreatureType.Value )
		  else
		    xCreature.AppendSimpleChild( "type", Nil )
		  end if
		  
		  // Alignment
		  if cAlignment.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "alignment", cAlignment.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "alignment", Nil )
		  end if
		  
		  // Armor Class
		  if cArmorClass.Value.Trim <> "" then
		    if cArmorType.Value.Trim <> "" then
		      xCreature.AppendSimpleChild( "ac", cArmorClass.Value.Trim + " (" + cArmorType.Value.Trim + ")" )
		    else
		      xCreature.AppendSimpleChild( "ac", cArmorClass.Value.Trim )
		    end if
		  else
		    xCreature.AppendSimpleChild( "ac", Nil )
		  end if
		  
		  // Max HP
		  if cMaxHP.Value.Trim <> "" then
		    if cMaxHPRoll.Value.Trim <> "" then
		      xCreature.AppendSimpleChild( "hp", cMaxHP.Value.Trim + " (" + cMaxHPRoll.Tag.Trim + ")" )
		    else
		      xCreature.AppendSimpleChild( "hp", cMaxHP.Value.Trim )
		    end if
		  else
		    xCreature.AppendSimpleChild( "hp", Nil )
		  end if
		  
		  // Speed
		  if cSpeed.Value <> "" then
		    xCreature.AppendSimpleChild( "speed", cSpeed.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "speed", Nil )
		  end if
		  
		  // Initiative
		  if cInitiative.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "init", cInitiative.Value.Trim )
		  end if
		  
		  
		  // Ablity Strength
		  if cAbilityStrength.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "str", cAbilityStrength.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "str", Nil )
		  end if
		  // Ablity Dexterity
		  if cAbilityDexterity.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "dex", cAbilityDexterity.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "dex", Nil )
		  end if
		  // Ablity Constitution
		  if cAbilityConstitution.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "con", cAbilityConstitution.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "con", Nil )
		  end if
		  // Ablity Intelligence
		  if cAbilityIntelligence.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "int", cAbilityIntelligence.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "int", Nil )
		  end if
		  // Ablity Wisdom
		  if cAbilityWisdom.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "wis", cAbilityWisdom.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "wis", Nil )
		  end if
		  // Ablity Charisma
		  if cAbilityCharisma.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "cha", cAbilityCharisma.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "cha", Nil )
		  end if
		  
		  
		  // Saving Throws
		  if cSavingThrows.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "save", cSavingThrows.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "save", Nil )
		  end if
		  
		  // Skills
		  if cSkills.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "skill", cSkills.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "skill", Nil )
		  end if
		  
		  // Passive Perception
		  if cPassivePerception.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "passive", cPassivePerception.Value.Trim )
		  else
		    'xCreature.AppendSimpleChild( "passive", Nil )
		  end if
		  
		  // Languages Known
		  if cLanguagesKnown.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "languages", cLanguagesKnown.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "languages", Nil )
		  end if
		  
		  // Challenge Rating
		  if cChallengeRating.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "cr", cChallengeRating.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "cr", Nil )
		  end if
		  
		  // Damage Vulnerable
		  if cDamageVulnerabilities.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "vulnerable", cDamageVulnerabilities.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "vulnerable", Nil )
		  end if
		  
		  // Damage Resistances
		  if cDamageResistance.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "resist", cDamageResistance.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "resist", Nil )
		  end if
		  
		  // Damage Immune
		  if cDamageImmunities.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "immune", cDamageImmunities.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "immune", Nil )
		  end if
		  
		  // Condition Immune
		  if cConditionImmunities.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "conditionImmune", cConditionImmunities.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "conditionImmune", Nil )
		  end if
		  
		  // Senses
		  if cSenses.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "senses", cSenses.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "senses", Nil )
		  end if
		  
		  
		  // Proficiency Bonus
		  if cProficiencyBonus.Value.Trim <> "" then
		    
		    var profBonus as string = cProficiencyBonus.Value.Trim
		    if NOT profBonus.Contains("-") and NOT profBonus.Contains("+") and profBonus.Left(1).IsNumericString then
		      profBonus = "+" + profBonus
		    end if
		    
		    var xProf as XMLNode = xCreature.AppendNewChild("trait")
		    xProf.AppendSimpleChild( "name", "Proficiency Bonus" )
		    xProf.AppendSimpleChild( "text", profBonus )
		  end if
		  
		  
		  // Traits
		  cFeatureTraits.AddFeaturesToXMLNode( xCreature )
		  
		  // Actions
		  cFeatureActions.AddFeaturesToXMLNode( xCreature )
		  
		  // Bonus Actions
		  var traitsNode() as XMLNode = cFeatureActionsBonus.GetFeatures 'xFeaturesRoot
		  for index as Integer = 0 to traitsNode.LastIndex 'ChildCount-1
		    var xChild as XMLNode = traitsNode(index)
		    
		    var xName as string = xChild.ValueOfNodeWithName("name")
		    if xName <> "" and NOT xName.Contains( "(Bonus Action)" ) then
		      xChild.SetValueOfNodeWithName("name", xName + " (Bonus Action)")
		    end if
		    
		    xCreature.AppendChildCopy( xChild )
		  next
		  
		  // Reactions
		  cFeatureReaction.AddFeaturesToXMLNode( xCreature )
		  
		  // Legendary
		  cFeatureLegendary.AddFeaturesToXMLNode( xCreature )
		  
		  // Lair
		  'cFeatureLair.AddFeaturesToXMLNode( xCreature )
		  var lairNode() as XMLNode = cFeatureLair.GetFeatures 'xFeaturesRoot
		  for index as Integer = 0 to lairNode.LastIndex
		    var xChild as XMLNode = lairNode(index)
		    xChild.SetAttribute( "category", "lair" )
		    
		    xCreature.AppendChildCopy( xChild )
		  next
		  
		  
		  // Spell Slots
		  if txtSpellSlots.Text.Trim <> "" then
		    xCreature.AppendSimpleChild( "slots", txtSpellSlots.Text.Trim.ReplaceAll(" ", "") )
		  end if
		  // Spells
		  if cSpells.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "spells", cSpells.Value.Trim )
		  end if
		  
		  // Description
		  if cDescription.Value <> "" or cSource.Value <> "" then
		    SetDescription( xCreature, cDescription.Value, cSource.Value, "description" )
		  end if
		  
		  // Environment
		  if cEnvironments.Value.Trim <> "" then
		    xCreature.AppendSimpleChild( "environment", cEnvironments.Value.Trim )
		  else
		    xCreature.AppendSimpleChild( "environment", Nil )
		  end if
		  
		  Return xCreature
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
		  
		  LoadXML( xNode, True )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadXML(TheNode as XMLNode, TemplateNode as Boolean = False)
		  me.Reset
		  
		  if NOT TemplateNode then
		    xNode = TheNode
		  end if
		  
		  
		  if TheNode <> Nil then
		    
		    var descriptionLines() as String
		    
		    for index as Integer = 0 to TheNode.ChildCount-1
		      var xChild as XMLNode = TheNode.Child(index)
		      
		      var xValue as String
		      if xChild.FirstChild <> Nil then
		        xValue = xChild.FirstChild.Value.StupifyQuotes
		      end if
		      
		      
		      Select case xChild.Name
		        
		      case "name"
		        cName.Value = xValue
		        
		      case "sortname", "namesort"
		        cNameSort.Value = xValue
		        
		      case "ancestry"
		        cBaseCreature.Value = xValue
		        
		      case "NPC"
		        if xValue = "1" or xValue = "YES" then
		          cNPC.FieldValue = True
		        end if
		        
		      case "size"
		        cSize.Value = TitleForMenuWithTag( cSize.BaseMenu, xValue )
		        if cSize.Value = "None" then
		          cSize.Value = ""
		        end if
		        cSize.Tag = xValue
		        
		      case "type"
		        cCreatureType.Value = xValue'.Lowercase
		        
		      case "alignment"
		        cAlignment.Value = xValue
		        
		      case "ac"
		        var armorclass, armortype as String
		        if xValue.Contains("(") and xValue.Contains(")") then
		          armorclass = xValue.NthField("(", 1).Trim
		          armortype = xValue.Replace( armorclass, "" ).Trim
		          
		          if armortype.StartsWith("(") then
		            armortype = armortype.Right( armortype.Length-1 )
		          end if
		          if armortype.EndsWith(")") then
		            armortype = armortype.Left( armortype.Length-1 )
		          end if
		          
		          'armortype = xValue.Match("\((.*?)\)", 1)
		          'armorclass = xValue.ReplaceAllRegEx( "\((.*?)\)", "" ).Trim
		        else
		          armorclass = xValue
		        end if
		        
		        cArmorClass.Value = armorclass
		        cArmorType.Value = armortype
		        
		      case "hp"
		        var maxHP, maxHProll as String
		        if xValue.Contains("(") and xValue.Contains(")") then
		          maxHProll = xValue.Match("\((.*?)\)", 1).Trim
		          maxHP = xValue.ReplaceAllRegEx( "\((.*?)\)", "" ).Trim
		        else
		          maxHP = xValue
		        end if
		        
		        cMaxHP.Value = maxHP
		        cMaxHPRoll.Value = maxHProll
		        cMaxHPRoll.Tag = maxHProll
		        
		      case "speed"
		        cSpeed.Value = xValue
		        
		      case "init"
		        cInitiative.Value = xValue
		        
		      case "str"
		        cAbilityStrength.Value = xValue
		      case "dex"
		        cAbilityDexterity.Value = xValue
		      case "con"
		        cAbilityConstitution.Value = xValue
		      case "int"
		        cAbilityIntelligence.Value = xValue
		      case "wis"
		        cAbilityWisdom.Value = xValue
		      case "cha"
		        cAbilityCharisma.Value = xValue
		        
		      case "save"
		        cSavingThrows.Value = xValue.Titlecase
		        
		      case "skill"
		        cSkills.Value = xValue.Titlecase
		        
		      case "vulnerable"
		        cDamageVulnerabilities.Value = xValue'.Lowercase
		        
		      case "resist"
		        cDamageResistance.Value = xValue'.Lowercase
		        
		      case "immune"
		        cDamageImmunities.Value = xValue'.Lowercase
		        
		      case "conditionImmune"
		        cConditionImmunities.Value = xValue'.Lowercase
		        
		      case "senses"
		        cSenses.Value = xValue'.Lowercase
		        
		      case "languages"
		        cLanguagesKnown.Value = xValue
		        
		      case "passive"
		        cPassivePerception.Value = xValue
		        
		      case "cr"
		        cChallengeRating.Value = xValue
		        
		      case "environment"
		        cEnvironments.Values = xValue.SplitString(",")
		        cEnvironments.Value = xValue
		        
		        'if xValue <> "" then
		        '
		        ''var tags() as String = xValue.SplitString(",")
		        ''cEnvironments.Tags = tags
		        ''cEnvironments.Values = tags
		        '
		        '
		        ''var properties() as String
		        ''for each tag as String in tags
		        ''properties.Append TitleForMenuWithTag( cEnvironments.BaseMenu, tag )
		        ''next
		        ''cEnvironments.Value = StringFromArray( properties, ", " )
		        ''cEnvironments.Values = properties
		        '
		        'end if
		        
		        
		      case "trait"
		        var xName as String = xChild.ValueOfNodeWithName("name")
		        
		        Select case xName
		          
		        case "Source"
		          cSource.Value = xChild.ValueOfNodeWithName("text")
		          
		        case "Proficiency Bonus"
		          cProficiencyBonus.Value = xChild.ValueOfNodeWithName("text")
		          
		        else
		          cFeatureTraits.FeatureAdd( xChild )
		          
		        End Select
		        
		      case "action"
		        var xName as String = xChild.ValueOfNodeWithName("name")
		        
		        if xName.Contains("(Bonus Action)") then
		          xChild.SetValueOfNodeWithName("name", xChild.ValueOfNodeWithName("name").ReplaceAll("(Bonus Action)", "").Trim )
		          cFeatureActionsBonus.FeatureAdd( xChild )
		        else
		          cFeatureActions.FeatureAdd( xChild )
		        end if
		        
		      case "reaction"
		        cFeatureReaction.FeatureAdd( xChild )
		        
		      case "legendary"
		        var xName as String = xChild.ValueOfNodeWithName("name")
		        var xAttribute as String = xChild.GetAttribute("category")
		        
		        if xName.Contains("Lair Actions") or xName.Contains("Regional Effects") or xName.StartsWith("Lair") or xName.EndsWith( " Lair") or xAttribute = "lair" then
		          cFeatureLair.FeatureAdd( xChild )
		        else
		          cFeatureLegendary.FeatureAdd( xChild )
		        end if
		        
		        
		      case "description", "text"
		        descriptionLines.Add xValue
		        
		        
		      case "slots"
		        txtSpellSlots.Text = xValue
		        
		      case "spells"
		        cSpells.Value = xValue
		        
		      End Select
		      
		      
		    next
		    
		    cDescription.Value = String.FromArray( descriptionLines, EndOfLine )
		    if cDescription.Value.Contains("Source:") then
		      cSource.Value = SourceFromDescription( cDescription.Value ).ReplaceAll( EndOfLine, " " ).ReplaceAll( chr(9), "" ).Trim
		      cDescription.Value = DescriptionWithoutSource( cDescription.Value )
		    end if
		    
		  end if
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  cAbilityCharisma.Reset
		  cAbilityConstitution.Reset
		  cAbilityDexterity.Reset
		  cAbilityIntelligence.Reset
		  cAbilityStrength.Reset
		  cAbilityWisdom.Reset
		  
		  cAlignment.Reset
		  cArmorClass.Reset
		  cArmorType.Reset
		  cBaseCreature.Reset
		  cChallengeRating.Reset
		  cConditionImmunities.Reset
		  cCreatureType.Reset
		  
		  cDamageImmunities.Reset
		  cDamageResistance.Reset
		  cDamageVulnerabilities.Reset
		  cDescription.Reset
		  
		  cEnvironments.Reset
		  cFeatureActions.Reset
		  cFeatureActionsBonus.Reset
		  cFeatureLegendary.Reset
		  cFeatureReaction.Reset
		  cFeatureTraits.Reset
		  cFeatureLair.Reset
		  
		  cInitiative.Reset
		  cLanguagesKnown.Reset
		  cMaxHP.Reset
		  cMaxHPRoll.Reset
		  
		  cName.Reset
		  cNameSort.Reset
		  
		  cNPC.FieldValue = False
		  cPassivePerception.Reset
		  cProficiencyBonus.Reset
		  cSavingThrows.Reset
		  cSenses.Reset
		  cSize.Reset
		  cSkills.Reset
		  cSource.Reset
		  cSpeed.Reset
		  
		  cSpells.Value = ""
		  txtSpellSlots.Text = ""
		  
		  me.Invalidate
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
#tag Events cNPC
	#tag Event
		Sub Open()
		  me.FieldName = "NPC:"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSize
	#tag Event
		Sub Open()
		  me.FieldName = "Size:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = True
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  for each Size as String in DnDArrays.Sizes
		    me.BaseMenu.Append new MenuItem( Size, Size.Left(1) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cCreatureType
	#tag Event
		Sub Open()
		  me.FieldName = "Type:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = False
		  'me.UseLowercase = True
		  
		  
		  me.BaseMenu.Append new MenuItem( "Aberration" )
		  me.BaseMenu.Append new MenuItem( "Beast" )
		  me.BaseMenu.Append new MenuItem( "Celestial" )
		  me.BaseMenu.Append new MenuItem( "Construct" )
		  me.BaseMenu.Append new MenuItem( "Dragon" )
		  me.BaseMenu.Append new MenuItem( "Elemental" )
		  me.BaseMenu.Append new MenuItem( "Fey" )
		  me.BaseMenu.Append new MenuItem( "Fiend" )
		  me.BaseMenu.Append new MenuItem( "Giant" )
		  me.BaseMenu.Append new MenuItem( "Humanoid" )
		  me.BaseMenu.Append new MenuItem( "Monstrosity" )
		  me.BaseMenu.Append new MenuItem( "Ooze" )
		  me.BaseMenu.Append new MenuItem( "Plant" )
		  me.BaseMenu.Append new MenuItem( "Undead" )
		  
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Aberration (Mind Flayer)" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Fiend (Demon)" )
		  me.BaseMenu.Append new MenuItem( "Fiend (Devil)" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Aberration (Shapechanger)" )
		  me.BaseMenu.Append new MenuItem( "Fiend (Shapechanger)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Human, Shapechanger)" )
		  me.BaseMenu.Append new MenuItem( "Undead (Shapechanger)" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Humanoid ()" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Any Species)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Dragonborn)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Dwarf)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Elf)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Gnome)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Goblinoid)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Half-Elf)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Half-Orc)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Halfling)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Human)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Kobold)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Orc)" )
		  me.BaseMenu.Append new MenuItem( "Humanoid (Tiefling)" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cNameSort
	#tag Event
		Sub Open()
		  me.FieldName = "Sort Name:"
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cBaseCreature
	#tag Event
		Sub Open()
		  me.FieldName = "Origin Creature:"
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cAlignment
	#tag Event
		Sub Open()
		  me.FieldName = "Alignment:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = False
		  
		  
		  me.BaseMenu.Append new MenuItem( "None", "" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Good" )
		  me.BaseMenu.Append new MenuItem( "Neutral" )
		  me.BaseMenu.Append new MenuItem( "Evil" )
		  me.BaseMenu.Append new MenuItem( "Unaligned" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Any Alignment" )
		  me.BaseMenu.Append new MenuItem( "Any Lawful Alignment" )
		  me.BaseMenu.Append new MenuItem( "Any Non-Lawful Alignment" )
		  me.BaseMenu.Append new MenuItem( "Any Good Alignment" )
		  me.BaseMenu.Append new MenuItem( "Any Non-Good Alignment" )
		  me.BaseMenu.Append new MenuItem( "Any Evil Alignment" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Any Good Alignment" )
		  me.BaseMenu.Append new MenuItem( "Any Neutral Alignment" )
		  me.BaseMenu.Append new MenuItem( "Any Evil Alignment" )
		  me.BaseMenu.Append new MenuItem( "Any Chaotic Alignment" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Lawful Good" )
		  me.BaseMenu.Append new MenuItem( "Chaotic Good" )
		  me.BaseMenu.Append new MenuItem( "Neutral Good" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Lawful Neutral" )
		  me.BaseMenu.Append new MenuItem( "Chaotic Neutral" )
		  me.BaseMenu.Append new MenuItem( "Neutral" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Lawful Evil" )
		  me.BaseMenu.Append new MenuItem( "Chaotic Evil" )
		  me.BaseMenu.Append new MenuItem( "Neutral Evil" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cArmorClass
	#tag Event
		Sub Open()
		  me.FieldName = "Armor Class:"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  me.txtField.ValidationMask = "####"
		  
		  for index as Integer = 0 to 99
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cArmorType
	#tag Event
		Sub Open()
		  me.FieldName = "Armor:"
		  me.SetMode ccEditorTextField.Mode.MultipleChoice
		  me.UseLowercase = True
		  
		  me.BaseMenu.Append new MenuItem( "None", "" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "shield" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "natural armor" )
		  me.BaseMenu.Append new MenuItem( "unarmored defense" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "breastplate" )
		  me.BaseMenu.Append new MenuItem( "chain mail armor" )
		  me.BaseMenu.Append new MenuItem( "chain shirt" )
		  me.BaseMenu.Append new MenuItem( "leather armor" )
		  me.BaseMenu.Append new MenuItem( "plate armor" )
		  me.BaseMenu.Append new MenuItem( "splint armor" )
		  me.BaseMenu.Append new MenuItem( "studded leather armor" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cMaxHP
	#tag Event
		Sub Open()
		  me.FieldName = "Max HP:"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  me.txtField.ValidationMask = "#######"
		  
		  for index as Integer = 1 to 1024
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cMaxHPRoll
	#tag Event
		Sub Open()
		  me.FieldName = "HP Roll:"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  me.ReadOnly = True
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.Append new MenuItem( "New dice roll" )
		  me.BaseMenu.Append new MenuItem( "Edit dice roll" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cInitiative
	#tag Event
		Sub Open()
		  me.FieldName = "Initiative Bonus:"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  me.txtField.ValidationMask = "####"
		  
		  for index as Integer = 0 to 99
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSpeed
	#tag Event
		Sub Open()
		  me.FieldName = "Speed:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = False
		  me.UseLowercase = True
		  
		  
		  me.BaseMenu.Append new MenuItem("20 ft.")
		  me.BaseMenu.Append new MenuItem("25 ft.")
		  me.BaseMenu.Append new MenuItem("30 ft.")
		  me.BaseMenu.Append new MenuItem("35 ft.")
		  me.BaseMenu.Append new MenuItem("40 ft.")
		  me.BaseMenu.Append new MenuItem("45 ft.")
		  me.BaseMenu.Append new MenuItem("50 ft.")
		  me.BaseMenu.Append new MenuItem("45 ft.")
		  me.BaseMenu.Append new MenuItem("60 ft.")
		  
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("Fly 30 ft.")
		  me.BaseMenu.Append new MenuItem("Fly 60 ft.")
		  me.BaseMenu.Append new MenuItem("Fly 120 ft.")
		  
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("Burrow 30 ft.")
		  me.BaseMenu.Append new MenuItem("Climb 30 ft.")
		  me.BaseMenu.Append new MenuItem("Hover 30 ft.")
		  me.BaseMenu.Append new MenuItem("Swim 30 ft.")
		  me.BaseMenu.Append new MenuItem("Walk 30 ft.")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cAbilityConstitution
	#tag Event
		Sub Open()
		  me.FieldName = "Constitution:"
		  me.SetMode ccEditorTextFieldVertical.Mode.Dropdown
		  me.txtField.ValidationMask = "####"
		  
		  for index as Integer = 0 to 99
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cAbilityDexterity
	#tag Event
		Sub Open()
		  me.FieldName = "Dexterity:"
		  me.SetMode ccEditorTextFieldVertical.Mode.Dropdown
		  me.txtField.ValidationMask = "####"
		  
		  for index as Integer = 0 to 99
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cAbilityStrength
	#tag Event
		Sub Open()
		  me.FieldName = "Strength:"
		  me.SetMode ccEditorTextFieldVertical.Mode.Dropdown
		  me.txtField.ValidationMask = "####"
		  
		  for index as Integer = 0 to 99
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cAbilityIntelligence
	#tag Event
		Sub Open()
		  me.FieldName = "Intelligence:"
		  me.SetMode ccEditorTextFieldVertical.Mode.Dropdown
		  me.txtField.ValidationMask = "####"
		  
		  for index as Integer = 0 to 99
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cAbilityWisdom
	#tag Event
		Sub Open()
		  me.FieldName = "Wisdom:"
		  me.SetMode ccEditorTextFieldVertical.Mode.Dropdown
		  me.txtField.ValidationMask = "####"
		  
		  for index as Integer = 0 to 99
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cAbilityCharisma
	#tag Event
		Sub Open()
		  me.FieldName = "Charisma:"
		  me.SetMode ccEditorTextFieldVertical.Mode.Dropdown
		  me.txtField.ValidationMask = "####"
		  
		  for index as Integer = 0 to 99
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSavingThrows
	#tag Event
		Sub Open()
		  me.FieldName = "Saving Throws:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = False
		  me.TagsForValue = True
		  'me.UseLowercase = True
		  
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("Strength", "Str +1")
		  me.BaseMenu.Append new MenuItem("Dexterity", "Dex +1")
		  me.BaseMenu.Append new MenuItem("Constitution", "Con +1")
		  me.BaseMenu.Append new MenuItem("Intelligence", "Int +1")
		  me.BaseMenu.Append new MenuItem("Wisdom", "Wis +1")
		  me.BaseMenu.Append new MenuItem("Charisma", "Cha +1")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSkills
	#tag Event
		Sub Open()
		  me.FieldName = "Skills:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = False
		  me.TagsForValue = True
		  'me.UseLowercase = True
		  
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  for each skill as string in DnDArrays.Skills
		    me.BaseMenu.AddMenu new MenuItem( skill, skill + " +1" )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDamageVulnerabilities
	#tag Event
		Sub Open()
		  me.FieldName = "Vulnerabilities:"
		  me.SetMode ccEditorTextField.Mode.MultipleChoice
		  me.ReadOnly = False
		  me.UseLowercase = True
		  
		  
		  me.BaseMenu.Append new MenuItem( "None", "" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Bludgeoning" )
		  me.BaseMenu.Append new MenuItem( "Piercing" )
		  me.BaseMenu.Append new MenuItem( "Slashing" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Acid" )
		  me.BaseMenu.Append new MenuItem( "Cold" )
		  me.BaseMenu.Append new MenuItem( "Fire" )
		  me.BaseMenu.Append new MenuItem( "Force" )
		  me.BaseMenu.Append new MenuItem( "Lightning" )
		  me.BaseMenu.Append new MenuItem( "Necrotic" )
		  me.BaseMenu.Append new MenuItem( "Poison" )
		  me.BaseMenu.Append new MenuItem( "Psychic" )
		  me.BaseMenu.Append new MenuItem( "Radiant" )
		  me.BaseMenu.Append new MenuItem( "Thunder" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDamageResistance
	#tag Event
		Sub Open()
		  me.FieldName = "Resistances:"
		  me.SetMode ccEditorTextField.Mode.MultipleChoice
		  me.ReadOnly = False
		  me.UseLowercase = True
		  
		  
		  me.BaseMenu.Append new MenuItem( "None", "" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Bludgeoning, Piercing, and Slashing damage from nonmagical attacks" )
		  me.BaseMenu.Append new MenuItem( "Bludgeoning" )
		  me.BaseMenu.Append new MenuItem( "Piercing" )
		  me.BaseMenu.Append new MenuItem( "Slashing" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Acid" )
		  me.BaseMenu.Append new MenuItem( "Cold" )
		  me.BaseMenu.Append new MenuItem( "Fire" )
		  me.BaseMenu.Append new MenuItem( "Force" )
		  me.BaseMenu.Append new MenuItem( "Lightning" )
		  me.BaseMenu.Append new MenuItem( "Necrotic" )
		  me.BaseMenu.Append new MenuItem( "Poison" )
		  me.BaseMenu.Append new MenuItem( "Psychic" )
		  me.BaseMenu.Append new MenuItem( "Radiant" )
		  me.BaseMenu.Append new MenuItem( "Thunder" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDamageImmunities
	#tag Event
		Sub Open()
		  me.FieldName = "Damage Immune:"
		  me.SetMode ccEditorTextField.Mode.MultipleChoice
		  me.ReadOnly = False
		  me.UseLowercase = True
		  
		  
		  me.BaseMenu.Append new MenuItem( "None", "" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Bludgeoning" )
		  me.BaseMenu.Append new MenuItem( "Piercing" )
		  me.BaseMenu.Append new MenuItem( "Slashing" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Acid" )
		  me.BaseMenu.Append new MenuItem( "Cold" )
		  me.BaseMenu.Append new MenuItem( "Fire" )
		  me.BaseMenu.Append new MenuItem( "Force" )
		  me.BaseMenu.Append new MenuItem( "Lightning" )
		  me.BaseMenu.Append new MenuItem( "Necrotic" )
		  me.BaseMenu.Append new MenuItem( "Poison" )
		  me.BaseMenu.Append new MenuItem( "Psychic" )
		  me.BaseMenu.Append new MenuItem( "Radiant" )
		  me.BaseMenu.Append new MenuItem( "Thunder" )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cConditionImmunities
	#tag Event
		Sub Open()
		  me.FieldName = "Condition Immune:"
		  me.SetMode ccEditorTextField.Mode.MultipleChoice
		  me.ReadOnly = False
		  me.UseLowercase = True
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Blinded")
		  me.BaseMenu.AddMenu new MenuItem("Charmed")
		  me.BaseMenu.AddMenu new MenuItem("Deafened")
		  me.BaseMenu.AddMenu new MenuItem("Exhaustion")
		  me.BaseMenu.AddMenu new MenuItem("Frightened")
		  me.BaseMenu.AddMenu new MenuItem("Grappled")
		  me.BaseMenu.AddMenu new MenuItem("Incapacitated")
		  me.BaseMenu.AddMenu new MenuItem("Invisible")
		  me.BaseMenu.AddMenu new MenuItem("Paralyzed")
		  me.BaseMenu.AddMenu new MenuItem("Petrified")
		  me.BaseMenu.AddMenu new MenuItem("Poisoned")
		  me.BaseMenu.AddMenu new MenuItem("Prone")
		  me.BaseMenu.AddMenu new MenuItem("Protecting")
		  me.BaseMenu.AddMenu new MenuItem("Restrained")
		  me.BaseMenu.AddMenu new MenuItem("Stunned")
		  me.BaseMenu.AddMenu new MenuItem("Unconscious")
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSenses
	#tag Event
		Sub Open()
		  me.FieldName = "Senses:"
		  me.SetMode ccEditorTextField.Mode.MultipleChoice
		  me.ReadOnly = False
		  me.UseLowercase = True
		  
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Darkvision 60 ft.")
		  me.BaseMenu.AddMenu new MenuItem("Darkvision 120 ft.")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Blindsight 30 ft.")
		  me.BaseMenu.AddMenu new MenuItem("Blindsight 60 ft.")
		  me.BaseMenu.AddMenu new MenuItem("Blindsight 60 ft. (blind beyond this radius)")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Truesight 120 ft.")
		  me.BaseMenu.AddMenu new MenuItem("Tremorsense 120 ft.")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cProficiencyBonus
	#tag Event
		Sub Open()
		  me.FieldName = "Proficiency Bonus:"
		  me.SetMode ccEditorTextFieldVertical.Mode.Dropdown
		  me.IsPrefixedNumber = True
		  
		  for index as Integer = 0 to 99
		    me.BaseMenu.Append new MenuItem( "+" + str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cPassivePerception
	#tag Event
		Sub Open()
		  me.FieldName = "Passive Perception:"
		  me.SetMode ccEditorTextFieldVertical.Mode.Dropdown
		  me.txtField.ValidationMask = "####"
		  
		  for index as Integer = 0 to 99
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cChallengeRating
	#tag Event
		Sub Open()
		  me.FieldName = "Challenge Rating:"
		  me.SetMode ccEditorTextFieldVertical.Mode.Dropdown
		  'me.txtField.ValidationMask = "####"
		  
		  me.BaseMenu.Append new MenuItem( "1/2" )
		  me.BaseMenu.Append new MenuItem( "1/4" )
		  me.BaseMenu.Append new MenuItem( "1/8" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  
		  for index as Integer = 0 to 30
		    me.BaseMenu.Append new MenuItem( str(index) )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cLanguagesKnown
	#tag Event
		Sub Open()
		  me.FieldName = "Languages:"
		  me.SetMode ccEditorTextField.Mode.MultipleChoice
		  me.ReadOnly = False
		  'me.UseLowercase = True
		  
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Common")
		  me.BaseMenu.AddMenu new MenuItem("Dwarvish")
		  me.BaseMenu.AddMenu new MenuItem("Elvish")
		  me.BaseMenu.AddMenu new MenuItem("Giant")
		  me.BaseMenu.AddMenu new MenuItem("Gnomish")
		  me.BaseMenu.AddMenu new MenuItem("Goblin")
		  me.BaseMenu.AddMenu new MenuItem("Halfling")
		  me.BaseMenu.AddMenu new MenuItem("Orc")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Abyssal")
		  me.BaseMenu.AddMenu new MenuItem("Aquan")
		  me.BaseMenu.AddMenu new MenuItem("Celestial")
		  me.BaseMenu.AddMenu new MenuItem("Draconic")
		  me.BaseMenu.AddMenu new MenuItem("Deep Speech")
		  me.BaseMenu.AddMenu new MenuItem("Infernal")
		  me.BaseMenu.AddMenu new MenuItem("Primordial")
		  me.BaseMenu.AddMenu new MenuItem("Sylvan")
		  me.BaseMenu.AddMenu new MenuItem("Undercommon")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Telepathy 60 ft.")
		  me.BaseMenu.AddMenu new MenuItem("Telepathy 120 ft.")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("any one language (usually Common)")
		  me.BaseMenu.AddMenu new MenuItem("any two languages")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("understands Common but doesn't speak it")
		  me.BaseMenu.AddMenu new MenuItem("understands Common but doesn't speak and can't read or write")
		  me.BaseMenu.AddMenu new MenuItem("the languages it knew in life")
		  me.BaseMenu.AddMenu new MenuItem("understands all languages it spoke in life but can't speak")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cFeatureTraits
	#tag Event
		Sub Open()
		  me.FieldName = "Traits:"
		  me.FeatureType = "trait"
		  me.UseMode = ccTraits.Mode.CreatureFeature
		  
		  var basemenu as new MenuItem( "Templates" )
		  
		  basemenu.AddMenu new MenuItem( "Armor Class" )
		  basemenu.AddMenu new MenuItem( "Hit Points" )
		  basemenu.AddMenu new MenuItem( "-" )
		  basemenu.AddMenu new MenuItem("Pack Tactics", "template:The [creature] has advantage on attack rolls against a creature if at least one of the [creature]'s allies is within 5 feet of the creature and the ally doesn't have the incapacitated condition." )
		  basemenu.AddMenu new MenuItem("Spellcasting")
		  basemenu.AddMenu new MenuItem("Innate Spellcasting")
		  
		  me.TemplateMenu = basemenu
		  
		  
		  var contextMenu as new MenuItem("Move to")
		  
		  'contextMenu.AddMenu new MenuItem( "Traits", cFeatureTraits )
		  contextMenu.AddMenu new MenuItem( "Actions", cFeatureActions )
		  contextMenu.AddMenu new MenuItem( "Bonus Actions", cFeatureActionsBonus )
		  contextMenu.AddMenu new MenuItem( "Reactions", cFeatureReaction )
		  contextMenu.AddMenu new MenuItem( "Legendary", cFeatureLegendary )
		  contextMenu.AddMenu new MenuItem( "Lairs", cFeatureLair )
		  
		  me.ContextMenu = contextMenu
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cFeatureActions
	#tag Event
		Sub Open()
		  me.FieldName = "Action:"
		  me.FeatureType = "action"
		  me.UseMode = ccTraits.Mode.CreatureFeature
		  
		  
		  
		  var contextMenu as new MenuItem("Move to")
		  
		  contextMenu.AddMenu new MenuItem( "Traits", cFeatureTraits )
		  'contextMenu.AddMenu new MenuItem( "Actions", cFeatureActions )
		  contextMenu.AddMenu new MenuItem( "Bonus Actions", cFeatureActionsBonus )
		  contextMenu.AddMenu new MenuItem( "Reactions", cFeatureReaction )
		  contextMenu.AddMenu new MenuItem( "Legendary", cFeatureLegendary )
		  contextMenu.AddMenu new MenuItem( "Lairs", cFeatureLair )
		  
		  me.ContextMenu = contextMenu
		End Sub
	#tag EndEvent
	#tag Event
		Sub BuildTemplateMenu()
		  var basemenu as new MenuItem( "Templates" )
		  basemenu.AddMenu new MenuItem("Multiattack" )
		  basemenu.AddMenu new MenuItem("-" )
		  basemenu.AddMenu new MenuItem("Bite" )
		  basemenu.AddMenu new MenuItem("Claw" )
		  basemenu.AddMenu new MenuItem("-" )
		  basemenu.AddMenu new MenuItem("Dagger" )
		  basemenu.AddMenu new MenuItem("Spear" )
		  
		  me.TemplateMenu = basemenu
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cFeatureReaction
	#tag Event
		Sub Open()
		  me.FieldName = "Reactions:"
		  me.FeatureType = "reaction"
		  me.UseMode = ccTraits.Mode.CreatureFeature
		  
		  var contextMenu as new MenuItem("Move to")
		  
		  contextMenu.AddMenu new MenuItem( "Traits", cFeatureTraits )
		  contextMenu.AddMenu new MenuItem( "Actions", cFeatureActions )
		  contextMenu.AddMenu new MenuItem( "Bonus Actions", cFeatureActionsBonus )
		  'contextMenu.AddMenu new MenuItem( "Reactions", cFeatureReaction )
		  contextMenu.AddMenu new MenuItem( "Legendary", cFeatureLegendary )
		  contextMenu.AddMenu new MenuItem( "Lairs", cFeatureLair )
		  
		  me.ContextMenu = contextMenu
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cFeatureLegendary
	#tag Event
		Sub Open()
		  me.FieldName = "Legendary Actions:"
		  me.FeatureType = "legendary"
		  me.UseMode = ccTraits.Mode.CreatureFeature
		  
		  var contextMenu as new MenuItem("Move to")
		  
		  contextMenu.AddMenu new MenuItem( "Traits", cFeatureTraits )
		  contextMenu.AddMenu new MenuItem( "Actions", cFeatureActions )
		  contextMenu.AddMenu new MenuItem( "Bonus Actions", cFeatureActionsBonus )
		  contextMenu.AddMenu new MenuItem( "Reactions", cFeatureReaction )
		  'contextMenu.AddMenu new MenuItem( "Legendary", cFeatureLegendary )
		  contextMenu.AddMenu new MenuItem( "Lairs", cFeatureLair )
		  
		  me.ContextMenu = contextMenu
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cEnvironments
	#tag Event
		Sub Open()
		  me.FieldName = "Environment:"
		  me.SetMode ccEditorTextField.Mode.MultipleChoice
		  me.ReadOnly = False
		  me.UseLowercase = True
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("Any")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Arctic")
		  me.BaseMenu.AddMenu new MenuItem("Coastal")
		  me.BaseMenu.AddMenu new MenuItem("Desert")
		  me.BaseMenu.AddMenu new MenuItem("Forest")
		  me.BaseMenu.AddMenu new MenuItem("Grassland")
		  me.BaseMenu.AddMenu new MenuItem("Hill")
		  me.BaseMenu.AddMenu new MenuItem("Mountain")
		  me.BaseMenu.AddMenu new MenuItem("Planar")
		  me.BaseMenu.AddMenu new MenuItem("Swamp")
		  me.BaseMenu.AddMenu new MenuItem("Underdark")
		  me.BaseMenu.AddMenu new MenuItem("Underwater")
		  me.BaseMenu.AddMenu new MenuItem("Urban")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDescription
	#tag Event
		Sub Open()
		  me.FieldName = "Description:"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSource
	#tag Event
		Sub Open()
		  
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cFeatureActionsBonus
	#tag Event
		Sub Open()
		  me.FieldName = "Bonus Actions:"
		  me.FeatureType = "action"
		  me.UseMode = ccTraits.Mode.CreatureFeature
		  
		  var contextMenu as new MenuItem("Move to")
		  
		  contextMenu.AddMenu new MenuItem( "Traits", cFeatureTraits )
		  contextMenu.AddMenu new MenuItem( "Actions", cFeatureActions )
		  'contextMenu.AddMenu new MenuItem( "Bonus Actions", cFeatureActionsBonus )
		  contextMenu.AddMenu new MenuItem( "Reactions", cFeatureReaction )
		  contextMenu.AddMenu new MenuItem( "Legendary", cFeatureLegendary )
		  contextMenu.AddMenu new MenuItem( "Lairs", cFeatureLair )
		  
		  me.ContextMenu = contextMenu
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cFeatureLair
	#tag Event
		Sub Open()
		  me.FieldName = "Lair:"
		  me.FeatureType = "legendary"
		  me.UseMode = ccTraits.Mode.CreatureFeature
		  
		  var contextMenu as new MenuItem("Move to")
		  
		  contextMenu.AddMenu new MenuItem( "Traits", cFeatureTraits )
		  contextMenu.AddMenu new MenuItem( "Actions", cFeatureActions )
		  contextMenu.AddMenu new MenuItem( "Bonus Actions", cFeatureActionsBonus )
		  contextMenu.AddMenu new MenuItem( "Reactions", cFeatureReaction )
		  contextMenu.AddMenu new MenuItem( "Legendary", cFeatureLegendary )
		  'contextMenu.AddMenu new MenuItem( "Lairs", cFeatureLair )
		  
		  me.ContextMenu = contextMenu
		End Sub
	#tag EndEvent
	#tag Event
		Sub BuildTemplateMenu()
		  // Features Templates
		  var tTemplateMenu as new MenuItem("Templates")
		  
		  tTemplateMenu.AddMenu new MenuItem("A Creature's Lair" )
		  tTemplateMenu.AddMenu new MenuItem("Lair Actions" )
		  tTemplateMenu.AddMenu new MenuItem("Regional Effects" )
		  
		  me.TemplateMenu = tTemplateMenu
		  'cClassFeatures.TemplateMenu = TemplateMenu
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
#tag Events btnSortName
	#tag Event
		Sub Action()
		  var nameParts() as String = cName.Value.Split( " " )
		  if nameParts.LastIndex > 0 then
		    var first as string = nameParts(0)
		    nameParts.RemoveAt(0)
		    cNameSort.Value = StringFromArray( nameParts, " " ) + ", " + first
		  end if
		  if cBaseCreature.Value.Trim = "" then
		    cBaseCreature.Value = StringFromArray( nameParts, " " )
		  end if
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
