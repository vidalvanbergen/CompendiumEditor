#tag Window
Begin Window wndCreatureFeature
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   0
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   False
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   630
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   802
   MinimumWidth    =   600
   Resizeable      =   True
   Title           =   "Feature"
   Type            =   8
   Visible         =   True
   Width           =   600
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Name of the trait or attack."
      Top             =   58
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   524
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
      Height          =   350
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Description of the trait or attack."
      Top             =   92
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   560
   End
   Begin Canvas cvsToolbar
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   600
      Begin PushButton btnSave
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Save"
         Default         =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar"
         Italic          =   False
         Left            =   505
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   9
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   75
      End
      Begin PushButton btnCancel
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   True
         Caption         =   "Cancel"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar"
         Italic          =   False
         Left            =   418
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   9
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   75
      End
   End
   Begin ccEditorTextField cRecharge
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MultipleOption  =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Number needed to roll on d6 to recharge ability."
      Top             =   454
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   560
   End
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
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Dice Rolls:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   488
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
      AllowRowReordering=   False
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
      InitialValue    =   "Name	To Hit	Damage"
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
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Attack rolls notation as name, value to hit, and roll for damage. A field can be left empty."
      Top             =   488
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   423
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
      Left            =   65
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacControlStyle =   0
      RemoveEnabled   =   False
      Scope           =   0
      Segments        =   "+\n\nFalse\r-\n\nFalse\r✏️\n\nFalse"
      SelectionType   =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   False
      Top             =   522
      Transparent     =   False
      Visible         =   True
      Width           =   72
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
      Left            =   556
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuStyle       =   0
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Import from Clipboard"
      Top             =   58
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
		Sub AddCalculation()
		  
		  var result, damageType as string
		  
		  'if lstDiceRolls.LastRowIndex = -1 then
		  'result = cDescription.Value.Match("Hit: \d+ \((.*?)\)", 1)
		  'elseif lstDiceRolls.LastRowIndex = 0 then
		  'result = cDescription.Value.Match("plus \d+ \((.*?)\) \w+", 1 )
		  'else
		  'result = cDescription.Value.Match("\d+ \((.*?)\) (\w+ damage)", 1 )
		  'end if
		  
		  
		  var multiresult() as String = cDescription.Value.MatchAll("\((\d+d\d+.*?)\)", 1 )
		  var multidamagetypes() as String = cDescription.Value.MatchAll("\((\d+d\d+.*?)\) (\w+) damage", 2 )
		  
		  if result = "" and multiresult.LastIndex >= lstDiceRolls.LastRowIndex+1 then
		    result = multiresult(lstDiceRolls.LastRowIndex+1)
		    if multidamagetypes.LastIndex >= lstDiceRolls.LastRowIndex+1 then
		      damageType = multidamagetypes(lstDiceRolls.LastRowIndex+1).Titlecase
		    end if
		  end if
		  
		  result = SummonCalculator( result, True )
		  
		  
		  if result <> "" then
		    var name, tohit as String
		    
		    if lstDiceRolls.LastRowIndex = -1 then
		      name = cName.Value
		      if name.Contains("(") and name.Contains(")") then
		        name = name.ReplaceAllRegEx( "\((.*?)\)", "" ).Trim
		      end if
		      
		      tohit = cDescription.Value.Match( "(\+\d+) to hit", 1 )
		      if tohit = "" then
		        tohit = cDescription.Value.Match( "(\-\d+) to hit", 1 )
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
		      name = cName.Value
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
		Sub CompileXML()
		  xNode.RemoveAllChildren
		  xNode.RemoveAllAttributes
		  
		  
		  
		  // Name
		  if cName.Value.Trim <> "" then
		    xNode.AppendSimpleChild( "name", cName.Value.Trim )
		  end if
		  
		  // Recharge
		  if cRecharge.Tag <> "" then
		    xNode.AppendSimpleChild( "recharge", cRecharge.Tag )
		  end if
		  
		  // Description
		  SetDescription( xNode, cDescription.Value, "" )
		  
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
		Sub Load(TheNode as XMLNode)
		  xNode = TheNode
		  
		  if xNode <> Nil and xNode.ChildCount > 0 then
		    
		    var Description() as String
		    
		    
		    for each xChild as XMLNode in xNode.Children
		      var xValue as String
		      if xChild.FirstChild <> Nil then
		        xValue = xChild.FirstChild.Value
		      end if
		      
		      
		      
		      
		      
		      Select case xChild.Name
		        
		      case "name"
		        cName.Value = xValue
		        
		      case "text", "description"
		        Description.Add xValue
		        
		      case "recharge"
		        cRecharge.Value = TitleForMenuWithTag( cRecharge.BaseMenu, xValue )
		        cRecharge.Tag = xValue
		        
		      case "attack"
		        lstDiceRolls.AddRow xValue.NthField("|", 1), xValue.NthField("|", 2), DiceCalculatorMethods.PrettifyMath( xValue.NthField("|", 3) )
		        lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = xValue.NthField("|", 3)
		        
		        
		      End Select
		      
		    next
		    
		    cDescription.Value = String.FromArray( Description, EndOfLine )
		    
		    'if cDescription.Value = "" and Source <> "" then
		    'cDescription.Value = EndOfLine + EndOfLine + "Source:" + chr(9) + Source
		    'end if
		    
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
		Sub SetTemplateMenu(baseMenu as MenuItem)
		  cDescription.TemplateMenu = baseMenu
		  
		  cName.BaseMenu = baseMenu
		  cName.SetMode ccEditorTextField.Mode.Dropdown
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Saved As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		xNode As XMLNode
	#tag EndProperty


