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
      Width           =   150
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
      Left            =   162
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
      Width           =   338
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
      Left            =   162
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
      Width           =   338
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
      Left            =   162
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
      Width           =   338
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
		  else
		    g.DrawingColor = CommonModule.SelectionColor
		    g.FillRect 0, 0, g.Width, g.Height
		  end if
		  Return True
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
		  me.ColumnTypeAt(1) = Listbox.CellTypes.TextField
		  
		  #if TargetMacOS then
		    areModifier.RemoveEnabled = me.SelectedRowIndex > -1
		    areModifier.EditEnabled = me.SelectedRowIndex > -1
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim AscKey as Integer = Asc( key )
		  
		  if Keyboard.AsyncCommandKey then
		    
		    Select case AscKey
		      
		    case 8', 127 // delete
		      if me.SelectedRowIndex > -1 then
		        var lindex as Integer = me.SelectedRowIndex
		        me.RemoveRowAt( me.SelectedRowIndex )
		        
		        if lindex > me.LastRowIndex then
		          me.SelectedRowIndex = me.LastRowIndex
		        else
		          me.SelectedRowIndex = lindex
		        end if
		        Return True
		      end if
		      
		    case 13 // Return
		      if me.SelectedRowIndex > -1 then
		        me.EditCellAt( me.SelectedRowIndex, 1 )
		        'FeatureEdit
		      else
		        'FeatureAdd
		      end if
		      Return True
		      
		    case 110 // n
		      'FeatureAdd
		      Return True
		      
		    End Select
		    
		  else
		    
		    Select case AscKey
		      
		    case 13 // Return
		      if me.SelectedRowIndex > -1 then
		        me.EditCellAt( me.SelectedRowIndex, 1 )
		        'FeatureEdit
		      else
		        'FeatureAdd
		      end if
		      Return True
		      
		    End Select
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events popCategory
	#tag Event
		Sub Change()
		  cbModifierValue.Text = ""
		  cbModifierValue.RemoveAllRows
		  
		  
		  Select case me.Text
		    
		  case "Bonus"
		    cbModifierValue.addrow "proficiency bonus +1"
		    cbModifierValue.addrow "weapon attacks +1"
		    cbModifierValue.addrow "weapon damage +1"
		    cbModifierValue.addrow "melee attacks +1"
		    cbModifierValue.addrow "melee damage +1"
		    cbModifierValue.addrow "ranged attacks +1"
		    cbModifierValue.addrow "ranged damage +1"
		    cbModifierValue.addrow "spell attack +1"
		    cbModifierValue.addrow "spell dc +1"
		    cbModifierValue.addrow "hp +1"
		    cbModifierValue.addrow "ac +1"
		    cbModifierValue.addrow "saving throws +1"
		    cbModifierValue.addrow "initiative +1"
		    cbModifierValue.addrow "speed +10"
		    cbModifierValue.addrow "passive wisdom +1"
		    
		  case "Skill", "Skills"
		    cbModifierValue.addrow "acrobatics +1"
		    cbModifierValue.addrow "animal handling +1"
		    cbModifierValue.addrow "arcana +1"
		    cbModifierValue.addrow "athletics +1"
		    cbModifierValue.addrow "deception +1"
		    cbModifierValue.addrow "history +1"
		    cbModifierValue.addrow "insight +1"
		    cbModifierValue.addrow "intimidation +1"
		    cbModifierValue.addrow "investigation +1"
		    cbModifierValue.addrow "medicine +1"
		    cbModifierValue.addrow "nature +1"
		    cbModifierValue.addrow "perception +1"
		    cbModifierValue.addrow "performance +1"
		    cbModifierValue.addrow "persuasion +1"
		    cbModifierValue.addrow "religion +1"
		    cbModifierValue.addrow "sleight of hand +1"
		    cbModifierValue.addrow "stealth +1"
		    cbModifierValue.addrow "survival +1"
		    
		  case "Ability Score"
		    
		    cbModifierValue.addrow "strength +1"
		    cbModifierValue.addrow "dexterity +1"
		    cbModifierValue.addrow "constitution +1"
		    cbModifierValue.addrow "intelligence +1"
		    cbModifierValue.addrow "wisdom +1"
		    cbModifierValue.addrow "charisma +1"
		    
		    
		  case "Ability Modifier"
		    
		    cbModifierValue.addrow "strength modifier +1"
		    cbModifierValue.addrow "dexterity modifier +1"
		    cbModifierValue.addrow "constitution modifier +1"
		    cbModifierValue.addrow "intelligence modifier +1"
		    cbModifierValue.addrow "wisdom modifier +1"
		    cbModifierValue.addrow "charisma modifier +1"
		    
		  case "Saving Throw"
		    
		    cbModifierValue.addrow "strength save +1"
		    cbModifierValue.addrow "dexterity save +1"
		    cbModifierValue.addrow "constitution save +1"
		    cbModifierValue.addrow "intelligence save +1"
		    cbModifierValue.addrow "wisdom save +1"
		    cbModifierValue.addrow "charisma save +1"
		    
		  case "Advantage"
		    
		    cbModifierValue.addrow "strength save"
		    cbModifierValue.addrow "dexterity save"
		    cbModifierValue.addrow "constitution save"
		    cbModifierValue.addrow "intelligence save"
		    cbModifierValue.addrow "wisdom save"
		    cbModifierValue.addrow "charisma save"
		    
		    cbModifierValue.addrow "-"
		    
		    cbModifierValue.addrow "acrobatics"
		    cbModifierValue.addrow "animal handling"
		    cbModifierValue.addrow "arcana"
		    cbModifierValue.addrow "athletics"
		    cbModifierValue.addrow "deception"
		    cbModifierValue.addrow "history"
		    cbModifierValue.addrow "insight"
		    cbModifierValue.addrow "intimidation"
		    cbModifierValue.addrow "investigation"
		    cbModifierValue.addrow "medicine"
		    cbModifierValue.addrow "nature"
		    cbModifierValue.addrow "perception"
		    cbModifierValue.addrow "performance"
		    cbModifierValue.addrow "persuasion"
		    cbModifierValue.addrow "religion"
		    cbModifierValue.addrow "sleight of hand"
		    cbModifierValue.addrow "stealth"
		    cbModifierValue.addrow "survival"
		    
		  End Select
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.SelectedRowIndex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbModifierValue
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if key = chr(13) or key = chr(10) then
		    lstModifiers.AddRow popCategory.Text, me.Text
		    lstModifiers.SelectedRowIndex = lstModifiers.LastAddedRowIndex
		    me.Text = ""
		    
		    Return True
		  end if
		End Function
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
		    cbModifierValue.Text = ""
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
