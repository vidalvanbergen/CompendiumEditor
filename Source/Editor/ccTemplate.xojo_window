#tag Window
Begin ContainerControl ccTemplate
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
   Height          =   1280
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
   Begin GroupBox grpMatch
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Choose one of the following fields:"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   195
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   126
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   680
      Begin ccEditorTextField cMatchItemTypes
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
         InitialParent   =   "grpMatch"
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
         Tooltip         =   ""
         Top             =   162
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   640
      End
      Begin Label lblDescription
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   11.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "grpMatch"
         Italic          =   False
         Left            =   185
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Match items with these type(s)."
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   183
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   475
      End
      Begin Label lblDescription
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   11.0
         FontUnit        =   0
         Height          =   20
         Index           =   8
         InitialParent   =   "grpMatch"
         Italic          =   False
         Left            =   185
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Match items with these properties."
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   289
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   475
      End
      Begin ccEditorTextField cMatchProperties
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   False
         EraseBackground =   True
         FieldName       =   "Detail:"
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "grpMatch"
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
         Tooltip         =   ""
         Top             =   268
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   640
      End
      Begin Label lblDescription
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   11.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "grpMatch"
         Italic          =   False
         Left            =   185
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Match items which name contain one of these words. (Comma separated)"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   236
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   475
      End
      Begin ccEditorTextField cMatchNames
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   False
         EraseBackground =   True
         FieldName       =   "Detail:"
         HasBackgroundColor=   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "grpMatch"
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
         Tooltip         =   ""
         Top             =   215
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   640
      End
      Begin RadioButton rdoMatch
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "grpMatch"
         Italic          =   False
         Left            =   12
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   268
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   32
      End
      Begin RadioButton rdoMatch
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "grpMatch"
         Italic          =   False
         Left            =   12
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
         Top             =   162
         Transparent     =   False
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   32
      End
      Begin RadioButton rdoMatch
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "grpMatch"
         Italic          =   False
         Left            =   12
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   215
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   32
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
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin Label lblDescription
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   11.0
      FontUnit        =   0
      Height          =   20
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   185
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Insert %name% where the item's name will be replaced with the baseitem's name."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   41
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   475
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
      Tooltip         =   ""
      Top             =   73
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin Label lblDescription
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   11.0
      FontUnit        =   0
      Height          =   20
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   185
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "This will replace existing rarity."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   94
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   475
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
      Height          =   300
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   446
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin Label lblDescription
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   11.0
      FontUnit        =   0
      Height          =   20
      Index           =   4
      InitialParent   =   ""
      Italic          =   False
      Left            =   185
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Magic item description, added before base non-magic item's description."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   745
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   475
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
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   ""
      Top             =   777
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin Label lblDescription
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   11.0
      FontUnit        =   0
      Height          =   20
      Index           =   5
      InitialParent   =   ""
      Italic          =   False
      Left            =   185
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
      Text            =   "Added first to the list of sources on the base item."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   798
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   475
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
      InitialParent   =   ""
      Left            =   20
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
      Top             =   830
      Transparent     =   True
      Visible         =   True
      Width           =   640
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
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   1102
      Transparent     =   True
      Visible         =   True
      Width           =   640
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
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   393
      Transparent     =   True
      Visible         =   True
      Width           =   640
   End
   Begin Label lblDescription
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   11.0
      FontUnit        =   0
      Height          =   20
      Index           =   6
      InitialParent   =   ""
      Italic          =   False
      Left            =   185
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Uncheck if item is not magical."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   414
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   475
   End
   Begin ccEditorTextField cExclude
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
      Tooltip         =   ""
      Top             =   340
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   640
   End
   Begin Label lblDescription
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   11.0
      FontUnit        =   0
      Height          =   20
      Index           =   7
      InitialParent   =   ""
      Italic          =   False
      Left            =   185
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Exclude items with these names."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   361
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   475
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
		  if cDetail.Value <> "" Then
		    xItem.AppendSimpleChild( "detail", cDetail.Value.Lowercase )
		  end if
		  
		  // Types or Names
		  if rdoMatch(0).Value AND cMatchItemTypes.Tags.LastIndex > -1 then
		    xItem.AppendSimpleChild( "type", StringFromArray( cMatchItemTypes.Tags, "," ) )
		  elseif rdoMatch(1).Value AND cMatchNames.Value <> "" then
		    var matchNames() as string = SplitString( cMatchNames.Value, "," )
		    xItem.AppendSimpleChild( "match", StringFromArray( matchNames, "," ) )
		  elseif rdoMatch(2).Value AND cMatchProperties.tags.LastIndex > -1 then
		    xItem.AppendSimpleChild( "property", StringFromArray( cMatchProperties.Tags, "," ) )
		  end if
		  
		  // Exclude
		  if cExclude.Value <> "" then
		    var excludeNames() as String = SplitString( cExclude.Value, "," )
		    xItem.AppendSimpleChild( "exclude", StringFromArray( excludeNames, "," ) )
		  end if
		  
		  
		  // Magic Item
		  if cMagicItem.FieldValue = False then
		    xItem.AppendSimpleChild( "magic", "NO" )
		  else
		    'xItem.AppendSimpleChild( "magic", Nil )
		  end if
		  
		  
		  // Description
		  var description as String = cDescription.Value
		  var emptyArray() as String
		  SetDescription( xItem, description, emptyArray ) 'ccSourceBox.GetSources ) 'cSource.Value )
		  
		  // Source
		  if cSource.Value <> "" then
		    xItem.AppendSimpleChild("source", cSource.Value)
		  end if
		  
		  // Modifiers
		  var lst as Listbox = cModifiers.lstModifiers
		  
		  if lst.LastRowIndex > -1 then
		    for row as Integer = 0 to lst.LastRowIndex
		      var xModifier as XMLNode = xItem.AppendNewChild( "modifier" )
		      
		      xModifier.SetAttribute( "category", lst.CellValueAt( row, 0 ).Lowercase.Trim )
		      xModifier.SetValue( lst.CellValueAt( row, 1 ).Replace( " + Proficiency Bonus", " +%0" ).Replace( "+Proficiency Bonus", " +%0" ).Lowercase.Trim )
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
		        
		      case "description", "text"
		        descriptionLines.Add xValue
		        
		      case "source"
		        cSource.Value = xValue
		        
		      case "detail"
		        cDetail.Value = xValue
		        
		      case "magic"
		        if xValue = "0" or xValue = "NO" then
		          cMagicItem.FieldValue = False
		        else
		          cMagicItem.FieldValue = True
		        end if
		        
		      case "type"
		        cMatchItemTypes.SetMultiTags SplitString( xValue, "," )
		        
		      case "match"
		        cMatchNames.Value = xValue.ReplaceAll(",", ", ").ReplaceAll("  "," ")
		        
		      case "property"
		        cMatchProperties.SetMultiTags SplitString( xValue, "," )
		        
		      case "exclude"
		        cExclude.Value = xValue.ReplaceAll(",", ", ").ReplaceAll("  "," ")
		        
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
		        Break
		        
		      End Select
		      
		    next
		    
		    if descriptionLines <> Nil and descriptionLines.LastIndex > -1 then
		      
		      cDescription.Value = StringFromArray( descriptionLines, EndOfLine )
		      
		    end if
		    
		  end if
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  cName.Reset
		  cDetail.Reset
		  cDescription.Reset
		  cModifiers.Reset
		  cDiceRolls.Reset
		  cMatchItemTypes.Reset
		  cMatchNames.Reset
		  cMatchProperties.Reset
		  cExclude.Reset
		  cModifiers.Reset
		  cSource.Reset
		  cMagicItem.FieldValue = TRUE
		  
		  xNode = Nil
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
		    cSource.Value = source
		  end if
		  'if ccSourceBox.GetSources.LastIndex = -1 then
		  'ccSourceBox.SetSources( source )
		  'end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SourcePageNr() As String
		  Return cSource.Value.Match(" p\. (\d+)", 1)
		  
		  Return ""
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		xNode As XMLNode
	#tag EndProperty


