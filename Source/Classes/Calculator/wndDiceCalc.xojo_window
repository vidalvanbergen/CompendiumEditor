#tag DesktopWindow
Begin DesktopWindow wndDiceCalc
   Backdrop        =   0
   BackgroundColor =   &cFAFAFA00
   Composite       =   False
   DefaultLocation =   3
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   False
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   384
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   400
   MaximumWidth    =   256
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   400
   MinimumWidth    =   256
   Resizeable      =   False
   Title           =   "Calculator"
   Type            =   8
   Visible         =   True
   Width           =   256
   Begin DesktopPagePanel ppSwitch
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   100
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelCount      =   4
      Panels          =   ""
      Scope           =   0
      SelectedPanelIndex=   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   84
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   192
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "dx"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   12
         InitialParent   =   "ppSwitch"
         Left            =   128
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Custom Sided Dice"
         Top             =   134
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "d20"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   11
         InitialParent   =   "ppSwitch"
         Left            =   64
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "20 Sided Dice"
         Top             =   134
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "d10"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   10
         InitialParent   =   "ppSwitch"
         Left            =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "10 Sided Dice"
         Top             =   134
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "d8"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   15
         InitialParent   =   "ppSwitch"
         Left            =   128
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "8 Sided Dice"
         Top             =   84
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "d6"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   14
         InitialParent   =   "ppSwitch"
         Left            =   64
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "6 Sided Dice"
         Top             =   84
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "d4"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   13
         InitialParent   =   "ppSwitch"
         Left            =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "4 Sided Dice"
         Top             =   84
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "CON"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   26
         InitialParent   =   "ppSwitch"
         Left            =   128
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Constitution Score"
         Top             =   84
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "DEX"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   27
         InitialParent   =   "ppSwitch"
         Left            =   64
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Dexterity Score"
         Top             =   84
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "STR"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   28
         InitialParent   =   "ppSwitch"
         Left            =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Strength Score"
         Top             =   84
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "INT"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   25
         InitialParent   =   "ppSwitch"
         Left            =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Intelligence Score"
         Top             =   134
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "WIS"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   24
         InitialParent   =   "ppSwitch"
         Left            =   64
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Wisdom Score"
         Top             =   134
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "CHA"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   23
         InitialParent   =   "ppSwitch"
         Left            =   128
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Charisma Score"
         Top             =   134
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "½LVL"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   32
         InitialParent   =   "ppSwitch"
         Left            =   128
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Half Player Level"
         Top             =   84
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "LVL"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   33
         InitialParent   =   "ppSwitch"
         Left            =   64
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Player Level"
         Top             =   84
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "PROF"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   34
         InitialParent   =   "ppSwitch"
         Left            =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Proficiency"
         Top             =   84
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "W"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   31
         InitialParent   =   "ppSwitch"
         Left            =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Weapon Main Hand"
         Top             =   134
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "Wo"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   30
         InitialParent   =   "ppSwitch"
         Left            =   64
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   3
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Weapon Off-Hand"
         Top             =   134
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
      Begin cvsDiceCalcButton cvsButtonCalc
         Active          =   False
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         BackColor       =   &cEEEEEE00
         BackColorActive =   &c00000000
         BackColorHover  =   &c00000000
         BackColorPressed=   &cE0E0E000
         Backdrop        =   0
         Caption         =   "SPELL"
         Enabled         =   True
         FontSize        =   16
         Height          =   50
         Hover           =   False
         Icon            =   0
         IconSize        =   64
         Index           =   29
         InitialParent   =   "ppSwitch"
         Left            =   128
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   3
         TabStop         =   True
         Template        =   False
         TemplateColor   =   &c86000000
         TextColor       =   &c00000000
         Tooltip         =   "Spell Ability Score"
         Top             =   134
         Transparent     =   True
         UseHoverBackColor=   False
         UsePressedBackColor=   True
         Visible         =   True
         Width           =   64
      End
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cF5F5F500
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cE0E0E000
      Backdrop        =   0
      Caption         =   "7"
      Enabled         =   True
      FontSize        =   16
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   7
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   184
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cF5F5F500
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cE0E0E000
      Backdrop        =   0
      Caption         =   "8"
      Enabled         =   True
      FontSize        =   16
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   8
      Left            =   64
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   184
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cF5F5F500
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cE0E0E000
      Backdrop        =   0
      Caption         =   "9"
      Enabled         =   True
      FontSize        =   16
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   9
      Left            =   128
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   184
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cF5F5F500
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cE0E0E000
      Backdrop        =   0
      Caption         =   "4"
      Enabled         =   True
      FontSize        =   16
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   4
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   234
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cF5F5F500
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cE0E0E000
      Backdrop        =   0
      Caption         =   "5"
      Enabled         =   True
      FontSize        =   16
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   5
      Left            =   64
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   234
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cF5F5F500
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cE0E0E000
      Backdrop        =   0
      Caption         =   "6"
      Enabled         =   True
      FontSize        =   16
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   6
      Left            =   128
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   234
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cF5F5F500
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cE0E0E000
      Backdrop        =   0
      Caption         =   "1"
      Enabled         =   True
      FontSize        =   16
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   1
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   284
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cF5F5F500
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cE0E0E000
      Backdrop        =   0
      Caption         =   "2"
      Enabled         =   True
      FontSize        =   16
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   2
      Left            =   64
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   284
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cF5F5F500
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cE0E0E000
      Backdrop        =   0
      Caption         =   "3"
      Enabled         =   True
      FontSize        =   16
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   3
      Left            =   128
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   284
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cF5F5F500
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cE0E0E000
      Backdrop        =   0
      Caption         =   "0"
      Enabled         =   True
      FontSize        =   16
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   334
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cEEEEEE00
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cE0E0E000
      Backdrop        =   0
      Caption         =   "("
      Enabled         =   True
      FontSize        =   16
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   16
      Left            =   64
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   334
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cEEEEEE00
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cE0E0E000
      Backdrop        =   0
      Caption         =   ")"
      Enabled         =   True
      FontSize        =   16
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   17
      Left            =   128
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   334
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsCalcButtonEquals
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cFF960000
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cFF800000
      Backdrop        =   0
      Caption         =   "="
      Enabled         =   True
      FontSize        =   28
      Height          =   100
      Hover           =   False
      Icon            =   0
      IconSize        =   32
      Index           =   -2147483648
      Left            =   192
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c00000000
      TextColor       =   &cFFFFFF00
      Tooltip         =   ""
      Top             =   284
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin DesktopCanvas cvsDisplay
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   50
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   256
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cFFC10700
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cFFB30000
      Backdrop        =   0
      Caption         =   "+"
      Enabled         =   True
      FontSize        =   28
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   18
      Left            =   192
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &cFFFFFF00
      Tooltip         =   "Addition"
      Top             =   234
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cFFC10700
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cFFB30000
      Backdrop        =   0
      Caption         =   "−"
      Enabled         =   True
      FontSize        =   28
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   19
      Left            =   192
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &cFFFFFF00
      Tooltip         =   "Minus"
      Top             =   184
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cFFC10700
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cFFB30000
      Backdrop        =   0
      Caption         =   "×"
      Enabled         =   True
      FontSize        =   28
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   20
      Left            =   192
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &cFFFFFF00
      Tooltip         =   "Multiply"
      Top             =   134
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsButtonCalc
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cFFC10700
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cFFB30000
      Backdrop        =   0
      Caption         =   "÷"
      Enabled         =   True
      FontSize        =   28
      Height          =   50
      Hover           =   False
      Icon            =   0
      IconSize        =   64
      Index           =   21
      Left            =   192
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c86000000
      TextColor       =   &cFFFFFF00
      Tooltip         =   "Divide"
      Top             =   84
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsCalcButtonBackspace
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cF4433600
      BackColorActive =   &c00000000
      BackColorHover  =   &c00000000
      BackColorPressed=   &cC0202000
      Backdrop        =   0
      Caption         =   "⌫"
      Enabled         =   True
      FontSize        =   22
      Height          =   34
      Hover           =   False
      Icon            =   0
      IconSize        =   32
      Index           =   -2147483648
      Left            =   192
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c00000000
      TextColor       =   &cFFFFFF00
      Tooltip         =   "Delete"
      Top             =   50
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsCalcButtonSwitch
      Active          =   True
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cE0E0E000
      BackColorActive =   &cEEEEEE00
      BackColorHover  =   &c00000000
      BackColorPressed=   &cC8C8C800
      Backdrop        =   0
      Caption         =   ""
      Enabled         =   True
      FontSize        =   28
      Height          =   34
      Hover           =   False
      Icon            =   1376546815
      IconSize        =   18
      Index           =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c00000000
      TextColor       =   &cFFFFFF00
      Tooltip         =   "Dice"
      Top             =   50
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsCalcButtonSwitch
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cE0E0E000
      BackColorActive =   &cEEEEEE00
      BackColorHover  =   &c00000000
      BackColorPressed=   &cC8C8C800
      Backdrop        =   0
      Caption         =   ""
      Enabled         =   True
      FontSize        =   28
      Height          =   34
      Hover           =   False
      Icon            =   1337399295
      IconSize        =   18
      Index           =   1
      Left            =   64
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   True
      TemplateColor   =   &c00000000
      TextColor       =   &cFFFFFF00
      Tooltip         =   "Ability Scores"
      Top             =   50
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
   Begin cvsDiceCalcButton cvsCalcButtonSwitch
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      BackColor       =   &cE0E0E000
      BackColorActive =   &cEEEEEE00
      BackColorHover  =   &c00000000
      BackColorPressed=   &cC8C8C800
      Backdrop        =   0
      Caption         =   ""
      Enabled         =   True
      FontSize        =   28
      Height          =   34
      Hover           =   False
      Icon            =   1436805119
      IconSize        =   18
      Index           =   2
      Left            =   128
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Pressed         =   False
      Scope           =   0
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      Template        =   False
      TemplateColor   =   &c00000000
      TextColor       =   &cFFFFFF00
      Tooltip         =   "Special"
      Top             =   50
      Transparent     =   True
      UseHoverBackColor=   False
      UsePressedBackColor=   True
      Visible         =   True
      Width           =   64
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Function KeyDown(key As String) As Boolean
		  dim AscKey as Integer = Asc( key )
		  
		  Select case AscKey
		    
		  case 8', 127 // delete
		    RemoveFromDisplay
		    Return True
		    
		  case 27 // Escape
		    DisplayText = StartRoll '""
		    self.Close
		    
		    Return True
		    
		  case 48, 49, 50, 51, 52, 53, 54, 55, 56, 57 // Numbers
		    AddToDisplay( key )
		    Return True
		    
		  case 42 // Multiplied
		    AddToDisplay( "×" )
		    Return True
		  case 43 // Plus
		    AddToDisplay( "+" )
		    Return True
		  case 45 // Minus
		    AddToDisplay( "−" )
		    Return True
		  case 47 // Divided
		    AddToDisplay( "÷" )
		    Return True
		    
		  case 115 // s
		    AddToDisplay "STR"
		    Return True
		    
		  case 99 // c
		    AddToDisplay "CON"
		    Return True
		    
		  case 120 // x
		    AddToDisplay "DEX"
		    Return True
		    
		  case 105 // i
		    AddToDisplay "INT"
		    Return True
		    
		  case 119 // w
		    AddToDisplay "WIS"
		    Return True
		    
		  case 97, 107 // a, k
		    AddToDisplay "CHA"
		    Return True
		    
		    
		  case 112 // p
		    AddToDisplay "PROF"
		    Return True
		    
		  case 78 // L
		    AddToDisplay "LVL"
		    Return True
		    
		  case 108 // l
		    AddToDisplay "½LVL"
		    Return True
		    
		  case 101, 83 // e, S
		    AddToDisplay "SPELL"
		    Return True
		    
		  case 100 // d
		    AddToDisplay "d"
		    Return True
		    
		    
		  case 3, 13
		    self.Close
		    Return True
		    
		  End Select
		  
		  
		  Return False
		End Function
	#tag EndEvent

	#tag Event
		Sub KeyUp(key As String)
		  press.Play
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddToDisplay(Addition as String)
		  'press.Play
		  
		  var splitDisplayText() as String = DisplayText.Split(" ")
		  
		  var splitLastIndex as Integer = -1
		  var splitLastValue as String = ""
		  
		  if splitDisplayText.LastIndex > -1 then
		    splitLastIndex = splitDisplayText.LastIndex
		    splitLastValue = splitDisplayText( splitLastIndex )
		  end if
		  
		  Select case Addition
		    
		    //
		  case "+", "−", "×", "÷"
		    if splitLastValue = "+" or _
		      splitLastValue = "−" or _
		      splitLastValue = "×" or _ 
		      splitLastValue = "÷" then
		      splitDisplayText( splitDisplayText.LastIndex ) = Addition
		    else
		      splitDisplayText.Add Addition
		    end if
		    
		    //
		  case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
		    if splitDisplayText.LastIndex > -1 then
		      if splitLastValue = "+" or splitLastValue = "−" or splitLastValue = "×" or splitLastValue = "÷" then
		        splitDisplayText.Add Addition
		      else
		        splitDisplayText( splitDisplayText.LastIndex ) = splitDisplayText( splitDisplayText.LastIndex ) + Addition
		      end if
		    else
		      splitDisplayText.Add Addition
		    end if
		    
		    'if splitLastValue.Right(1) = "d" or splitLastValue = "(" then
		    'splitDisplayText( splitDisplayText.LastIndex ) = splitDisplayText( splitDisplayText.LastIndex ) + Addition
		    'elseif splitLastIndex > -1 and NOT splitLastValue.Contains("d") then
		    'if splitLastValue <> "+" and splitLastValue <> "−" and splitLastValue <> "×" and splitLastValue <> "÷" then
		    'splitDisplayText.Add "+"
		    'end if
		    'splitDisplayText.Add Addition
		    'else
		    'splitDisplayText.Add Addition
		    'end if
		    
		    //
		  case "d4", "d6", "d8", "d10", "d20"
		    var splitvalt as Integer = splitLastValue.Replace("(","").Val
		    
		    if NOT splitLastValue.Contains("d") and splitLastValue.Replace("(","").Val > 0 then
		      splitDisplayText( splitDisplayText.LastIndex ) = splitDisplayText( splitDisplayText.LastIndex ) + Addition
		    elseif splitLastValue.Contains( Addition ) then
		      splitDisplayText( splitDisplayText.LastIndex ) = Str( Val( splitLastValue.NthField("d", 1) ) + 1 ) + Addition
		    elseif splitLastIndex > -1 then
		      if splitLastValue <> "+" and splitLastValue <> "−" and splitLastValue <> "×" and splitLastValue <> "÷" then
		        splitDisplayText.Add "+"
		      end if
		      splitDisplayText.Add "1" + Addition
		    else
		      splitDisplayText.Add "1" + Addition
		    end if
		    
		    
		    //
		  case "dx", "d"
		    if splitLastIndex > -1 and NOT splitLastValue.Contains("d") and Val( splitLastValue ) > -1 then
		      splitDisplayText( splitDisplayText.LastIndex ) = splitDisplayText( splitDisplayText.LastIndex ) + "d"
		    elseif splitLastValue.Right(1) = "d" then
		      splitDisplayText( splitDisplayText.LastIndex ) = Str( Val( splitDisplayText( splitDisplayText.LastIndex ).NthField("n", 1) ) + 1 ) + "d"
		    else
		      if splitLastIndex > -1 and splitLastValue <> "+" and splitLastValue <> "−" and splitLastValue <> "×" and splitLastValue <> "÷" then
		        splitDisplayText.Add "+"
		      end if
		      splitDisplayText.Add "1d"
		    end if
		    
		    //
		  case ")"
		    if splitLastValue.Contains("d") or splitLastValue.Val > -1 then
		      if splitLastValue.Contains("(") or DisplayText.Contains("(") then
		        splitDisplayText( splitDisplayText.LastIndex ) = splitLastValue + ")"
		      else
		        splitDisplayText( splitDisplayText.LastIndex ) = "(" + splitLastValue + ")"
		      end if
		    else
		      splitDisplayText( splitDisplayText.LastIndex-1 ) = "(" + splitDisplayText( splitDisplayText.LastIndex-1 )
		      splitDisplayText.Add Addition
		    end if
		    
		    //
		  case "("
		    if splitDisplayText.LastIndex > -1 then
		      if splitLastValue <> "+" and splitLastValue <> "−" and splitLastValue <> "×" and splitLastValue <> "÷" then
		        splitDisplayText.Add "+"
		      end if
		    end if
		    splitDisplayText.Add Addition
		    
		  case "W", "Wo"
		    if splitDisplayText.LastIndex > -1 and splitLastValue <> "+" and splitLastValue <> "−" and splitLastValue <> "×" and splitLastValue <> "÷" then
		      splitDisplayText( splitLastIndex ) = splitDisplayText( splitLastIndex ) + "[" + Addition + "]"
		    else
		      splitDisplayText.Add "1"
		      splitDisplayText.Add "[" + Addition + "]"
		    end if
		    
		    
		  case "PROF", "LVL", "½LVL", "SPELL", "STR", "CON", "DEX", "INT", "WIS", "CHA", "HP"
		    if splitLastIndex > -1 and NOT splitLastValue.Contains("d") and splitLastValue.Replace("(","").Val > 0 then
		      splitDisplayText( splitLastIndex ) = splitDisplayText( splitLastIndex ) + Addition
		      
		    elseif splitLastValue.Contains("d") then
		      splitDisplayText.Add "+"
		      splitDisplayText.Add Addition
		    else
		      splitDisplayText.Add Addition
		    end if
		    
		    
		    'if splitLastIndex > -1 and splitLastValue <> "+" and splitLastValue <> "−" and splitLastValue <> "×" and splitLastValue <> "÷" then
		    'splitDisplayText( splitLastIndex ) = splitDisplayText( splitLastIndex ) + Addition
		    ''else
		    ''if splitLastIndex > -1 and splitLastValue <> "+" and splitLastValue <> "−" and splitLastValue <> "×" and splitLastValue <> "÷" then
		    ''splitDisplayText.Add "+"
		    ''splitDisplayText.Add Addition
		    'else
		    'splitDisplayText.Add Addition
		    'end if
		    
		  else
		    if splitDisplayText.LastIndex > -1 and splitLastValue <> "+" and splitLastValue <> "−" and splitLastValue <> "×" and splitLastValue <> "÷" then
		      splitDisplayText.Add "+"
		    end if
		    splitDisplayText.Add Addition
		    
		    
		  End Select
		  
		  DisplayText = String.FromArray( splitDisplayText, " " )
		  cvsDisplay.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveFromDisplay()
		  
		  if Keyboard.AsyncAltKey then
		    DisplayText = ""
		    
		  else
		    
		    var splitDisplay() as String = Trim( DisplayText ).Split(" ")
		    
		    if splitDisplay.LastIndex > -1 then
		      
		      var lastIndex as Integer = splitDisplay.LastIndex
		      var lastValue as String = splitDisplay( lastIndex )
		      
		      
		      if lastValue.Right(1).Val > -1 and lastValue.Contains("d") then
		        splitDisplay( lastIndex ) = splitDisplay( lastIndex ).Replace( "d" + lastValue.NthField( "d", 2 ), "" )
		        
		        'elseif lastValue.Contains("[W]") or lastValue.Contains("[Wo]")
		        
		      elseif lastValue.Val > 0 and lastValue.Length <= 2 then '.Right(1).Val > -1 then
		        splitDisplay( splitDisplay.LastIndex ) = lastValue.Left( lastValue.Length-1 )
		        
		      else
		        splitDisplay.RemoveAt( splitDisplay.LastIndex )
		      end if
		      
		      DisplayText = String.FromArray( splitDisplay, " " )
		    end if
		    
		  end if
		  
		  cvsDisplay.Refresh
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DisplayText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StartRoll As String
	#tag EndProperty


