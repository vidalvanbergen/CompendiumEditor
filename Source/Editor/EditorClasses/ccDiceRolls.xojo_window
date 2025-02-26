#tag Window
Begin ContainerControl ccDiceRolls
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
   Width           =   460
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
      Text            =   "Dice Rolls:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   125
   End
   Begin Listbox lstDiceRolls
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   True
      Bold            =   False
      ColumnCount     =   2
      ColumnWidths    =   "70%, *"
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
      InitialValue    =   "Roll	Description"
      Italic          =   False
      Left            =   137
      LockBottom      =   True
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
      Width           =   323
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   BeginSegmented AddRemoveEditButton areModifier
      AddEnabled      =   False
      EditEnabled     =   False
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   45
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
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   False
      Top             =   34
      Transparent     =   False
      Visible         =   True
      Width           =   72
   End
   Begin Label lblDescription
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   35
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
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Optionally add a level or other requirement to the description, these are not used by Fight Club 5e."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   123
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   323
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AddCalculation()
		  
		  var result, description as string
		  
		  if lstDiceRolls.SelectedRowIndex > -1 then
		    result = lstDiceRolls.CellValueAt( lstDiceRolls.SelectedRowIndex, 0 )
		    description = lstDiceRolls.CellValueAt( lstDiceRolls.SelectedRowIndex, 1 )
		  end if
		  
		  result = SummonCalculator( result, True )
		  
		  if description.IsNumeric then
		    description = Str( Val( description ) + 1 )
		  end if
		  
		  if result <> "" then
		    lstDiceRolls.AddRow result, description
		    lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( result )
		    
		    
		    lstDiceRolls.SelectedRowIndex = lstDiceRolls.LastAddedRowIndex
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddDiceRollsTo(xNode as XMLNode)
		  if lstDiceRolls.LastIndex > -1 then
		    for row as Integer = 0 to lstDiceRolls.LastIndex
		      var value, attribute as String
		      value = lstDiceRolls.RowTagAt( row ).StringValue.Trim
		      attribute = lstDiceRolls.CellValueAt( row, 1 ).Trim
		      
		      if value.Trim <> "" then
		        var xLeaf as XMLNode = xNode.AppendNewChild( "roll" )
		        xLeaf.SetValue( value )
		        
		        if attribute <> "" then
		          xLeaf.SetAttribute( "description", attribute )
		        end if
		        
		      end if
		      
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRow(items() as String)
		  lstDiceRolls.AddRow items
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRow(ParamArray item as String)
		  lstDiceRolls.AddRow item
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EditCalculation()
		  var result as string
		  if lstDiceRolls.SelectedRowIndex > -1 then
		    result = lstDiceRolls.CellValueAt( lstDiceRolls.SelectedRowIndex, 0 )
		  end if
		  result = SummonCalculator( result, True )
		  
		  if result <> "" then
		    if lstDiceRolls.SelectedRowIndex > -1 then
		      lstDiceRolls.CellValueAt( lstDiceRolls.SelectedRowIndex, 0 ) = result
		      lstDiceRolls.RowTagAt( lstDiceRolls.SelectedRowIndex ) = DiceCalculatorMethods.SimplifyMath( result )
		    else
		      lstDiceRolls.AddRow result
		      lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( result )
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveCalculation()
		  
		  if lstDiceRolls.SelectedRowIndex > -1 then
		    var lindex as Integer = lstDiceRolls.SelectedRowIndex
		    
		    lstDiceRolls.RemoveRow lstDiceRolls.SelectedRowIndex
		    
		    if lindex-1 > -1 then
		      lstDiceRolls.SelectedRowIndex = lindex-1
		    elseif lstDiceRolls.LastRowIndex > -1 then
		      lstDiceRolls.SelectedRowIndex = 0
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  lstDiceRolls.DeleteAllRows
		  lstDiceRolls.Invalidate
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events lstDiceRolls
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
		  EditCalculation
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.ColumnTypeAt(1) = Listbox.CellTypes.TextField
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim AscKey as Integer = Asc( key )
		  
		  Select case AscKey
		    
		  case 8', 127 // delete
		    RemoveCalculation
		    Return True
		    
		  case 27 // Escape
		    me.SelectedRowIndex = -1
		    Return True
		    
		  End Select
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events areModifier
	#tag Event
		Sub ActionAdd()
		  'lstModifiers.AddRow popCategory.Text, cbModifierValue.Text
		  'lstModifiers.SelectedRowIndex = lstModifiers.LastAddedRowIndex
		  
		  AddCalculation
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionEdit()
		  if lstDiceRolls.SelectedRowIndex > -1 then
		    EditCalculation
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionRemove()
		  RemoveCalculation
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