#tag EndWindowCode

#tag Events cMatchItemTypes
	#tag Event
		Sub Open()
		  me.FieldName = "Type:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = True
		  
		  me.BaseMenu.Append new MenuItem( "None", "" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  'me.BaseMenu.Append new MenuItem("Wondrous Item", "W")
		  'me.BaseMenu.Append new MenuItem("Adventuring Gear", "G")
		  'me.BaseMenu.Append new MenuItem("-")
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
		  'me.BaseMenu.Append new MenuItem("-")
		  'me.BaseMenu.Append new MenuItem("Ring", "RG")
		  'me.BaseMenu.Append new MenuItem("Potion", "P")
		  'me.BaseMenu.Append new MenuItem("Scroll", "SC")
		  'me.BaseMenu.Append new MenuItem("Wealth", "$")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cMatchProperties
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
#tag Events cMatchNames
	#tag Event
		Sub Open()
		  me.FieldName = "Item Names:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  
		  me.BaseMenu.Append new MenuItem( "None", "" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Leather Armor" )
		  me.BaseMenu.Append new MenuItem( "Padded Armor" )
		  me.BaseMenu.Append new MenuItem( "Studded Leather Armor" )
		  // Medium Armor
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Breastplate" )
		  me.BaseMenu.Append new MenuItem( "Chain Shirt" )
		  me.BaseMenu.Append new MenuItem( "Hide Armor" )
		  me.BaseMenu.Append new MenuItem( "Scale Mail" )
		  // Heavy armor
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Chain Mail" )
		  me.BaseMenu.Append new MenuItem( "Half Plate Armor" )
		  me.BaseMenu.Append new MenuItem( "Plate Armor" )
		  me.BaseMenu.Append new MenuItem( "Ring Mail" )
		  me.BaseMenu.Append new MenuItem( "Splint Armor" )
		  // Shield
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Shield" )
		  // Melee Weapons
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Axe" )
		  me.BaseMenu.Append new MenuItem( "Battleaxe" )
		  me.BaseMenu.Append new MenuItem( "Club" )
		  me.BaseMenu.Append new MenuItem( "Dagger" )
		  me.BaseMenu.Append new MenuItem( "Double-Bladed Scimitar" )
		  me.BaseMenu.Append new MenuItem( "Flail" )
		  me.BaseMenu.Append new MenuItem( "Glaive" )
		  me.BaseMenu.Append new MenuItem( "Greataxe" )
		  me.BaseMenu.Append new MenuItem( "Greatclub" )
		  me.BaseMenu.Append new MenuItem( "Greatsword" )
		  me.BaseMenu.Append new MenuItem( "Halberd" )
		  me.BaseMenu.Append new MenuItem( "Handaxe" )
		  me.BaseMenu.Append new MenuItem( "Hooked Shortspear" )
		  me.BaseMenu.Append new MenuItem( "Hoopak" )
		  me.BaseMenu.Append new MenuItem( "Javelin" )
		  me.BaseMenu.Append new MenuItem( "Lance" )
		  me.BaseMenu.Append new MenuItem( "Light Hammer" )
		  me.BaseMenu.Append new MenuItem( "Longsword" )
		  me.BaseMenu.Append new MenuItem( "Mace" )
		  me.BaseMenu.Append new MenuItem( "Maul" )
		  me.BaseMenu.Append new MenuItem( "Morningstar" )
		  me.BaseMenu.Append new MenuItem( "Pike" )
		  me.BaseMenu.Append new MenuItem( "Quarterstaff" )
		  me.BaseMenu.Append new MenuItem( "Rapier" )
		  me.BaseMenu.Append new MenuItem( "Scimitar" )
		  me.BaseMenu.Append new MenuItem( "Shortsword" )
		  me.BaseMenu.Append new MenuItem( "Sickle" )
		  me.BaseMenu.Append new MenuItem( "Spear" )
		  me.BaseMenu.Append new MenuItem( "Sword" )
		  me.BaseMenu.Append new MenuItem( "Trident" )
		  me.BaseMenu.Append new MenuItem( "War Pick" )
		  me.BaseMenu.Append new MenuItem( "Warhammer" )
		  me.BaseMenu.Append new MenuItem( "Whip" )
		  me.BaseMenu.Append new MenuItem( "Yklwa" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Rod" )
		  me.BaseMenu.Append new MenuItem( "Staff" )
		  me.BaseMenu.Append new MenuItem( "Wand" )
		  // Ranged Weapons
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Blowgun" )
		  me.BaseMenu.Append new MenuItem( "Bow" )
		  me.BaseMenu.Append new MenuItem( "Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Dart" )
		  me.BaseMenu.Append new MenuItem( "Hand Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Heavy Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Light Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Light Repeating Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Longbow" )
		  me.BaseMenu.Append new MenuItem( "Net" )
		  me.BaseMenu.Append new MenuItem( "Shortbow" )
		  me.BaseMenu.Append new MenuItem( "Sling" )
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rdoMatch
	#tag Event
		Sub Action(index as Integer)
		  cMatchItemTypes.Enabled = (index = 0)
		  cMatchNames.Enabled = (index = 1)
		  cMatchProperties.Enabled = (index = 2) 
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cName
	#tag Event
		Sub Open()
		  me.FieldName = "Name:"
		  me.SetMode( ccEditorTextField.Mode.Textfield )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDetail
	#tag Event
		Sub Open()
		  me.FieldName = "Detail:"
		  me.SetMode ccEditorTextField.Mode.Dropdown
		  me.ReadOnly = False
		  
		  
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
#tag Events cSource
	#tag Event
		Sub Open()
		  me.FieldName = "Source:"
		  me.SetMode( ccEditorTextField.Mode.Textfield )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cMagicItem
	#tag Event
		Sub Open()
		  me.FieldName = "Magic:"
		  me.FieldValue = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cExclude
	#tag Event
		Sub Open()
		  me.FieldName = "Exclude:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  
		  me.BaseMenu.Append new MenuItem( "None", "" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Leather Armor" )
		  me.BaseMenu.Append new MenuItem( "Padded Armor" )
		  me.BaseMenu.Append new MenuItem( "Studded Leather Armor" )
		  // Medium Armor
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Breastplate" )
		  me.BaseMenu.Append new MenuItem( "Chain Shirt" )
		  me.BaseMenu.Append new MenuItem( "Hide Armor" )
		  me.BaseMenu.Append new MenuItem( "Scale Mail" )
		  // Heavy armor
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Chain Mail" )
		  me.BaseMenu.Append new MenuItem( "Half Plate Armor" )
		  me.BaseMenu.Append new MenuItem( "Plate Armor" )
		  me.BaseMenu.Append new MenuItem( "Ring Mail" )
		  me.BaseMenu.Append new MenuItem( "Splint Armor" )
		  // Shield
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Shield" )
		  // Melee Weapons
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Battleaxe" )
		  me.BaseMenu.Append new MenuItem( "Club" )
		  me.BaseMenu.Append new MenuItem( "Dagger" )
		  me.BaseMenu.Append new MenuItem( "Double-Bladed Scimitar" )
		  me.BaseMenu.Append new MenuItem( "Flail" )
		  me.BaseMenu.Append new MenuItem( "Glaive" )
		  me.BaseMenu.Append new MenuItem( "Greataxe" )
		  me.BaseMenu.Append new MenuItem( "Greatclub" )
		  me.BaseMenu.Append new MenuItem( "Greatsword" )
		  me.BaseMenu.Append new MenuItem( "Halberd" )
		  me.BaseMenu.Append new MenuItem( "Handaxe" )
		  me.BaseMenu.Append new MenuItem( "Hooked Shortspear" )
		  me.BaseMenu.Append new MenuItem( "Hoopak" )
		  me.BaseMenu.Append new MenuItem( "Javelin" )
		  me.BaseMenu.Append new MenuItem( "Lance" )
		  me.BaseMenu.Append new MenuItem( "Light Hammer" )
		  me.BaseMenu.Append new MenuItem( "Longsword" )
		  me.BaseMenu.Append new MenuItem( "Mace" )
		  me.BaseMenu.Append new MenuItem( "Maul" )
		  me.BaseMenu.Append new MenuItem( "Morningstar" )
		  me.BaseMenu.Append new MenuItem( "Pike" )
		  me.BaseMenu.Append new MenuItem( "Quarterstaff" )
		  me.BaseMenu.Append new MenuItem( "Rapier" )
		  me.BaseMenu.Append new MenuItem( "Scimitar" )
		  me.BaseMenu.Append new MenuItem( "Shortsword" )
		  me.BaseMenu.Append new MenuItem( "Sword" )
		  me.BaseMenu.Append new MenuItem( "Sickle" )
		  me.BaseMenu.Append new MenuItem( "Spear" )
		  me.BaseMenu.Append new MenuItem( "Trident" )
		  me.BaseMenu.Append new MenuItem( "War Pick" )
		  me.BaseMenu.Append new MenuItem( "Warhammer" )
		  me.BaseMenu.Append new MenuItem( "Whip" )
		  me.BaseMenu.Append new MenuItem( "Yklwa" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Rod" )
		  me.BaseMenu.Append new MenuItem( "Staff" )
		  me.BaseMenu.Append new MenuItem( "Wand" )
		  // Ranged Weapons
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Blowgun" )
		  me.BaseMenu.Append new MenuItem( "Bow" )
		  me.BaseMenu.Append new MenuItem( "Dart" )
		  me.BaseMenu.Append new MenuItem( "Hand Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Heavy Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Light Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Light Repeating Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Longbow" )
		  me.BaseMenu.Append new MenuItem( "Net" )
		  me.BaseMenu.Append new MenuItem( "Shortbow" )
		  me.BaseMenu.Append new MenuItem( "Sling" )
		  
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
