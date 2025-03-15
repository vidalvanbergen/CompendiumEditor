#tag Window
Begin ContainerControl ccSpell
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
   Height          =   993
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
      Tooltip         =   "Spell name."
      Top             =   28
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   624
   End
   Begin CheckBox chkSubclassSpell
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Subclass spell"
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
      Left            =   157
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Check if the spell is a subclass spell, adding a subclass to an existing named spell."
      Top             =   4
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   523
   End
   Begin Canvas cvsPartitionGeneral
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   543
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   62
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
         Height          =   239
         Index           =   -2147483648
         InitialParent   =   "cvsPartitionGeneral"
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
         Tooltip         =   "Spell description."
         Top             =   332
         Transparent     =   True
         Value           =   ""
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
         InitialParent   =   "cvsPartitionGeneral"
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
         Tooltip         =   ""
         Top             =   583
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
      Begin ccEditorTextField cDuration
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
         InitialParent   =   "cvsPartitionGeneral"
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
         Tooltip         =   "Spell duration."
         Top             =   298
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
      Begin ccEditorTextField cMaterials
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
         InitialParent   =   "cvsPartitionGeneral"
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
         Tooltip         =   "The material components of the spell."
         Top             =   264
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
      Begin ccEditorTextField cComponents
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
         InitialParent   =   "cvsPartitionGeneral"
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
         Tooltip         =   "Spell components: Vocal, Somatic and/or Material."
         Top             =   230
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
      Begin ccEditorTextField cRange
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
         InitialParent   =   "cvsPartitionGeneral"
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
         Tooltip         =   "Spell range."
         Top             =   196
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
      Begin ccEditorTextField cTime
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
         InitialParent   =   "cvsPartitionGeneral"
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
         Tooltip         =   "Casting time."
         Top             =   162
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
      Begin ccEditorTextField cSpellLevel
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
         InitialParent   =   "cvsPartitionGeneral"
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
         Tooltip         =   "Spell level."
         Top             =   62
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
      Begin ccEditorTextField cSpellSchool
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
         InitialParent   =   "cvsPartitionGeneral"
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
         Tooltip         =   "Spell school."
         Top             =   96
         Transparent     =   True
         UseLowercase    =   False
         Value           =   ""
         Visible         =   True
         Width           =   660
      End
      Begin ccEditorCheckbox cRitual
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
         InitialParent   =   "cvsPartitionGeneral"
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
         Tooltip         =   "Check this box if the spell is a ritual."
         Top             =   130
         Transparent     =   True
         Visible         =   True
         Width           =   660
      End
   End
   Begin Canvas cvsPartitionClasses
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   186
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   617
      Transparent     =   True
      Visible         =   True
      Width           =   700
      BeginSegmented AddRemoveEditButton areClasses
         AddEnabled      =   False
         EditEnabled     =   False
         Enabled         =   True
         Height          =   24
         Index           =   -2147483648
         InitialParent   =   "cvsPartitionClasses"
         Left            =   592
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MacControlStyle =   0
         RemoveEnabled   =   False
         Scope           =   0
         Segments        =   "+\n\nFalse\r-\n\nFalse\r✏️\n\nFalse"
         SelectionType   =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   False
         Top             =   779
         Transparent     =   False
         Visible         =   True
         Width           =   72
      End
      Begin ComboBox cbClass
         AllowAutoComplete=   False
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "cvsPartitionClasses"
         InitialValue    =   ""
         Italic          =   False
         Left            =   157
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   779
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   423
      End
      Begin Listbox lstClasses
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   True
         Bold            =   False
         ColumnCount     =   1
         ColumnWidths    =   ""
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
         Height          =   150
         Index           =   -2147483648
         InitialParent   =   "cvsPartitionClasses"
         InitialValue    =   "Class names"
         Italic          =   False
         Left            =   157
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Classes that can use this spell."
         Top             =   617
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   523
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Label lblClasses
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
         InitialParent   =   "cvsPartitionClasses"
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
         Text            =   "Classes:"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   617
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
   End
   Begin Canvas cvsPartitionDiceRolls
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   158
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
      Top             =   815
      Transparent     =   True
      Visible         =   True
      Width           =   700
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
         InitialParent   =   "cvsPartitionDiceRolls"
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
         Tooltip         =   "Dice roll formulas. Add a short, optional descriptions, such as a level for spells with different rolls on higher levels."
         Top             =   815
         Transparent     =   True
         Visible         =   True
         Width           =   660
      End
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
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Import from Clipboard"
      Top             =   28
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
		Sub AddClassOptions(AvailableClasses() as String)
		  var TheClasses() as String
		  
		  // Base classes
		  for each baseClass as String in DnDArrays.Classes
		    TheClasses.Append baseClass
		  next
		  
		  // Additional classes
		  if AvailableClasses.LastIndex > -1 then
		    for each classOption as String in AvailableClasses
		      if TheClasses.IndexOf( classOption ) = -1 then
		        TheClasses.Append classOption
		      end if
		    next
		  end if
		  
		  // Saved classes
		  if lstClasses.LastRowIndex > -1 then
		    for row as Integer = 0 to lstClasses.LastRowIndex
		      if TheClasses.IndexOf( lstClasses.CellValueAt( row, 0 ) ) = -1 then
		        TheClasses.Append lstClasses.CellValueAt( row, 0 )
		      end if
		    next
		  end if
		  
		  // Listed classes
		  if cbClass.LastRowIndex > -1 then
		    for row as Integer = 0 to cbClass.LastRowIndex
		      if TheClasses.IndexOf( cbClass.RowValueAt( row ) ) = -1 then
		        TheClasses.Append cbClass.RowValueAt( row )
		      end if
		    next
		  end if
		  
		  TheClasses.Sort
		  
		  cbClass.RemoveAllRows
		  for index as Integer = 0 to TheClasses.LastIndex
		    cbClass.AddRow TheClasses(index)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetXMLNode() As XMLNode
		  'var xDoc as new XMLDocument
		  '
		  'var xRoot as XmlNode = xDoc.AppendChild( xDoc.CreateElement( "compendium" ) )
		  'xRoot.SetAttribute("version", "5")
		  'xRoot.SetAttribute("auto_indent", "NO")
		  
		  
		  var xSpell as XMLNode = xNode 'xRoot.AppendNewChild( "feat" )
		  
		  if xSpell = Nil then
		    Return Nil
		  end if
		  
		  // Clear old children
		  xSpell.RemoveAllChildren
		  'for each xChild as XMLNode in xSpell.Children
		  'xSpell.RemoveChild( xChild )
		  'next
		  
		  
		  // Name
		  xSpell.AppendSimpleChild( "name", cName.Value )
		  
		  //
		  if NOT chkSubclassSpell.Value then
		    
		    // Spell Level
		    if cSpellLevel.Tag <> "" then
		      xSpell.AppendSimpleChild( "level", cSpellLevel.Tag )
		    end if
		    
		    // Spell School
		    if cSpellSchool.Tag <> "" then
		      xSpell.AppendSimpleChild( "school", cSpellSchool.Tag )
		    end if
		    
		    // Ritual
		    if cRitual.FieldValue then
		      'if cRitual.Value = "YES" then
		      xSpell.AppendSimpleChild( "ritual", "YES" )
		    end if
		    
		    // Time
		    if cTime.Value <> "" then
		      xSpell.AppendSimpleChild( "time", cTime.Value.Trim )
		    end if
		    
		    // Range
		    if cRange.Value <> "" then
		      xSpell.AppendSimpleChild( "range", cRange.Value.Trim )
		    end if
		    
		    // Components
		    var components as String
		    if cComponents.Value <> "" then
		      components = String.FromArray( cComponents.Tags, ", " ).Uppercase
		    end if
		    
		    if cMaterials.Value.Trim <> "" then
		      components = components + " (" + cMaterials.Value.Trim + ")"
		    end if
		    
		    if components.Trim <> "" then
		      xSpell.AppendSimpleChild( "components", components.Trim )
		    end if
		    
		    // Duration
		    if cDuration.Value <> "" then
		      xSpell.AppendSimpleChild( "duration", cDuration.Value )
		    end if
		    
		  end if
		  
		  // Classes
		  if lstClasses.LastRowIndex > -1 then
		    
		    var classes() as String
		    for row as Integer = 0 to lstClasses.LastRowIndex
		      classes.Append lstClasses.CellValueAt( row, 0 )
		    next
		    
		    if classes.LastIndex > -1 then
		      xSpell.AppendSimpleChild( "classes", StringFromArray( classes, ", " ) )
		    end if
		    
		  end if
		  
		  
		  if NOT chkSubclassSpell.Value then
		    
		    // Description
		    if cDescription.Value.Trim <> "" or cSource.Value.Trim <> "" then
		      SetDescription( xNode, cDescription.Value, cSource.Value )
		    end if
		    
		    // Dice Rolls
		    if cDiceRolls.lstDiceRolls.LastIndex > -1 then
		      cDiceRolls.AddDiceRollsTo( xNode )
		    end if
		    
		  end if
		  
		  
		  
		  Return xSpell
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
		  Me.Reset
		  
		  if NOT TemplateNode then
		    xNode = TheNode
		  end if
		  
		  
		  if TheNode <> Nil then
		    
		    var descriptionLines() as String
		    
		    for index as Integer = 0 to TheNode.ChildCount -1
		      var xChild as XMLNode = TheNode.Child(index)
		      
		      var xValue as String
		      if xChild <> Nil and xChild.FirstChild <> Nil then
		        xValue = xChild.FirstChild.Value
		      end if
		      
		      Select case xChild.Name
		        
		      case "name"
		        cName.Value = xValue
		        
		      case "level"
		        cSpellLevel.Value = TitleForMenuWithTag( cSpellLevel.BaseMenu, xValue )
		        cSpellLevel.Tag = xValue
		        
		      case "school"
		        cSpellSchool.Value = TitleForMenuWithTag( cSpellSchool.BaseMenu, xValue )
		        cSpellSchool.Tag = xValue
		        
		      case "ritual"
		        if xValue = "YES" or xValue = "1"  then
		          cRitual.FieldValue = True
		        end if
		        'cRitual.Value = TitleForMenuWithTag( cRitual.BaseMenu, xValue )
		        'cRitual.Tag = xValue
		        
		      case "time"
		        cTime.Value = xValue
		        
		      case "range"
		        cRange.Value = xValue
		        
		      case "duration"
		        cDuration.Value = xValue
		        
		      case "components"
		        cMaterials.Value = xValue.Replace( xValue.NthField("(", 1), "" )
		        cMaterials.Value = cMaterials.Value.Replace("(", "")
		        cMaterials.Value = cMaterials.Value.Replace(")", "")
		        cMaterials.Value = cMaterials.Value.Trim
		        'cMaterials.Value = cMaterials.Value.Replace(")","")
		        'cMaterials.Value = xValue.Match("\((.*?(\(|))\)", 1 )
		        
		        var components as String = xValue.Replace( "(" + cMaterials.Value + ")", "" ).Trim
		        var componentParts() as String = components.Split(",")
		        for i as Integer = 0 to componentParts.LastIndex
		          componentParts(i) = componentParts(i).Trim
		        next
		        
		        cComponents.Tags = componentParts
		        
		        var FullComponents() as String
		        for each cPart as String in componentParts
		          if cPart <> "" then
		            var title as string = TitleForMenuWithTag( cComponents.BaseMenu, cPart )
		            if title <> "" then
		              FullComponents.Append TitleForMenuWithTag( cComponents.BaseMenu, cPart )
		            end if
		          end if
		        next
		        
		        cComponents.Values = FullComponents
		        var aaaa as String = String.FromArray( FullComponents, ", " )
		        cComponents.Value = String.FromArray( FullComponents, ", " )
		        
		      case "classes"
		        var TheClasses() as String = xValue.Split( "," )
		        for i as Integer = 0 to TheClasses.LastIndex
		          TheClasses(i) = TheClasses(i).Trim
		          lstClasses.AddRow TheClasses(i)
		        next
		        
		      case "roll"
		        var attribute, attributeValue as String
		        if xChild.AttributeCount > 0 then
		          for i as Integer = 0 to xChild.AttributeCount-1
		            var xAttribute as XMLAttribute = xChild.GetAttributeNode(i)
		            attribute = xAttribute.Name
		            attributeValue = xAttribute.Value
		          next
		        end if
		        
		        cDiceRolls.lstDiceRolls.AddRow DiceCalculatorMethods.PrettifyMath( xValue ), attributeValue
		        cDiceRolls.lstDiceRolls.RowTagAt( cDiceRolls.lstDiceRolls.LastAddedRowIndex ) = xValue
		        
		      case "duration"
		        cDuration.Value = xValue
		        
		      case "text"
		        descriptionLines.Add xValue
		        
		        'if cDescription.Value = "" then
		        'cDescription.Value = xValue
		        'else
		        'cDescription.Value = cDescription.Value + EndOfLine + xValue
		        'end if
		        
		      else
		        Break
		        
		      End Select
		      
		    next
		    
		    cDescription.Value = String.FromArray( descriptionLines, EndOfLine )
		    if cDescription.Value.Contains("Source:") then
		      cSource.Value = SourceFromDescription( cDescription.Value ).ReplaceAll( EndOfLine, " " ).ReplaceAll( chr(9), "" ).Trim
		      cDescription.Value = DescriptionWithoutSource( cDescription.Value )
		    end if
		    
		  end if
		  
		  
		  var HasLevel, HasValidName as Boolean
		  HasLevel = cSpellLevel.Value <> ""
		  HasValidName = NOT cName.Value.Contains("Unnamed spell")
		  
		  if NOT HasValidName then
		    chkSubclassSpell.Value = False
		  elseif NOT HasLevel then
		    chkSubclassSpell.Value = True
		  elseif HasValidName and HasLevel then
		    chkSubclassSpell.Value = False
		  elseif NOT HasValidName and NOT HasLevel then
		    chkSubclassSpell.Value = True
		  end if
		  
		  
		  'if TheNode <> Nil then
		  'var hasCombined as Boolean = HasLevel or HasValidName
		  '
		  'chkSubclassSpell.Value = HasLevel and HasValidName  '( TheNode.ValueOfNodeWithName("level") = "" and NOT cName.Value.Contains("Unnamed Spell") ) '( cSpellLevel.Value.Trim <> "" )
		  'else
		  'chkSubclassSpell.Value = NOT cName.Value.Contains("Unnamed Spell")
		  'end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  // Reset
		  cName.Reset
		  cRange.Reset
		  cTime.Reset
		  cDuration.Reset
		  
		  cSpellLevel.Reset
		  cSpellSchool.Reset
		  cRitual.FieldValue = False
		  'cRitual.Reset
		  
		  cComponents.Reset
		  cMaterials.Reset
		  
		  cDescription.Reset
		  cSource.Reset
		  
		  cDiceRolls.Reset
		  lstClasses.DeleteAllRows
		  
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
		Classes As String
	#tag EndProperty

	#tag Property, Flags = &h0
		xNode As XMLNode
	#tag EndProperty


