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
      Width           =   150
   End
   Begin Listbox lstDiceRolls
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   True
      AllowRowReordering=   True
      Bold            =   False
      ColumnCount     =   3
      ColumnWidths    =   "30%, 80, *"
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
      InitialValue    =   "Roll	Level	Description"
      Italic          =   False
      Left            =   162
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
      Width           =   298
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
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
      Left            =   162
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "You can optionally add a level and a short description. Fight Club 5e doesn’t use them, but they might be useful in the future."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   123
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   298
   End
   BeginSegmented AddDuplicateRemoveEdit ardeModifier
      AddEnabled      =   False
      DuplicateEnabled=   False
      EditEnabled     =   False
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   47
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacControlStyle =   0
      RemoveEnabled   =   False
      Scope           =   0
      Segments        =   "+\n\nFalse\r-\n\nFalse\r⿻\n\nFalse\r✏️\n\nFalse"
      SelectionType   =   2
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   False
      Top             =   34
      Transparent     =   False
      Visible         =   True
      Width           =   96
   End
   Begin BevelButton bvlUnofficialInfo
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   5
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   "𝒾"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   24
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   126
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   70
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   False
      Width           =   24
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AddCalculation()
		  var nameValue, Source as String
		  RaiseEvent FindDiceNotationsIn( nameValue, Source )
		  
		  var result, level, description as string
		  
		  'if Source <> "" then
		  'var multiResults() as String = Source.MatchAll( "(\d+d\d+ \+ \d+|\d+d\d+.*?|d\d+).*?(\w+|\.)", 1 )
		  var multiResults() as String = Source.MatchAll( "(\d+d\d+ \+ \d+|\d+d\d+ \× \d+|\d+d\d+.*?|d\d+)( feet| Years| Days| Hours| Minutes| hit points| temporary hit points| \w+ damage| damage| \| \w+ trait| \| \w+|)", 1 )
		  var multiDescription() as string = source.MatchAll( "(\d+d\d+ \+ \d+|\d+d\d+ \× \d+|\d+d\d+.*?|d\d+)( feet| Years| Days| Hours| Minutes| hit points| temporary hit points| \w+ damage| damage| \| \w+ trait| \| \w+|)", 2 )
		  
		  'end if
		  
		  // Leveled rolls
		  level = lstDiceRolls.CellValueAt( lstDiceRolls.SelectedRowIndex, 1 )
		  if lstDiceRolls.SelectedRowIndex > -1 and level <> "" and level.IsNumeric and _
		    ( (source.Contains("cantrip upgrade") and val( level ) < 20) or (source.Contains("higher levels") and val( level ) < 9 )) then
		    result = lstDiceRolls.CellValueAt( lstDiceRolls.SelectedRowIndex, 0 )
		    result = Str( val( result.NthField("d", 1) ) + 1 ) + "d" + result.NthField( result.NthField("d", 1) + "d", 2 )
		    
		    if source.Contains("higher levels:") then
		      level = Str( Val( lstDiceRolls.CellValueAt( lstDiceRolls.SelectedRowIndex, 1 ) ) + 1 )
		      
		    elseif Source.Contains("cantrip upgrade:") then
		      level = lstDiceRolls.CellValueAt( lstDiceRolls.SelectedRowIndex, 1 )
		      Select case level
		      case "0"
		        level = "5"
		      case "5"
		        level = "11"
		      case "11"
		        level = "17"
		      case "17"
		        '
		        result = ""
		        level = ""
		      End Select
		    end if
		    
		    if multiDescription <> Nil and multiDescription.LastIndex > -1 then
		      description = multiDescription(0).Titlecase
		    end if
		  end if
		  
		  
		  // regular results
		  if result = "" and multiResults <> Nil and multiResults.LastIndex >= lstDiceRolls.LastRowIndex+1 then
		    result = multiResults( lstDiceRolls.LastRowIndex+1 ).Replace(")", "").replace(".","").trim
		    
		    if multiDescription <> Nil and multiDescription.LastIndex >= lstDiceRolls.LastRowIndex+1 then
		      description = multiDescription( lstDiceRolls.LastRowIndex +1 ).Replace("| ", "").Trim.Titlecase
		    end if
		  end if
		  
		  
		  if result.StartsWith("d") then
		    result = "1" + result
		  end if
		  
		  result = SummonCalculator( result, True )
		  
		  'if description.IsNumeric then
		  'description = Str( Val( description ) + 1 )
		  'else
		  if description = "" and lstDiceRolls.LastRowIndex = -1 then
		    description = nameValue
		  end if
		  if description = "Hit Points" then
		    description = "Heal"
		  end if
		  
		  if description.Contains("damage") then
		    description = description.Titlecase
		  end if
		  
		  if result <> "" then
		    lstDiceRolls.AddRow result, level, description
		    lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( result )
		    
		    
		    lstDiceRolls.SelectedRowIndex = lstDiceRolls.LastAddedRowIndex
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddDiceRollsTo(xNode as XMLNode)
		  if lstDiceRolls.LastIndex > -1 then
		    for row as Integer = 0 to lstDiceRolls.LastIndex
		      var value, level, attribute as String
		      value = lstDiceRolls.RowTagAt( row ).StringValue.Trim
		      level = lstDiceRolls.CellValueAt( row, 1 ).Trim
		      attribute = lstDiceRolls.CellValueAt( row, 2 ).Trim
		      if value.Trim <> "" then
		        var xLeaf as XMLNode = xNode.AppendNewChild( "roll" )
		        xLeaf.SetValue( value )
		        
		        if attribute <> "" then
		          xLeaf.SetAttribute( "description", attribute )
		        end if
		        
		        if level <> "" then
		          xLeaf.SetAttribute( "level", level )
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
		Sub CopyCalculation()
		  
		  if lstDiceRolls.SelectedRowIndex > -1 then
		    var lindex as Integer = lstDiceRolls.SelectedRowIndex
		    
		    lstDiceRolls.AddRow lstDiceRolls.CellValueAt( lindex, 0 ), lstDiceRolls.CellValueAt( lindex, 1 ), lstDiceRolls.CellValueAt( lindex, 2 )
		    lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = lstDiceRolls.RowTagAt( lindex )
		    
		    lstDiceRolls.SelectedRowIndex = lstDiceRolls.LastAddedRowIndex
		  end if
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
		      Break
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


	#tag Hook, Flags = &h0
		Event FindDiceNotationsIn(ByRef Name as String, ByRef Source as String)
	#tag EndHook


#tag EndWindowCode

#tag Events lstDiceRolls
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
		    ardeModifier.RemoveEnabled = me.SelectedRowIndex > -1
		    ardeModifier.DuplicateEnabled = me.SelectedRowIndex > -1
		    ardeModifier.EditEnabled = me.SelectedRowIndex > -1
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
		  me.ColumnTypeAt(2) = Listbox.CellTypes.TextField
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
#tag Events ardeModifier
	#tag Event
		Sub ActionAdd()
		  AddCalculation
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionDuplicate()
		  copyCalculation
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionEdit()
		  EditCalculation
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionRemove()
		  RemoveCalculation
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bvlUnofficialInfo
	#tag Event
		Sub Action()
		  MessageBox "Dice rolls here aren't officially supported by the Fight Club app, but I added it in case they might be useful in the future."
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
