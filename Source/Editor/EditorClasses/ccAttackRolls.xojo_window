#tag Window
Begin ContainerControl ccAttackRolls
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
   Height          =   122
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   True
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
   Width           =   560
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
      AllowRowDragging=   False
      AllowRowReordering=   True
      Bold            =   False
      ColumnCount     =   3
      ColumnWidths    =   "40%, 75, *"
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
      InitialValue    =   "Name	To Hit	Dice Roll"
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
      Tooltip         =   "Attack rolls notation as name, value to hit, and roll for damage. A field can be left empty."
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   410
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   BeginSegmented AddDuplicateRemoveEdit ardeModifier
      AddEnabled      =   False
      DuplicateEnabled=   False
      EditEnabled     =   False
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   46
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   False
      Top             =   34
      Transparent     =   False
      Visible         =   True
      Width           =   96
   End
   BeginSegmentedButton SegmentedButton btnMagic
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   118
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      Segments        =   "🪄\n\nFalse"
      SelectionStyle  =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   "Automagically fill in all the dice rolls"
      Top             =   70
      Transparent     =   False
      Visible         =   True
      Width           =   24
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AddCalculation()
		  var NameValue, Source as String
		  RaiseEvent FindDiceNotationsIn( NameValue, Source )
		  
		  
		  var result, damageType as string
		  
		  'if lstDiceRolls.LastRowIndex = -1 then
		  'result = cDescription.Value.Match("Hit: \d+ \((.*?)\)", 1)
		  'elseif lstDiceRolls.LastRowIndex = 0 then
		  'result = cDescription.Value.Match("plus \d+ \((.*?)\) \w+", 1 )
		  'else
		  'result = cDescription.Value.Match("\d+ \((.*?)\) (\w+ damage)", 1 )
		  'end if
		  
		  
		  
		  var multiresult() as String = Source.MatchAll("\((\d+d\d+.*?)\) (\w+.*? damage)", 1 )
		  var multidamagetypes() as String = Source.MatchAll("\((\d+d\d+.*?)\) (\w+.*? damage)", 2 )
		  
		  if result = "" and multiresult <> Nil and multiresult.LastIndex >= lstDiceRolls.LastRowIndex+1 then
		    result = multiresult(lstDiceRolls.LastRowIndex+1)
		    if multidamagetypes.LastIndex >= lstDiceRolls.LastRowIndex+1 then
		      damageType = multidamagetypes(lstDiceRolls.LastRowIndex+1).Titlecase
		    end if
		  end if
		  
		  result = SummonCalculator( result, True )
		  
		  
		  if result <> "" then
		    var name, tohit as String
		    
		    if lstDiceRolls.LastRowIndex = -1 then
		      if Keyboard.AsyncAltKey then
		        name = NameValue
		        if name.Contains("(") and name.Contains(")") then
		          name = name.ReplaceAllRegEx( "\((.*?)\)", "" ).Trim
		        end if
		      end if
		      
		      tohit = Source.Match( "(\+\d+) to hit", 1 )
		      if tohit = "" then
		        tohit = Source.Match( "(\-\d+) to hit", 1 )
		      end if
		      'elseif lstDiceRolls.LastRowIndex = 0 then
		      'name = cDescription.Value.Match("plus \d+ \(.*?\) (\w+)", 1 ).Titlecase
		      'else
		      'name = cDescription.Value.Match("\(.*?\) (\w+) damage", 1 ).Titlecase
		    end if
		    
		    if name = "" then
		      name = damageType
		    end if
		    if name = "" then
		      name = NameValue 'cName.Value
		      if name.Contains("(") and name.Contains(")") then
		        name = name.ReplaceAllRegEx( "\((.*?)\)", "" ).Trim
		      end if
		    end if
		    
		    lstDiceRolls.AddRow name, tohit, result
		    lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( result )
		    
		    lstDiceRolls.SelectedRowIndex = lstDiceRolls.LastAddedRowIndex
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddDiceRollsTo(xNode as XMLNode)
		  
		  
		  // Attack rolls
		  if lstDiceRolls.LastRowIndex > -1 then
		    for row as Integer = 0 to lstDiceRolls.LastRowIndex
		      var name, tohit, diceroll as string
		      name = lstDiceRolls.CellValueAt( row, 0 )
		      tohit = lstDiceRolls.CellValueAt( row, 1 )
		      diceroll = lstDiceRolls.RowTagAt( row ) 'DiceCalculatorMethods.SimplifyMath( lstDiceRolls.CellValueAt( row, 2 ) )
		      
		      if tohit.Trim <> "" and NOT tohit.Contains("-") and NOT tohit.Contains("+") then
		        tohit = "+" + tohit.Trim
		      end if
		      
		      xNode.AppendSimpleChild( "attack", name.Trim + "|" + tohit.Trim + "|" + diceroll.Trim )
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRoll(xValue as String)
		  lstDiceRolls.AddRow xValue.NthField("|", 1), xValue.NthField("|", 2), DiceCalculatorMethods.PrettifyMath( xValue.NthField("|", 3) )
		  lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = xValue.NthField("|", 3)
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
		    result = lstDiceRolls.RowTagAt( lstDiceRolls.SelectedRowIndex ) 'CellValueAt( lstDiceRolls.SelectedRowIndex, 2 )
		  end if
		  result = SummonCalculator( result, True )
		  
		  if result <> "" then
		    if lstDiceRolls.SelectedRowIndex > -1 then
		      lstDiceRolls.CellValueAt( lstDiceRolls.SelectedRowIndex, 2 ) = result
		      lstDiceRolls.RowTagAt( lstDiceRolls.SelectedRowIndex ) = DiceCalculatorMethods.SimplifyMath( result )
		    else
		      lstDiceRolls.AddRow result
		      lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( result )
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProcessDicerolls()
		  'if Keyboard.AsyncAltKey then
		  lstDiceRolls.DeleteAllRows
		  'end if
		  
		  
		  var NameValue, Source as String
		  RaiseEvent FindDiceNotationsIn( NameValue, Source )
		  
		  var HasTwoHandedVariant as Boolean = Source.Contains("used with two hands") OR Source.Contains("used in two hands")
		  
		  // Clean name
		  if NameValue.Contains("(") and NameValue.Contains(")") then
		    NameValue = NameValue.ReplaceAllRegEx( "\((.*?)\)", "" ).Trim
		  end if
		  NameValue = NameValue.Replace("Variant:", "").Trim
		  
		  // Find Damage dice
		  var DamageDice() as String = Source.MatchAll("\((\d+d\d+.*?)\) (\w+.*? damage)", 1 )
		  var DamageTypes() as String = Source.MatchAll("\((\d+d\d+.*?)\) (\w+.*? damage)", 2 )
		  
		  var singletRoll as String = Source.Match(" (\d+) (\w+ damage)", 1 )
		  var singletDamage as String = Source.Match(" (\d+) (\w+ damage)", 2 )
		  
		  if singletRoll <> "" then
		    DamageDice.AddAt 0, singletRoll
		    DamageTypes.AddAt 0, singletDamage
		  end if
		  
		  // Find spellattack to hit
		  var SpellAttack as String = Source.Match( "(\+\d+) to hit with spell attack", 1 )
		  
		  // Find to hit
		  var tohit as String = Source.Match( "(\+\d+) to hit", 1 )
		  if tohit = "" then
		    tohit = Source.Match( "(\-\d+) to hit", 1 )
		  end if
		  
		  // Damage rolls
		  if DamageDice <> Nil and DamageDice.LastIndex > -1 then
		    
		    // Damage Types
		    for index as Integer = 0 to DamageDice.LastIndex
		      
		      var damageToHit as String
		      if index = 0 then
		        damageToHit = tohit
		      end if
		      
		      var TwoHanded as String
		      if HasTwoHandedVariant and index = 1 then
		        TwoHanded = " (Two-Handed)"
		        damageToHit = tohit
		      end if
		      
		      lstDiceRolls.AddRow DamageTypes(index).Titlecase + TwoHanded, damageToHit, DiceCalculatorMethods.PrettifyMath( DamageDice(index) )
		      lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( DamageDice(index) )
		      
		      Source = Source.Replace( DamageDice(index), "" )
		    next
		    
		    // Combined attack
		    if (Source.Match("plus \d+") <> "" or Source.Contains("Two-Handed")) and DamageDice.LastIndex > 0 then
		      
		      var CombinedResult, CombinedResultTwoHanded as String
		      
		      for index as Integer = 0 to lstDiceRolls.LastRowIndex
		        var TwoHandedAttack as Boolean = lstDiceRolls.CellValueAt( index, 0 ).Contains("Two-Handed")
		        
		        if NOT TwoHandedAttack then
		          if CombinedResult = "" then
		            CombinedResult = "(" + lstDiceRolls.CellValueAt( index, 2 ) + ")"
		          else
		            CombinedResult = CombinedResult + " + (" + lstDiceRolls.CellValueAt( index, 2 ) + ")"
		          end if
		        end if
		        
		        if HasTwoHandedVariant and index > 0 then
		          if CombinedResultTwoHanded = "" then
		            CombinedResultTwoHanded = "(" + lstDiceRolls.CellValueAt( index, 2 ) + ")"
		          else
		            CombinedResultTwoHanded = CombinedResultTwoHanded + " + (" + lstDiceRolls.CellValueAt( index, 2 ) + ")"
		          end if
		        end if
		        
		      next
		      
		      
		      if CombinedResult <> "" then
		        lstDiceRolls.AddRowAt(0, CombinedResult)
		        lstDiceRolls.CellValueAt( lstDiceRolls.LastAddedRowIndex, 0 ) = NameValue
		        lstDiceRolls.CellValueAt( lstDiceRolls.LastAddedRowIndex, 1 ) = tohit
		        lstDiceRolls.CellValueAt( lstDiceRolls.LastAddedRowIndex, 2 ) = DiceCalculatorMethods.PrettifyMath( CombinedResult )
		        
		        lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( CombinedResult )
		      end if
		      
		      if CombinedResultTwoHanded <> "" then
		        lstDiceRolls.AddRowAt(1, CombinedResultTwoHanded)
		        lstDiceRolls.CellValueAt( lstDiceRolls.LastAddedRowIndex, 0 ) = NameValue + " (Two-Handed)"
		        lstDiceRolls.CellValueAt( lstDiceRolls.LastAddedRowIndex, 1 ) = tohit
		        lstDiceRolls.CellValueAt( lstDiceRolls.LastAddedRowIndex, 2 ) = DiceCalculatorMethods.PrettifyMath( CombinedResultTwoHanded )
		        
		        lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( CombinedResultTwoHanded )
		      end if
		      
		    end if // @END damagedice.lastindex > 0
		    
		    // Spell attack
		  elseif SpellAttack <> "" then
		    lstDiceRolls.AddRow NameValue, SpellAttack, ""
		    
		  end if
		  
		  // Find other (dice) rolls
		  var OtherDiceRolls() as String = Source.MatchAll("\((\d+d\d+.*?)\)", 1 )
		  
		  'if Source.Match("(d\d+)", 1 ) <> "" then
		  'OtherDiceRolls.Add Source.Match("(d\d+)", 1 )
		  'end if
		  
		  // Find other dice rolls
		  var AnyDiceRolls() as String = Source.MatchAll( "(\d+d\d+ \+ \d+|\d+d\d+ \× \d+|\d+d\d+ x \d+|\d+d\d+ - \d+|\d+d\d+.*?|\d+d\d+ \||d\d+ \||d\d+\.|d\d+) (\w+)", 1 )
		  var AnyDiceRollsInfo() as String = Source.MatchAll( "(\d+d\d+ \+ \d+|\d+d\d+ \× \d+|\d+d\d+ x \d+|\d+d\d+ - \d+|\d+d\d+.*?|\d+d\d+ \||d\d+ \||d\d+\.|d\d+) (\w+)", 2 )
		  
		  // Other (dice)
		  if OtherDiceRolls.LastIndex > -1 then
		    for index as Integer = 0 to OtherDiceRolls.LastIndex
		      if OtherDiceRolls(index).StartsWith("d") then
		        OtherDiceRolls(index) = "1" + OtherDiceRolls(index)
		      end if
		      
		      lstDiceRolls.AddRow NameValue, tohit, DiceCalculatorMethods.PrettifyMath( OtherDiceRolls(index) )
		      lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( OtherDiceRolls(index) )
		    next
		    
		    // Other dice
		  elseif AnyDiceRolls.LastIndex > -1 then
		    for index as Integer = 0 to AnyDiceRolls.LastIndex
		      if AnyDiceRolls(index).StartsWith("d") then
		        AnyDiceRolls(index) = "1" + AnyDiceRolls(index)
		      end if
		      if AnyDiceRolls(index).EndsWith("|") then
		        AnyDiceRolls(index) = AnyDiceRolls(index).Replace("|", "").Trim
		      end if
		      
		      Select case AnyDiceRollsInfo(index)
		        
		      case "At", "To"
		        AnyDiceRollsInfo(index) = NameValue
		        
		      End Select
		      
		      lstDiceRolls.AddRow AnyDiceRollsInfo(index).Titlecase, tohit, DiceCalculatorMethods.PrettifyMath( AnyDiceRolls(index) )
		      lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( AnyDiceRolls(index) )
		    next
		    
		    'elseif singletRoll <> "" then
		    'lstDiceRolls.AddRow AnyDiceRollsInfo(index).Titlecase, tohit, DiceCalculatorMethods.PrettifyMath( singletRoll )
		    'lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( singletRoll )
		    
		  end if
		  
		  // Empty to hit
		  if lstDiceRolls.LastIndex = -1 and tohit <> "" then
		    
		    lstDiceRolls.AddRow NameValue, tohit, ""  ', DiceCalculatorMethods.PrettifyMath( AnyDiceRolls(index) )
		    'lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( AnyDiceRolls(index) )
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
		    Return True
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  #if TargetMacOS then
		    ardeModifier.RemoveEnabled = me.SelectedRowIndex > -1
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
		  me.ColumnTypeAt(0) = Listbox.CellTypes.TextField
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
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  var AddMenu as new MenuItem("Add")
		  AddMenu.Shortcut = "+"
		  
		  var RemoveMenu as new MenuItem("Remove")
		  'RemoveMenu.Shortcut = Asc(8)
		  
		  base.AddMenu AddMenu
		  base.AddMenu new MenuItem( "Edit" )
		  base.AddMenu RemoveMenu
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  if hitItem <> Nil then
		    
		    Select case hitItem.Text
		      
		    case "Add"
		      AddCalculation
		    case "Edit"
		      EditCalculation
		    case "Remove"
		      RemoveCalculation
		      
		    End Select
		    
		    Return True
		  end if
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
#tag Events btnMagic
	#tag Event
		Sub Pressed(segmentIndex As Integer)
		  ProcessDicerolls
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
