#tag Window
Begin ContainerControl ccEditorModifiers
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
   Width           =   500
   Begin DesktopLabel lblName
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   0
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
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Modifiers:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   125
   End
   Begin Listbox lstModifiers
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   True
      Bold            =   False
      ColumnCount     =   2
      ColumnWidths    =   "100, *"
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
      Height          =   122
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Category	Modifier"
      Italic          =   False
      Left            =   137
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   363
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopLabel lblName
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   1
      Italic          =   False
      Left            =   137
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
      Text            =   "Category:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   132
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin PopupMenu popCategory
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
      InitialValue    =   "Bonus\nAbility Score\nAbility Modifier\nSaving Throw\nSkill"
      Italic          =   False
      Left            =   249
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   134
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   151
   End
   Begin DesktopLabel lblName
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   2
      Italic          =   False
      Left            =   137
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Type / Value:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   164
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin ComboBox cbModifierValue
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
      InitialValue    =   ""
      Italic          =   False
      Left            =   249
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   164
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   151
   End
   Begin Label lblTypeValueDescription
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   10.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   137
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   True
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "You can use ""+1"", ""+ Proficiency Bonus"", or ""+%0""."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   192
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   363
   End
   Begin Label lblTypeValueDescription1
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   10.0
      FontUnit        =   0
      Height          =   45
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   137
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   True
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "For weapons, you can use the ""Weapon"" attack/damage modifiers, the significance for ""Melee"" and ""Ranged"" are for wondrous items, like ""Bracers of Archery""."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   215
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   363
   End
   BeginSegmented AddRemoveEditButton areModifier
      AddEnabled      =   False
      EditEnabled     =   False
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   412
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacControlStyle =   0
      RemoveEnabled   =   False
      Scope           =   0
      Segments        =   "+\n\nFalse\r-\n\nFalse\r✏️\n\nFalse"
      SelectionType   =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   False
      Top             =   164
      Transparent     =   False
      Visible         =   True
      Width           =   72
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AddRow(items() as String)
		  lstModifiers.AddRow items
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRow(ParamArray item as String)
		  lstModifiers.AddRow item
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  lstModifiers.DeleteAllRows
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events lstModifiers
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  if me.SelectedRowIndex <> row then
		    g.DrawAlternatingRows(row)
		    Return True
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  #if TargetMacOS then
		    areModifier.RemoveEnabled = me.SelectedRowIndex > -1
		    areModifier.EditEnabled = me.SelectedRowIndex > -1
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  if lstModifiers.SelectedRowIndex > -1 then
		    
		    // Category
		    for row as Integer = 0 to popCategory.LastRowIndex
		      var rowText as String = popCategory.RowValueAt( row )
		      if rowText = lstModifiers.CellValueAt( lstModifiers.SelectedRowIndex, 0 ) then
		        popCategory.SelectedRowIndex = row
		        Exit
		      end if
		    next
		    
		    // Value
		    cbModifierValue.Text = lstModifiers.CellValueAt( lstModifiers.SelectedRowIndex, 1 )
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  #if TargetMacOS then
		    areModifier.RemoveEnabled = me.SelectedRowIndex > -1
		    areModifier.EditEnabled = me.SelectedRowIndex > -1
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popCategory
	#tag Event
		Sub Change()
		  cbModifierValue.Text = ""
		  cbModifierValue.RemoveAllRows
		  
		  
		  Select case me.Text
		    
		  case "Bonus"
		    cbModifierValue.addrow "Proficiency Bonus +1"
		    cbModifierValue.addrow "Weapon Attacks +1"
		    cbModifierValue.addrow "Weapon Damage +1"
		    cbModifierValue.addrow "Melee Attacks +1"
		    cbModifierValue.addrow "Melee Damage +1"
		    cbModifierValue.addrow "Ranged Attacks +1"
		    cbModifierValue.addrow "Ranged Damage +1"
		    cbModifierValue.addrow "Spell Attack +1"
		    cbModifierValue.addrow "Spell DC +1"
		    cbModifierValue.addrow "Hit Points +1"
		    cbModifierValue.addrow "ac +1"
		    cbModifierValue.addrow "Saving Throws +1"
		    cbModifierValue.addrow "Initiative +1"
		    cbModifierValue.addrow "Speed +10"
		    cbModifierValue.addrow "Passive Wisdom +1"
		    
		  case "Skill"
		    cbModifierValue.addrow "Acrobatics +1"
		    cbModifierValue.addrow "Animal Handling +1"
		    cbModifierValue.addrow "Arcana +1"
		    cbModifierValue.addrow "Athletics +1"
		    cbModifierValue.addrow "Deception +1"
		    cbModifierValue.addrow "History +1"
		    cbModifierValue.addrow "Insight +1"
		    cbModifierValue.addrow "Intimidation +1"
		    cbModifierValue.addrow "Investigation +1"
		    cbModifierValue.addrow "Medicine +1"
		    cbModifierValue.addrow "Nature +1"
		    cbModifierValue.addrow "Perception +1"
		    cbModifierValue.addrow "Performance +1"
		    cbModifierValue.addrow "Persuasion +1"
		    cbModifierValue.addrow "Religion +1"
		    cbModifierValue.addrow "Sleight of Hand +1"
		    cbModifierValue.addrow "Stealth +1"
		    cbModifierValue.addrow "Survival +1"
		    
		  case "Ability Score"
		    
		    cbModifierValue.addrow "Strength Score +1"
		    cbModifierValue.addrow "Dexterity Score +1"
		    cbModifierValue.addrow "Constitution Score +1"
		    cbModifierValue.addrow "Inteligence Score +1"
		    cbModifierValue.addrow "Wisdom Score +1"
		    cbModifierValue.addrow "Charisma Score +1"
		    
		    
		  case "Ability Modifier"
		    
		    cbModifierValue.addrow "Strength Modifier +1"
		    cbModifierValue.addrow "Dexterity Modifier +1"
		    cbModifierValue.addrow "Constitution Modifier +1"
		    cbModifierValue.addrow "Inteligence Modifier +1"
		    cbModifierValue.addrow "Wisdom Modifier +1"
		    cbModifierValue.addrow "Charisma Modifier +1"
		    
		  case "Saving Throw"
		    
		    cbModifierValue.addrow "Strength Save +1"
		    cbModifierValue.addrow "Dexterity Save +1"
		    cbModifierValue.addrow "Constitution Save +1"
		    cbModifierValue.addrow "Inteligence Save +1"
		    cbModifierValue.addrow "Wisdom Save +1"
		    cbModifierValue.addrow "Charisma Save +1"
		    
		  End Select
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.SelectedRowIndex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events areModifier
	#tag Event
		Sub ActionAdd()
		  lstModifiers.AddRow popCategory.Text, cbModifierValue.Text
		  lstModifiers.SelectedRowIndex = lstModifiers.LastAddedRowIndex
		  cbModifierValue.Text = ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionEdit()
		  if lstModifiers.SelectedRowIndex > -1 then
		    lstModifiers.CellValueAt( lstModifiers.SelectedRowIndex, 0 ) = popCategory.Text
		    lstModifiers.CellValueAt( lstModifiers.SelectedRowIndex, 1 ) = cbModifierValue.Text
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionRemove()
		  if lstModifiers.SelectedRowIndex > -1 then
		    var lindex as Integer = lstModifiers.SelectedRowIndex
		    
		    lstModifiers.RemoveRowAt( lstModifiers.SelectedRowIndex )
		    
		    if lindex-1 > -1 then
		      lstModifiers.SelectedRowIndex = lindex-1
		    elseif lstModifiers.LastRowIndex > -1 then
		      lstModifiers.SelectedRowIndex = 0
		    end if
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