#tag EndWindowCode

#tag Events cName
	#tag Event
		Sub Open()
		  me.FieldName = "Name:"
		  
		  if me.BaseMenu <> Nil and me.BaseMenu.Count > 0 then
		    me.SetMode ccEditorTextField.Mode.Dropdown
		  else
		    me.SetMode ccEditorTextField.Mode.Textfield
		  end if
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
		  
		  if me.TemplateMenu <> Nil and me.TemplateMenu.Text = "" then
		    me.TemplateMenu.Text = "Templates"
		  end if
		  'me.TemplateMenu = cName.BaseMenu
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsToolbar
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawGradient HeaderStartColor, SelectionColor, 0, 0, g.Width, g.Height
		  
		  'g.DrawingColor = HeaderStartColor
		  'g.DrawLine 0, g.Height-1, g.Width, g.Height-1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSave
	#tag Event
		Sub Action()
		  self.CompileXML
		  Self.Saved = True
		  self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cRecharge
	#tag Event
		Sub Open()
		  me.FieldName = "Recharge On:"
		  me.SetMode( ccEditorTextField.Mode.Dropdown )
		  me.ReadOnly = True
		  
		  me.BaseMenu.AddMenu new MenuItem( "None", "" )
		  me.BaseMenu.AddMenu new MenuItem( "-" )
		  me.BaseMenu.AddMenu new MenuItem( "1/Day", "1/Day" )
		  me.BaseMenu.AddMenu new MenuItem( "2/Day", "2/Day" )
		  me.BaseMenu.AddMenu new MenuItem( "3/Day", "3/Day" )
		  me.BaseMenu.AddMenu new MenuItem( "4/Day", "4/Day" )
		  me.BaseMenu.AddMenu new MenuItem( "5/Day", "5/Day" )
		  me.BaseMenu.AddMenu new MenuItem( "6/Day", "6/Day" )
		  me.BaseMenu.AddMenu new MenuItem( "-" )
		  me.BaseMenu.AddMenu new MenuItem( "1/Turn", "1/Turn" )
		  me.BaseMenu.AddMenu new MenuItem( "2/Turn", "2/Turn" )
		  me.BaseMenu.AddMenu new MenuItem( "3/Turn", "3/Turn" )
		  me.BaseMenu.AddMenu new MenuItem( "4/Turn", "4/Turn" )
		  me.BaseMenu.AddMenu new MenuItem( "5/Turn", "5/Turn" )
		  me.BaseMenu.AddMenu new MenuItem( "6/Turn", "6/Turn" )
		  me.BaseMenu.AddMenu new MenuItem( "7/Turn", "7/Turn" )
		  me.BaseMenu.AddMenu new MenuItem( "-" )
		  me.BaseMenu.AddMenu new MenuItem( "Recharge 2-6", "D2" )
		  me.BaseMenu.AddMenu new MenuItem( "Recharge 3-6", "D3" )
		  me.BaseMenu.AddMenu new MenuItem( "Recharge 4-6", "D4" )
		  me.BaseMenu.AddMenu new MenuItem( "Recharge 5-6", "D5" )
		  me.BaseMenu.AddMenu new MenuItem( "Recharge 6", "D6" )
		  me.BaseMenu.AddMenu new MenuItem( "-" )
		  me.BaseMenu.AddMenu new MenuItem( "Recharge after a Short or Long Rest", "SHORT" )
		  me.BaseMenu.AddMenu new MenuItem( "Recharge after a Long Rest", "LONG" )
		End Sub
	#tag EndEvent
