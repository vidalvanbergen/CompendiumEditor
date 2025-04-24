#tag Window
Begin Window wndFeature
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
   Height          =   1006
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
      Tooltip         =   "Name of the feature."
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
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Description of the feature."
      Top             =   92
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   560
   End
   Begin ccProficiencies cProficiency
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
      Tooltip         =   "Saving throw and skill proficiencies. Enter names of abilities or skills separated by commas."
      Top             =   488
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   560
   End
   Begin ccSpecialTraits cSpecial
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
      Tooltip         =   "Special traits. Use the menu button to choose from the list of available traits."
      Top             =   522
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   560
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
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Modifiers. The category can be set to one of the following: bonus, ability score, ability modifier, saving throw, or skill. The value for this element is the modifier name, followed by its value."
      Top             =   556
      Transparent     =   True
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
         TabIndex        =   3
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
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   9
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   75
      End
      Begin Label lblCategory
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
         InitialParent   =   "cvsToolbar"
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
         Text            =   "Category:"
         TextAlignment   =   3
         TextColor       =   &cFAFAFA00
         Tooltip         =   ""
         Top             =   9
         Transparent     =   True
         Underline       =   False
         Visible         =   False
         Width           =   125
      End
      Begin DesktopPopupMenu popCategory
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar"
         InitialValue    =   ""
         Italic          =   False
         Left            =   157
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Give the feature an optional category."
         Top             =   9
         Transparent     =   False
         Underline       =   False
         Visible         =   False
         Width           =   200
      End
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "The name of the source material and a page number this background came from. (e.g. Player's Handbook p. 128)"
      Top             =   454
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   560
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
      TabIndex        =   2
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
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   828
      Transparent     =   True
      Visible         =   True
      Width           =   560
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim AscKey as Integer = Asc( key )
		  
		  if (TargetMacOS AND Keyboard.AsyncCommandKey) OR (NOT TargetMacOS AND Keyboard.AsyncControlKey) then
		    
		    Select case AscKey
		      
		    case 105 'i
		      ImportFromClipboard
		      Return True
		      
		    End Select
		    
		  end if
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CompileXML()
		  xNode.RemoveAllChildren
		  xNode.RemoveAllAttributes
		  
		  
		  if popCategory.Visible and popCategory.SelectedRowValue <> "" then
		    if lblCategory.Text = "Category:" then
		      xNode.SetAttribute( "category", popCategory.RowValueAt( popCategory.SelectedRowIndex ).Lowercase )
		    elseif lblCategory.Text = "Optional:" and popCategory.SelectedRowValue = "YES" then
		      xNode.SetAttribute( "optional", popCategory.RowValueAt( popCategory.SelectedRowIndex ).Uppercase )
		    end if
		  end if
		  
		  // Name
		  xNode.AppendSimpleChild( "name", cName.Value )
		  
		  SetDescription( xNode, cDescription.Value, cSource.Value )
		  
		  // Proficiency
		  if cProficiency.Value <> "" then
		    xNode.AppendSimpleChild( "proficiency", cProficiency.Value )
		  end if
		  
		  // Special
		  if cSpecial.Value <> "" then
		    xNode.AppendSimpleChild( "special", cSpecial.Value )
		  end if
		  
		  // Modifiers
		  var lst as Listbox = cModifiers.lstModifiers
		  
		  if lst.LastRowIndex > -1 then
		    for row as Integer = 0 to lst.LastRowIndex
		      var xModifier as XMLNode = xNode.AppendNewChild( "modifier" )
		      
		      xModifier.SetAttribute( "category", lst.CellValueAt( row, 0 ).Lowercase )
		      xModifier.SetValue lst.CellValueAt( row, 1 )'.Replace( " + Proficiency Bonus", "+%0" ).Replace( "+Proficiency Bonus", "+%0" )
		    next
		  end if
		  
		  // Attack rolls
		  cDiceRolls.AddDiceRollsTo( xNode )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ImportFromClipboard()
		  var c as new Clipboard
		  
		  var Title as string
		  var Description as String
		  if c.Text <> "" then
		    
		    var lines() as string = NormalizeLineEndings( c.Text ).Split( EndOfLine )
		    
		    
		    if lines.LastIndex > -1 then
		      
		      if lines(0).Length <= 50 then
		        Title = lines(0)
		        lines.RemoveAt(0)
		      end if
		      
		      Description = string.FromArray( lines, EndOfLine )
		      
		      if Title = "" then
		        Title = Description.Match( "(.*?)(\.|:)", 1 )
		        if Title <> "" then
		          Description = Description.Replace( Title + ". ", "" ).Replace( Title + ": ", "" )
		        end if
		      end if
		    end if
		  end if
		  
		  cDescription.FormatParagraphs( Description, False )
		  cDescription.FormatLists( Description, false )
		  
		  Title = Title.Titlecase.ReplaceAll(" Of ", " of ").ReplaceAll(" The ", " the ").ReplaceAll( " A ", " a " ).ReplaceAll( " With ", " with " )
		  if cName.Value.Contains( "FeatureName" ) then
		    cName.Value = cName.Value.Replace("FeatureName", Title)
		  else
		    cName.Value = Title
		  end if
		  cDescription.Value = Description
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
		      
		      
		      'if xNode.GetAttribute("category") <> "" or xNode.GetAttribute("optional") <> "" then
		      'if xNode.AttributeCount > 0 then
		      for row as Integer = 0 to popCategory.LastRowIndex
		        if popCategory.RowValueAt(row) <> "" then
		          if popCategory.RowValueAt(row) = xNode.GetAttribute("category") or _
		            popCategory.RowValueAt(row) = xNode.GetAttribute("optional") then
		            popCategory.SelectedRowIndex = row
		            Exit
		          end if
		        end if
		      next
		      'end if
		      
		      if TheNode.Name = "Feature" then
		        popCategory.Tooltip = "Set to 'YES' if this feature is optional."
		      end if
		      
		      
		      Select case xChild.Name
		        
		      case "name"
		        cName.Value = xValue
		        
		      case "text", "description"
		        Description.Add xValue
		        
		      case "proficiency"
		        cProficiency.Value = xValue
		        
		        cProficiency.Values = xValue.Split(",")
		        for i as Integer = 0 to cProficiency.Values.LastIndex
		          cProficiency.Values(i) = cProficiency.Values(i).Trim
		        next
		        cProficiency.Tags = cProficiency.Values
		        
		      case "special"
		        cSpecial.Value = xValue
		        
		        cSpecial.Values = xValue.Split(",")
		        for i as Integer = 0 to cSpecial.Values.LastIndex
		          cSpecial.Values(i) = cSpecial.Values(i).Trim
		        next
		        cSpecial.Tags = cSpecial.Values
		        
		      case "modifier"
		        if xValue.Contains("%0") then
		          xValue = xValue.Replace(" +%0", " + Proficiency Bonus")
		          xValue = xValue.Replace("+%0", " + Proficiency Bonus")
		        End if
		        
		        if xChild.GetAttribute("category") <> "" then
		          cModifiers.addrow xChild.GetAttribute("category").Titlecase, xValue
		        else
		          cModifiers.addrow "Bonus", xValue
		          Break
		        end if
		        
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
		        'lstDiceRolls.AddRow xValue.NthField("|", 1), xValue.NthField("|", 2), DiceCalculatorMethods.PrettifyMath( xValue.NthField("|", 3) )
		        'lstDiceRolls.RowTagAt( lstDiceRolls.LastAddedRowIndex ) = xValue.NthField("|", 3)
		        
		        
		      End Select
		      
		    next
		    
		    var descriptionText as String = String.FromArray( Description, EndOfLine )
		    
		    if descriptionText <> "" then
		      cSource.Value = SourceFromDescription( descriptionText )
		      descriptionText = DescriptionWithoutSource( descriptionText )
		    end if
		    
		    cDescription.Value =  descriptionText
		    
		    'if cDescription.Value = "" and Source <> "" then
		    'cDescription.Value = EndOfLine + EndOfLine + "Source:" + chr(9) + Source
		    'end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetCategorieOptions(Options() as String)
		  
		  if Options <> Nil and Options.LastIndex > -1 then
		    
		    lblCategory.Visible = True
		    popCategory.Visible = True
		    popCategory.RemoveAllRows
		    
		    for each option as string in options
		      popCategory.AddRow option
		    next
		    popCategory.SelectedRowIndex = 0
		    
		    cName.SetMode ccEditorTextField.Mode.Dropdown
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTemplateMenu(baseMenu as MenuItem)
		  if baseMenu <> Nil then
		    cDescription.TemplateMenu = baseMenu
		    
		    
		    cName.BaseMenu = baseMenu
		    if baseMenu <> Nil and baseMenu.Count > 0 then
		      cName.SetMode ccEditorTextField.Mode.Dropdown
		    end if
		  end if
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
		  
		  'for index as Integer = 0 to CommonNames.LastIndex
		  'me.BaseMenu.Append new MenuItem( CommonNames(index) )
		  'next
		  
		  'me.BaseMenu.Append new MenuItem("Description")
		  'me.BaseMenu.Append new MenuItem("Ability Score Increases")
		  'me.BaseMenu.Append new MenuItem("Age")
		  'me.BaseMenu.Append new MenuItem("Alignment")
		  'me.BaseMenu.Append new MenuItem("Size")
		  'me.BaseMenu.Append new MenuItem("Creature Type")
		  'me.BaseMenu.Append new MenuItem("-")
		  'me.BaseMenu.Append new MenuItem("Darkvision")
		  'me.BaseMenu.Append new MenuItem("Superior Darkvision")
		  'me.BaseMenu.Append new MenuItem("Light Sensitivity")
		  'me.BaseMenu.Append new MenuItem("-")
		  'me.BaseMenu.Append new MenuItem("Languages")
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
#tag Events cSource
	#tag Event
		Sub Open()
		  me.FieldName = "Source:"
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bvlClipboard
	#tag Event
		Sub Action()
		  ImportFromClipboard
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cDiceRolls
	#tag Event
		Sub FindDiceNotationsIn(ByRef Name as String, ByRef Source as String)
		  Source = cDescription.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.bvlUnofficialInfo.Visible = True
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