#tag EndWindowCode

#tag Events cvsButtonCalc
	#tag Event
		Sub Action(index as Integer)
		  AddToDisplay( me.Caption )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsCalcButtonEquals
	#tag Event
		Sub Action()
		  me.Window.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsDisplay
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  g.DrawingColor = &cFFFFFF
		  g.FillRect 0, 0, g.Width, g.Height
		  
		  g.FontUnit = FontUnits.Pixel
		  'if ScaleFactor > 1 then
		  'g.FontSize = 70
		  'else
		  'g.FontSize = 45
		  'end if
		  g.FontSize = 45
		  g.FontSize = g.FontSize * ScaleFactor
		  
		  while g.TextWidth( DisplayText ) > g.Width-8
		    if g.FontSize < 10 then
		      Exit
		    end if
		    
		    g.FontSize = g.FontSize - 1
		  wend
		  
		  g.DrawingColor = &c000000
		  g.DrawText DisplayText, g.Width - g.TextWidth( DisplayText ) - 4, g.TextAscent + ( g.Height/2 ) - ( g.TextHeight( DisplayText, g.Width-8 )/2 ), g.Width-8, True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsCalcButtonBackspace
	#tag Event
		Sub Action()
		  RemoveFromDisplay
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsCalcButtonSwitch
	#tag Event
		Sub Action(index as Integer)
		  ppSwitch.SelectedPanelIndex = index
		  
		  'me.Active = (index = me.Index)
		  for i as Integer = 0 to 2
		    cvsCalcButtonSwitch(i).Active = (i = index)
		    cvsCalcButtonSwitch(i).Refresh
		  next
		  'cvsCalcButtonSwitch(index).Active = (index = ppSwitch.SelectedPanelIndex)
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
	#tag ViewProperty
		Name="DisplayText"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="StartRoll"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