#tag EndEvents
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
#tag Events bvlClipboard
	#tag Event
		Sub Action()
		  var c as new Clipboard
		  
		  var Title as string
		  var Description as String = c.Text
		  
		  Description = NormalizeLineEndings( Description )
		  
		  Title = c.Text.Match( "(.*?)(\.|:)", 1 )
		  if Title <> "" then
		    if c.Text.StartsWith( Title + "." ) then
		      Description = c.Text.Replace( Title + ".", "" )
		    elseif c.Text.StartsWith( Title + ":" ) then
		      Description = c.Text.Replace( Title + ":", "" )
		    end if
		    Description = Description.Trim
		  end if
		  
		  cName.Value = Title
		  
		  if Description.Contains( "• " ) or Description.Contains("slots):") or Description.Contains("(at will)") or Description.Contains( "/day" ) then
		    'cDescription.FormatParagraphs( Description, False )
		    'cDescription.FormatLists( Description, false )
		  else
		    Description = Description.ReplaceAll( chr(13), " " ).ReplaceAll( EndOfLine, " " )
		  end if
		  cDescription.Value = Description
		  
		  
		  // Hit the dice
		  var multiresult() as String = cDescription.Value.MatchAll("\((\d+d\d+.*?)\)", 1 )
		  var multidamagetypes() as String = cDescription.Value.MatchAll("\((\d+d\d+.*?)\) (\w+) damage", 2 )
		  
		  var toHit as string = Description.Match( "Attack: (.*?\d+) to hit", 1 )
		  if toHit <> "" and NOT toHit.Contains("-") and NOT toHit.Contains("+") then
		    toHit = "+" + toHit
		  end if
		  
		  
		  for index as Integer = 0 to multiresult.LastIndex
		    if index = 0 and toHit <> "" then
		      lstDiceRolls.AddRow Title, toHit, DiceCalculatorMethods.PrettifyMath( multiresult(index) )
		    else
		      var damageType as string = ""
		      if multidamagetypes.LastIndex >= index then
		        damageType = multidamagetypes(index)
		      end if
		      lstDiceRolls.AddRow Title, toHit, DiceCalculatorMethods.PrettifyMath( multiresult(index) )
		    end if
		    lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = DiceCalculatorMethods.SimplifyMath( multiresult(index) )
		  next
		  
		  
		  // Recharge
		  if Title.Contains( "short rest" ) or Title.Contains( "short or long rest" ) then
		    cRecharge.Value = TitleForMenuWithTag( cRecharge.BaseMenu, "SHORT" )
		    cRecharge.Tag = "SHORT"
		    
		  elseif Title.Contains( "long rest" ) then
		    cRecharge.Value = TitleForMenuWithTag( cRecharge.BaseMenu, "LONG" )
		    cRecharge.Tag = "LONG"
		    
		  elseif Title.Contains( "(Recharge 6" ) then
		    cRecharge.Value = TitleForMenuWithTag( cRecharge.BaseMenu, "D6" )
		    cRecharge.Tag = "D6"
		    
		  elseif Title.Contains( "(Recharge 5" ) then
		    cRecharge.Value = TitleForMenuWithTag( cRecharge.BaseMenu, "D5" )
		    cRecharge.Tag = "D5"
		    
		  elseif Title.Contains( "(Recharge 4" ) then
		    cRecharge.Value = TitleForMenuWithTag( cRecharge.BaseMenu, "D4" )
		    cRecharge.Tag = "D4"
		    
		  elseif Title.Contains( "(Recharge 3" ) then
		    cRecharge.Value = TitleForMenuWithTag( cRecharge.BaseMenu, "D3" )
		    cRecharge.Tag = "D3"
		    
		  elseif Title.Contains( "(Recharge 2" ) then
		    cRecharge.Value = TitleForMenuWithTag( cRecharge.BaseMenu, "D2" )
		    cRecharge.Tag = "D2"
		    
		  elseif Title.Contains("/Day") then
		    cRecharge.Value = Replace( Title.Match ( "(\d+\/Day)", 1 ), "day", "Day" )
		    cRecharge.Tag = cRecharge.Value
		    
		    cName.Value = Title.Replace( "/day", "/Day" )
		    
		  elseif Title.Contains( "/Turn") then
		    cRecharge.Value = Replace( Title.Match ( "(\d+\/Turn)", 1 ), "turn", "Turn" )
		    cRecharge.Tag = cRecharge.Value
		    
		    cName.Value = Title.Replace( "/turn", "/Turn" )
		    
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
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
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
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Saved"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