#tag EndWindowCode

#tag Events cName
	#tag Event
		Sub Open()
		  me.FieldName = "Name:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = False
		  
		  me.BaseMenu.Append new MenuItem( "Format spell name" )
		  me.BaseMenu.Append new MenuItem("-")
		  
		  me.BaseMenu.AppendBaseSpellLists
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkSubclassSpell
	#tag Event
		Sub Action()
		  
		  cvsPartitionGeneral.Visible = NOT me.Value
		  cvsPartitionDiceRolls.Visible = NOT me.Value
		  
		  if me.Value then
		    cvsPartitionClasses.Top = cvsPartitionGeneral.Top
		  else
		    cvsPartitionClasses.Top = cvsPartitionGeneral.Top + cvsPartitionGeneral.Height + 12
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDescription
	#tag Event
		Sub Open()
		  me.FieldName = "Description:"
		  
		  var templatesMenu as new MenuItem("Templates")
		  
		  var miStatusConditions as new MenuItem( "Status Descriptions" )
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
		  
		  me.TemplateMenu = templatesMenu
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
#tag Events cDuration
	#tag Event
		Sub Open()
		  me.FieldName = "Duration"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = False
		  
		  me.BaseMenu.Append new MenuItem("Instantaneous")
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("1 round")
		  me.BaseMenu.Append new MenuItem("2 round")
		  me.BaseMenu.Append new MenuItem("1 minute")
		  me.BaseMenu.Append new MenuItem("10 minutes")
		  me.BaseMenu.Append new MenuItem("1 hour")
		  me.BaseMenu.Append new MenuItem("24 hours")
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("Concentration, up to 1 minute")
		  me.BaseMenu.Append new MenuItem("Concentration, up to 10 minute")
		  me.BaseMenu.Append new MenuItem("Concentration, up to 1 hour")
		  me.BaseMenu.Append new MenuItem("Concentration, up to 24 hours")
		  me.BaseMenu.Append new MenuItem("Concentration, up to 1 day")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cMaterials
	#tag Event
		Sub Open()
		  me.FieldName = "Materials:"
		  me.SetMode( ccEditorTextField.Mode.Textfield )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cComponents
	#tag Event
		Sub Open()
		  me.FieldName = "Components:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = True
		  
		  me.BaseMenu.Append new MenuItem("None", "")
		  me.BaseMenu.Append new MenuItem("-", "")
		  me.BaseMenu.Append new MenuItem("Verbal", "V")
		  me.BaseMenu.Append new MenuItem("Somatic", "S")
		  me.BaseMenu.Append new MenuItem("Material", "M")
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cRange
	#tag Event
		Sub Open()
		  me.FieldName = "Range:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = False
		  
		  me.BaseMenu.Append new MenuItem("Self")
		  me.BaseMenu.Append new MenuItem("Touch")
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("15 feet")
		  me.BaseMenu.Append new MenuItem("30 feet")
		  me.BaseMenu.Append new MenuItem("60 feet")
		  me.BaseMenu.Append new MenuItem("90 feet")
		  me.BaseMenu.Append new MenuItem("120 feet")
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("self (15-foot cone)")
		  me.BaseMenu.Append new MenuItem("self (30-foot cone)")
		  me.BaseMenu.Append new MenuItem("self (30-foot cube)")
		  me.BaseMenu.Append new MenuItem("self (30-foot line)")
		  me.BaseMenu.Append new MenuItem("self (30-foot-radius sphere)")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cTime
	#tag Event
		Sub Open()
		  me.FieldName = "Time:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = False
		  
		  me.BaseMenu.Append new MenuItem("1 Action")
		  me.BaseMenu.Append new MenuItem("1 Reaction")
		  me.BaseMenu.Append new MenuItem("1 Bonus Action")
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("1 Minute")
		  me.BaseMenu.Append new MenuItem("10 Minutes")
		  me.BaseMenu.Append new MenuItem("-")
		  me.BaseMenu.Append new MenuItem("1 Hour")
		  me.BaseMenu.Append new MenuItem("24 Hours")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSpellLevel
	#tag Event
		Sub Open()
		  me.FieldName = "Level:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = True
		  
		  me.BaseMenu.Append new MenuItem("None", "")
		  me.BaseMenu.Append new MenuItem("-", "")
		  me.BaseMenu.Append new MenuItem("Cantrip", "0")
		  me.BaseMenu.Append new MenuItem("1", "1")
		  me.BaseMenu.Append new MenuItem("2", "2")
		  me.BaseMenu.Append new MenuItem("3", "3")
		  me.BaseMenu.Append new MenuItem("4", "4")
		  me.BaseMenu.Append new MenuItem("5", "5")
		  me.BaseMenu.Append new MenuItem("6", "6")
		  me.BaseMenu.Append new MenuItem("7", "7")
		  me.BaseMenu.Append new MenuItem("8", "8")
		  me.BaseMenu.Append new MenuItem("9", "9")
		  
		  me.Value = "Cantrip"
		  me.Tag = "0"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSpellSchool
	#tag Event
		Sub Open()
		  me.FieldName = "School:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = True
		  
		  me.BaseMenu.Append new MenuItem("None", "")
		  me.BaseMenu.Append new MenuItem("-", "")
		  me.BaseMenu.Append new MenuItem("Abjuration", "A")
		  me.BaseMenu.Append new MenuItem("Conjuration", "C")
		  me.BaseMenu.Append new MenuItem("Divination", "D")
		  me.BaseMenu.Append new MenuItem("Enchantment", "EN")
		  me.BaseMenu.Append new MenuItem("Evocation", "EV")
		  me.BaseMenu.Append new MenuItem("Illusion", "I")
		  me.BaseMenu.Append new MenuItem("Necromancy", "N")
		  me.BaseMenu.Append new MenuItem("Transmutation", "T")
		  
		  me.Value = "Abjuration"
		  me.Tag = "A"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cRitual
	#tag Event
		Sub Open()
		  me.FieldName = "Ritual:"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events areClasses
	#tag Event
		Sub ActionAdd()
		  lstClasses.AddRow cbClass.Text
		  lstClasses.SelectedRowIndex = lstClasses.LastAddedRowIndex
		  if NOT Keyboard.AsyncAltKey then
		    cbClass.Text = ""
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionEdit()
		  if lstClasses.SelectedRowIndex > -1 then
		    lstClasses.CellValueAt( lstClasses.SelectedRowIndex, 0 ) = cbClass.Text
		    if NOT Keyboard.AsyncAltKey then
		      cbClass.Text = ""
		    end if
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionRemove()
		  if lstClasses.SelectedRowIndex > -1 then
		    var lindex as Integer = lstClasses.SelectedRowIndex
		    
		    lstClasses.RemoveRowAt( lstClasses.SelectedRowIndex )
		    
		    if lindex-1 > -1 then
		      lstClasses.SelectedRowIndex = lindex-1
		    elseif lstClasses.LastRowIndex > -1 then
		      lstClasses.SelectedRowIndex = 0
		    end if
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbClass
	#tag Event
		Sub Open()
		  var s() as string
		  
		  AddClassOptions s
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  var currentClassnames() as String
		  for row as Integer = 0 to me.LastRowIndex
		    currentClassnames.Add me.RowValueAt( row )
		  next
		  
		  AddClassOptions currentClassnames
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lstClasses
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  if me.SelectedRowIndex <> row then
		    g.DrawAlternatingRows(row)
		    Return True
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  if me.SelectedRowIndex > -1 then
		    cbClass.Text = me.CellValueAt( me.SelectedRowIndex, 0 )
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  #if TargetMacOS then
		    areClasses.RemoveEnabled = me.SelectedRowIndex > -1
		    areClasses.EditEnabled = me.SelectedRowIndex > -1
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.ColumnTypeAt(0) = Listbox.CellTypes.TextField
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDiceRolls
	#tag Event
		Sub FindTextIn(ByRef Source as String)
		  Source = cDescription.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bvlClipboard
	#tag Event
		Sub Action()
		  var c as new Clipboard
		  
		  var Title as string
		  var Description as String
		  
		  var Classes(), Level, School, castingTime, Range, Components(), Materials, Duration, Rolls() as string
		  
		  if c.Text <> "" then
		    
		    var lines() as string
		    if c.Text.Contains( EndOfLine ) then
		      lines = c.Text.Split( EndOfLine )
		    elseif c.Text.Contains( chr(13) ) then
		      lines = c.Text.Split( chr(13) )
		    elseif c.Text.Contains( chr(10) ) then
		      lines = c.Text.Split( chr(10) )
		    end if
		    
		    for index as Integer = lines.LastIndex DownTo 0
		      
		      if lines(index).StartsWith("Duration:") then
		        Duration = lines(index).Replace("Duration:","").Trim
		        
		        lines.RemoveAt(index)
		        
		      elseif lines(index).StartsWith("Components:") then
		        'Materials = lines(index).Match( "\((.*?)\)", 1 )
		        
		        var ComponentsString as String = lines(index).NthField( "(", 1 )
		        ComponentsString = ComponentsString.Replace("Components:", "").Trim
		        
		        Components = ComponentsString.SplitString(",")
		        
		        if Components.Contains("M") then
		          
		          if lines(index).Contains( "M (" ) and lines(index).Trim.EndsWith(")") then
		            Materials = lines(index).Match( "\((.*?)\)", 1 )
		          else
		            Materials = c.Text.ReplaceAll( chr(13), " " ).Match( "M \((.*?)\)", 1 )
		            lines.RemoveAt(index+1)
		          end if
		        end if
		        
		        lines.RemoveAt(index)
		        
		      elseif lines(index).StartsWith("Range:") then
		        Range = lines(index).Replace("Range:","").Trim
		        
		        lines.RemoveAt(index)
		        
		      elseif lines(index).StartsWith("Casting Time:") then
		        castingTime = lines(index).Replace("Casting Time:","").Trim
		        
		        lines.RemoveAt(index)
		        
		      elseif index < 5 and (lines(index).Match( "(\d+)(st|nd|rd|th).level", 1) <> "" or lines(index).Contains("cantrip")) then
		        
		        cRitual.FieldValue = lines(index).Contains("ritual")
		        lines(index) = lines(index).Replace("(ritual)", "")
		        
		        if lines(index).Contains("cantrip") then
		          level = "0"
		          School = lines(index).NthField("cantrip", 2)
		          if School = "" then
		            School = lines(index).NthField("cantrip", 1)
		          end if
		        else
		          level = lines(index).Match( "(\d+)(st|nd|rd|th)-level", 1)
		          School = lines(index).NthField("level", 2).Trim.Titlecase
		        end if
		        
		        lines.RemoveAt( index )
		        
		      elseif lines(index).StartsWith("Classes:") then
		        Classes = lines(index).Replace("Casting Time:","").SplitString(",")
		        
		        lines.RemoveAt(index)
		        
		      elseif index = 0 then
		        Title = lines(index)
		        
		        lines.RemoveAt(index)
		        
		      end if
		      
		    next
		    
		    
		    if lines.LastIndex > -1 then
		      Description = string.FromArray( lines, EndOfLine )
		    end if
		  end if
		  
		  cDescription.FormatParagraphs( Description, False )
		  cDescription.FormatLists( Description, false )
		  
		  Rolls = Description.MatchAll( "(\d+d\d+.*?)(\w+)", 1 )
		  
		  if rolls <> Nil and rolls.LastIndex > -1 then
		    for each roll as string in Rolls
		      cDiceRolls.AddRow DiceCalculatorMethods.PrettifyMath( roll.Trim )
		      cDiceRolls.lstDiceRolls.RowTagAt( cDiceRolls.lstDiceRolls.LastAddedRowIndex ) = roll.Trim
		    next
		  end if
		  
		  
		  if cName.Value.Contains( "Unnamed Spell" ) then
		    cName.Value = cName.Value.Replace("Unnamed Spell", Title)
		  else
		    cName.Value = Title
		  end if
		  
		  'if Description.Match( "\n(\w+)\. (\w+)", 1 ) <> "" then
		  'Description = Description.ReplaceAllRegEx( "\n(\w+)\. (\w+)", "\n$1\: $2" )
		  'end if
		  
		  Description = Description.ReplaceAllRegEx( "\n\n(\w+)\. (\w+)", "\n\n$1\: $2" )
		  Description = Description.ReplaceAllRegEx( "\n\n(\w+ \w+)\. (\w+)", "\n\n$1\: $2" )
		  Description = Description.ReplaceAllRegEx( "\n\n(\w+ \w+ \w+)\. (\w+)", "\n\n$1\: $2" )
		  Description = Description.ReplaceAllRegEx( "\n\n(\w+ \w+ \w+ \w+)\. (\w+)", "\n\n$1\: $2" )
		  
		  'if Description.Contains( "At Higher Levels:" ) then
		  'Description = Description.Replace( "At Higher Levels: ", "At Higher Levels:" + EndOfLine )
		  'end if
		  
		  
		  cDescription.Value = Description
		  
		  cComponents.SetMultiTags( Components )
		  cMaterials.Value = Materials
		  
		  cRange.Value = Range
		  cTime.Value = castingTime
		  cDuration.Value = Duration
		  
		  'cSpellLevel.Value = Level
		  cSpellLevel.Value = TitleForMenuWithTag( cSpellLevel.BaseMenu, Level )
		  cSpellLevel.Tag = Level
		  
		  
		  cSpellSchool.Value = School 'TitleForMenuWithTag( cSpellSchool.BaseMenu, xValue )
		  if DnDArrays.SpellSchools.Contains( School ) then
		    if School.StartsWith("E") then
		      School = School.Left(2).Uppercase
		    else
		      School = School.Left(1).Uppercase
		    end if
		    cSpellSchool.Tag = School
		  else
		    cDescription.Value = "Type: " + School + EndOfLine + EndOfLine + Description
		  end if
		  
		  
		  'cSpellSchool.Value = School
		  
		  if Classes.LastIndex > -1 then
		    for each currentClass as string in Classes
		      lstClasses.AddRow currentClass
		    next
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
	#tag ViewProperty
		Name="Classes"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
