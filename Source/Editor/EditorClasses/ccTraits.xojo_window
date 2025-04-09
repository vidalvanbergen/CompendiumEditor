#tag Window
Begin ContainerControl ccTraits
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
   Height          =   300
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
   Begin Label lblTraits
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
      Text            =   "Traits:"
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin Listbox lstTraits
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   True
      AllowRowReordering=   True
      Bold            =   False
      ColumnCount     =   2
      ColumnWidths    =   "*, 0"
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
      Height          =   300
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Name	Category"
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
   BeginSegmented AddDuplicateRemoveEdit ardeTraits
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   False
      Top             =   32
      Transparent     =   False
      Visible         =   True
      Width           =   96
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AddFeaturesToXMLNode(Byref xNode as XMLNode)
		  
		  for row as Integer = 0 to lstTraits.LastRowIndex
		    if lstTraits.RowTagAt( row ) IsA XMLNode then
		      var xFeature as XMLNode = lstTraits.RowTagAt( row )
		      
		      xNode.AppendChildCopy( xFeature )
		    else
		      Break
		    end if
		  next
		  
		  
		  'for index as Integer = 0 to xFeaturesRoot.ChildCount-1
		  'xNode.AppendChildCopy( xFeaturesRoot.Child(index) )
		  'next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FeatureAdd()
		  var xNode as XMLNode = xFeaturesRoot.AppendNewChild( FeatureType )
		  xNode.AppendSimpleChild( "name", "Unnamed" )
		  
		  if IsAutoLevelFeature then
		    'var LastLevel as String = "1"
		    
		    'if lstTraits.SelectedRowIndex > -1 then
		    'LastLevel = lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 0 )
		    'PageNr = lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 2 )
		    'else
		    'if lstTraits.LastRowIndex > -1 then
		    'LastLevel = lstTraits.CellValueAt( lstTraits.LastRowIndex, 0 )
		    'end if
		    
		    
		    if lstTraits.LastRowIndex > -1 then
		      var lastNode as XMLNode = lstTraits.RowTagAt( lstTraits.LastRowIndex )
		      if lastNode.ToString.Contains("Source:") then
		        Source = SourceFrom( lastNode )
		      end if
		      
		      if lastNode.AttributeCount > 0 then
		        if lastNode.GetAttribute("category") <> "" then
		          xNode.SetAttribute("category", lastNode.GetAttribute("category") )
		        elseif lastNode.GetAttribute("optional") <> "" then
		          xNode.SetAttribute("optional", lastNode.GetAttribute("optional") )
		        end if
		      end if
		    end if
		    
		    if Source <> "" then
		      xNode.AppendSimpleChild( "text", "Source:" + chr(9) + Source )
		    end if
		    
		    'PageNr = lstTraits.CellValueAt( lstTraits.LastRowIndex, 2 )
		    
		    
		    lstTraits.AddRow "", "Unnamed"
		  else
		    lstTraits.AddRow "Unnamed", xNode.GetAttribute("category")'.Titlecase
		  end if
		  
		  lstTraits.RowTagAt( lstTraits.LastAddedRowIndex ) = xNode
		  lstTraits.SelectedRowIndex = lstTraits.LastAddedRowIndex
		  'end if
		  
		  FeatureEdit
		  
		  'me.Invalidate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FeatureAdd(Level as String, xNode as XMLNode, selectLastResult as Boolean = False)
		  var copiedxNode as XMLNode = xFeaturesRoot.AppendChildCopy( xNode )
		  
		  
		  if xFeaturesRoot.HasChild( xNode ) then
		    xFeaturesRoot.ReplaceChild( xNode, copiedxNode )
		  end if
		  
		  copiedxNode.Name = FeatureType
		  
		  var xAttribute as String
		  if copiedxNode.AttributeCount > 0 then
		    xAttribute = copiedxNode.GetAttribute("optional")
		  end if
		  
		  
		  'MergeTextNodesFrom( copiedxNode )
		  'var xAttribute as String
		  'if copiedxNode.AttributeCount > 0 then
		  'xAttribute = copiedxNode.GetAttribute("optional")
		  'end if
		  
		  
		  
		  'var FullDescription as String = DescriptionFromNode( copiedxNode ) 'copiedxNode.ValueOfNodeWithName("text")
		  '
		  'if FullDescription.Contains("Source:") then
		  'PageNumber = SourceFromDescription( FullDescription )
		  'PageNumber = PageNumber.Match( " p\. (\d+)", 1 )
		  'end if
		  
		  
		  var name as string = copiedxNode.ValueOfNodeWithName("name")
		  if name.Trim = "" then
		    name = "[Description]"
		  end if
		  
		  lstTraits.AddRow level, name, xAttribute
		  lstTraits.RowTagAt( lstTraits.LastAddedRowIndex ) = copiedxNode
		  if selectLastResult then
		    lstTraits.SelectedRowIndex = lstTraits.LastAddedRowIndex
		  end if
		  
		  me.Invalidate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FeatureAdd(xNode as XMLNode, selectLastResult as Boolean = False)
		  var copiedxNode as XMLNode = xFeaturesRoot.AppendChildCopy( xNode )
		  
		  
		  if xFeaturesRoot.HasChild( xNode ) then
		    ' xFeaturesRoot.RemoveChild(xNode) // Remove old node
		    xFeaturesRoot.ReplaceChild( xNode, copiedxNode )
		  end if
		  
		  copiedxNode.Name = FeatureType
		  
		  var xAttribute as String
		  if copiedxNode.AttributeCount > 0 then
		    xAttribute = copiedxNode.GetAttribute("category")
		  end if
		  
		  
		  var name as string = copiedxNode.ValueOfNodeWithName("name")
		  if name.Trim = "" then
		    name = "[Description]"
		  end if
		  
		  
		  lstTraits.AddRow name, xAttribute'.Titlecase
		  lstTraits.RowTagAt( lstTraits.LastAddedRowIndex ) = copiedxNode
		  if selectLastResult then
		    lstTraits.SelectedRowIndex = lstTraits.LastAddedRowIndex
		  end if
		  
		  me.Invalidate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FeatureAddNew(FeatureName as String)
		  var xNode as XMLNode = xFeaturesRoot.AppendNewChild( FeatureType )
		  xNode.AppendSimpleChild( "name", FeatureName )
		  
		  if xNode <> Nil then
		    var Name as string = xNode.ValueOfNodeWithName("name")
		    if Name.Trim = "" then
		      Name = "[Description]"
		    end if
		    lstTraits.AddRow Name, xNode.GetAttribute("category")'.Titlecase
		    lstTraits.RowTagAt( lstTraits.LastAddedRowIndex ) = xNode
		    'lstTraits.SelectedRowIndex = lstTraits.LastAddedRowIndex
		  end if
		  
		  me.Invalidate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FeatureCopy()
		  
		  if lstTraits.SelectedRowIndex > -1 then
		    var xNode as XMLNode
		    if lstTraits.RowTagAt( lstTraits.SelectedRowIndex ) IsA XMLNode then
		      xNode = lstTraits.RowTagAt( lstTraits.SelectedRowIndex )
		    end if
		    
		    var xNodeCopy as XMLNode
		    if xNode <> Nil then
		      xNodeCopy = xNode.Parent.AppendChildCopy( xNode )
		    end if
		    
		    
		    if xNodeCopy <> Nil then
		      lstTraits.AddRow ""
		      for column as Integer = 0 to lstTraits.LastColumnIndex
		        lstTraits.CellValueAt( lstTraits.LastAddedRowIndex, column ) = lstTraits.CellValueAt( lstTraits.SelectedRowIndex, column )
		        lstTraits.RowTagAt( lstTraits.LastAddedRowIndex ) = xNodeCopy
		      next
		      lstTraits.SelectedRowIndex = lstTraits.LastAddedRowIndex
		    end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FeatureEdit()
		  if lstTraits.SelectedRowIndex > -1 and lstTraits.RowTagAt( lstTraits.SelectedRowIndex ) IsA XMLNode then
		    var xNode as XMLNode = lstTraits.RowTagAt( lstTraits.SelectedRowIndex )
		    
		    'if IsAutoLevelFeature then
		    'FeatureEdit( xNode ), lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 0 ) )
		    'else
		    FeatureEdit( xNode )
		    'end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FeatureEdit(xNode as XMLNode)
		  
		  // Summon Feature editor
		  var hasSaved as Boolean = False
		  var xAttribute as String
		  
		  
		  if xNode.AttributeCount > 0 then
		    if IsAutoLevelFeature then
		      xAttribute = xNode.GetAttribute("optional")
		    else
		      xAttribute = xNode.GetAttribute("category")
		    end if
		  end if
		  
		  
		  'if lstTraits.ColumnCount >= 3 then
		  'PageNr = lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 2 )
		  'end if
		  
		  
		  RaiseEvent BuildTemplateMenu()
		  
		  Select case UseMode
		    
		  case mode.CreatureFeature
		    var c as new wndCreatureFeature
		    if TemplateMenu <> Nil then
		      c.SetTemplateMenu( TemplateMenu )
		    end if
		    
		    c.Load( xNode )
		    c.ShowModal
		    
		    hasSaved = c.Saved
		    
		    
		  case mode.SimpleTrait
		    var c as new wndSimpleTrait
		    if TemplateMenu <> Nil then
		      c.SetTemplateMenu( TemplateMenu )
		    end if
		    
		    c.Load( xNode )
		    c.ShowModal
		    
		    hasSaved = c.Saved
		    
		    
		  else
		    var c as new wndFeature
		    if TemplateMenu <> Nil then
		      c.SetTemplateMenu( TemplateMenu )
		    end if
		    if me.CategoryOptions <> Nil and me.CategoryOptions.LastIndex > -1 then
		      c.SetCategorieOptions( me.CategoryOptions )
		      
		      if IsAutoLevelFeature then
		        c.lblCategory.Text = "Optional:"
		        if c.popCategory.IndexOf( xAttribute ) > -1 then
		          c.popCategory.SelectRowWithValue( xAttribute )
		        else
		          Break
		        end if
		      end if
		    end if
		    
		    c.Load( xNode )
		    c.ShowModal
		    
		    hasSaved = c.Saved
		    
		  End Select
		  
		  
		  if xNode <> Nil and hasSaved then
		    var Name as string = xNode.ValueOfNodeWithName("name")
		    if Name.Trim = "" then
		      Name = "[Description]"
		    end if
		    if Name.Contains("(Bonus Action)") then
		      name = name.Replace("(Bonus Action)", "").Trim
		    end if
		    
		    // Get updated xAttribute
		    if xNode.AttributeCount > 0 then
		      if IsAutoLevelFeature then
		        xAttribute = xNode.GetAttribute("optional")
		      else
		        xAttribute = xNode.GetAttribute("category")
		      end if
		    else
		      xAttribute = ""
		    end if
		    
		    
		    if IsAutoLevelFeature then
		      if lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 0 ) = "" then
		        var level as string = xNode.ToString.Match( "(\d+)(st|nd|rd|th) level", 1 )
		        
		        if level = "" and lstTraits.SelectedRowIndex > 0 then
		          level = lstTraits.CellValueAt( lstTraits.SelectedRowIndex-1, 0 )
		        end if
		        
		        if level <> "" then
		          lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 0 ) = Level
		        end if
		      end if
		      lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 1 ) = Name
		      'lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 2 ) = PageNr
		      lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 2 ) = xAttribute
		    else
		      lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 0 ) = Name
		      lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 1 ) = xAttribute
		    end if
		    if lstTraits.SelectedRowIndex > -1 and lstTraits.SelectedRowIndex <= lstTraits.LastRowIndex then
		      lstTraits.RowTagAt( lstTraits.SelectedRowIndex ) = xNode
		    end if
		  end if
		  
		  lstTraits.Invalidate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FeatureRemove()
		  if lstTraits.SelectedRowIndex > -1 and lstTraits.RowTagAt( lstTraits.SelectedRowIndex ) IsA XMLNode then
		    var lindex as Integer = lstTraits.SelectedRowIndex
		    var xNode as XMLNode = lstTraits.RowTagAt( lindex )
		    
		    mxFeaturesRoot.RemoveChild( xNode )
		    lstTraits.RemoveRowAt( lindex )
		    
		    if lindex > -1 and lindex <= lstTraits.LastRowIndex then
		      lstTraits.SelectedRowIndex = lindex
		    elseif lindex > lstTraits.LastRowIndex then
		      lstTraits.SelectedRowIndex = lstTraits.LastRowIndex
		    end if
		    
		  end if
		  
		  me.Invalidate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFeatures() As XMLNode()
		  var xNodes() as XMLNode
		  
		  if lstTraits.LastRowIndex > -1 then
		    for row as Integer = 0 to lstTraits.LastRowIndex
		      if lstTraits.RowTagAt( row ) IsA XMLNode then
		        xNodes.Add( lstTraits.RowTagAt( row ) )
		      else
		        Break
		      end if
		    next
		  end if
		  
		  Return xNodes
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ImportNode(s as String)
		  var xNode as XMLNode = s.ToXML
		  
		  if xNode <> Nil and xNode.ChildCount > 0 then
		    xNode.Name = me.FeatureType
		  end if
		  
		  me.FeatureAdd( xNode )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ImportNode(xNode as XMLNode)
		  'var xNode as XMLNode = TheNode
		  
		  if xNode <> Nil and xNode.ChildCount > 0 then
		    xNode.Name = me.FeatureType
		  end if
		  
		  me.FeatureAdd( xNode )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  lstTraits.DeleteAllRows
		  xFeaturesRoot.RemoveAllChildren
		  
		  lstTraits.Invalidate
		  me.Invalidate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAutoLevelCategories()
		  IsAutoLevelFeature = True
		  
		  lstTraits.ColumnCount = 3
		  lstTraits.ColumnWidths = "50,*,75"
		  lstTraits.InitialValue = "Level" + chr(9) + "Feature" + chr(9) + "Optional"
		  
		  lstTraits.ColumnAlignmentAt( 0 ) = Listbox.Alignments.Right
		  lstTraits.ColumnTypeAt( 0 ) = Listbox.CellTypes.TextField
		  
		  'lstTraits.ColumnAlignmentAt( 2 ) = Listbox.Alignments.Right
		  'lstTraits.ColumnTypeAt( 2 ) = Listbox.CellTypes.TextField
		  
		  lstTraits.ColumnAlignmentAt( 2 ) = Listbox.Alignments.Center
		  
		  for column as Integer = 0 to lstTraits.ColumnCount-1
		    lstTraits.HeaderType(column) = Listbox.HeaderTypes.NotSortable
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetCategories(TheCategories() as String)
		  
		  if TheCategories <> Nil and TheCategories.LastIndex > -1 then
		    lstTraits.ColumnWidths = "*, 75"
		    CategoryOptions = TheCategories
		  else
		    lstTraits.ColumnWidths = "*, 0"
		  end if
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event BuildTemplateMenu()
	#tag EndHook


	#tag Property, Flags = &h0
		CategoryOptions() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ContextMenu As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		FeatureType As String = "trait"
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return lblTraits.Text'.Left( lblName.Text.Length-1 )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  lblTraits.Text = Value' + ":"
			End Set
		#tag EndSetter
		FieldName As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		IsAutoLevelFeature As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mxFeaturesDoc As XMLDocument
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mxFeaturesRoot As XMLNode
	#tag EndProperty

	#tag Property, Flags = &h0
		Source As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TemplateMenu As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		UseMode As Mode
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mxFeaturesDoc = Nil then
			    mxFeaturesDoc = new XMLDocument
			  end if
			  Return mxFeaturesDoc
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mxFeaturesDoc = value
			End Set
		#tag EndSetter
		xFeaturesDoc As XMLDocument
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mxFeaturesRoot = Nil then
			    mxFeaturesRoot = xFeaturesDoc.AppendChild( xFeaturesDoc.CreateElement( "compendium" ) )
			  end if
			  
			  Return mxFeaturesRoot
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mxFeaturesRoot = value
			End Set
		#tag EndSetter
		xFeaturesRoot As XMLNode
	#tag EndComputedProperty


	#tag Constant, Name = kTypeAction, Type = String, Dynamic = False, Default = \"action", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeFeature, Type = String, Dynamic = False, Default = \"feature", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeLegendary, Type = String, Dynamic = False, Default = \"legendary", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeReaction, Type = String, Dynamic = False, Default = \"reaction", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeTrait, Type = String, Dynamic = False, Default = \"trait", Scope = Public
	#tag EndConstant


	#tag Enum, Name = Mode, Type = Integer, Flags = &h0
		BasicFeature
		  SimpleTrait
		CreatureFeature
	#tag EndEnum


#tag EndWindowCode

#tag Events lstTraits
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  if me.SelectedRowIndex <> row then
		    g.DrawAlternatingRows(row)
		  else
		    g.DrawingColor = CommonModule.SelectionColor
		    g.FillRect 0, 0, g.Width, g.Height
		  end if
		  
		  
		  if IsAutoLevelFeature and column = 0 and row > -1 and row <= me.LastIndex then
		    
		    Select case me.CellValueAt( row, 0 ).Val
		      
		    case 1, 8, 15
		      g.DrawingColor = &cFE2619
		    case 2, 9, 16
		      g.DrawingColor = &cFDA216
		    case 3, 10, 17
		      g.DrawingColor = &cFDFA14
		    case 4, 11, 18
		      g.DrawingColor = &c75D342
		    case 5, 12, 19
		      g.DrawingColor = &c00AEF0
		    case 6, 13, 20
		      g.DrawingColor = &c0972BC
		    case 7, 14
		      g.DrawingColor = &c673190
		      
		      
		    End Select
		    
		    g.FillRect 0, 0, 4, g.Height
		  end if
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  #if TargetMacOS then
		    ardeTraits.RemoveEnabled = (me.SelectedRowIndex > -1)
		    ardeTraits.EditEnabled = (me.SelectedRowIndex > -1)
		    ardeTraits.DuplicateEnabled = (me.SelectedRowIndex > -1)
		  #endif
		  
		  for column as Integer = 0 to me.ColumnCount-1
		    me.HeaderType(column) = Listbox.HeaderTypes.NotSortable
		  next
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  #if TargetMacOS then
		    ardeTraits.RemoveEnabled = (me.SelectedRowIndex > -1)
		    ardeTraits.EditEnabled = (me.SelectedRowIndex > -1)
		    ardeTraits.DuplicateEnabled = (me.SelectedRowIndex > -1)
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  FeatureEdit
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim AscKey as Integer = Asc( key )
		  
		  if Keyboard.AsyncCommandKey then
		    
		    Select case AscKey
		      
		    case 8', 127 // delete
		      FeatureRemove
		      Return True
		      
		    case 13 // Return
		      if lstTraits.SelectedRowIndex > -1 then
		        FeatureEdit
		      else
		        FeatureAdd
		      end if
		      Return True
		      
		    case 110 // n
		      FeatureAdd
		      Return True
		      
		    End Select
		    
		  else
		    
		    Select case AscKey
		      
		    case 13 // Return
		      if lstTraits.SelectedRowIndex > -1 then
		        FeatureEdit
		      else
		        FeatureAdd
		      end if
		      Return True
		      
		    End Select
		    
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  if ContextMenu <> Nil and me.SelectedRowIndex > -1 then
		    base.AddMenu ContextMenu
		    base.AddMenu new MenuItem( "-" )
		  end if
		  
		  base.AddMenu new MenuItem( "Add" )
		  if me.SelectedRowIndex > -1 then
		    base.AddMenu new MenuItem( "Edit" )
		    base.AddMenu new MenuItem( "Duplicate" )
		    base.AddMenu new MenuItem( "Remove" )
		    base.AddMenu new MenuItem( "-" )
		    
		    if me.RowTagAt( me.SelectedRowIndex ) IsA XMLNode then
		      var xNode as XMLNode = me.RowTagAt( me.SelectedRowIndex )
		      if xNode <> Nil then
		        base.AddMenu new MenuItem( "Copy """ + xNode.ValueOfNodeWithName("name") + """" )
		      end if
		    end if
		    
		  end if
		  
		  var c as new Clipboard
		  if c.Text.StartsWith("<") and c.Text.EndsWith(">") then
		    var xNode as XMLNode = c.Text.ToXML
		    
		    if xNode <> Nil and xNode.Name = FeatureType then
		      base.AddMenu new MenuItem( "Paste """ + xNode.ValueOfNodeWithName("name") + """" )
		    end if
		    
		  end if
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  if hitItem <> Nil then
		    
		    if hitItem.Tag IsA ccTraits then
		      var c as ccTraits = hitItem.Tag
		      
		      if lstTraits.SelectedRowIndex > -1 and lstTraits.RowTagAt( lstTraits.SelectedRowIndex ) IsA XMLNode then
		        var xNode as XMLNode = lstTraits.RowTagAt( lstTraits.SelectedRowIndex )
		        
		        c.FeatureAdd( xNode, True ) ' ImportNode( xNode.ToString ) '
		        
		        FeatureRemove '( lstTraits.SelectedRowIndex )
		        
		        Return True
		      end if
		      
		    else
		      
		      Select case hitItem.Text
		        
		      case "Add"
		        FeatureAdd
		        Return True
		        
		      case "Remove"
		        FeatureRemove
		        Return True
		        
		      case "Edit"
		        FeatureEdit
		        Return True
		        
		      case "Duplicate"
		        if lstTraits.SelectedRowIndex > -1 and lstTraits.RowTagAt( lstTraits.SelectedRowIndex ) IsA XMLNode then
		          var xNode as XMLNode = lstTraits.RowTagAt( lstTraits.SelectedRowIndex )
		          var xCopiedNode as XMLNode = xFeaturesRoot.AppendChildCopy( xNode )
		          
		          if IsAutoLevelFeature then
		            var Level as String = lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 0 )
		            'var PageNr as String = lstTraits.CellValueAt( lstTraits.SelectedRowIndex, 2 )
		            FeatureAdd( level, xNode )
		          else
		            FeatureAdd( xNode )
		          end if
		          
		        end if
		        Return True
		        
		      else
		        if hitItem.Text.StartsWith( "Copy" ) then
		          if lstTraits.SelectedRowIndex > -1 and lstTraits.RowTagAt( lstTraits.SelectedRowIndex ) IsA XMLNode then
		            var xNode as XMLNode = lstTraits.RowTagAt( lstTraits.SelectedRowIndex )
		            
		            var c as new Clipboard
		            c.Text = xNode.ToString
		          end if
		          
		          Return True
		          
		        elseif hitItem.Text.StartsWith( "Paste" ) then
		          var c as new Clipboard
		          if c.Text.StartsWith("<") and c.Text.EndsWith(">") then
		            var xNode as XMLNode = c.Text.ToXML
		            
		            if xNode <> Nil and xNode.Name = self.FeatureType then
		              if IsAutoLevelFeature then
		                FeatureAdd( "1", xNode, True )
		              else
		                FeatureAdd( xNode )
		              end if
		            else
		              Break
		            end if
		          end if
		          
		        end if
		        
		      End Select
		      
		      'Break
		    end if
		    
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function DragRow(drag As DragItem, row As Integer) As Boolean
		  
		  'if me.RowTagAt( row ) IsA XMLNode then
		  'var xNode as XMLNode = me.RowTagAt( row )
		  'drag.Text = xNode.ToString
		  'Return True
		  'end if
		End Function
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  
		  'if obj <> Nil and obj.Text <> "" then
		  '
		  'var alreadyExists as Boolean = False
		  'for row as Integer = 0 to lstTraits.LastRowIndex
		  'if lstTraits.RowTagAt( row ) IsA XMLNode then
		  'var xNode as XMLNode = lstTraits.RowTagAt( row )
		  'var yNode as XMLNode = obj.Text.ToXML
		  'yNode.Name = FeatureType
		  '
		  'var xString, yString as String
		  'xString = xNode.ToString.ReplaceAll("<text></text>", "<text/>")
		  'yString = yNode.ToString.ReplaceAll("<text></text>", "<text/>")
		  '
		  'if xNode <> Nil and xString = yString then
		  'alreadyExists = True
		  'Exit
		  'end if
		  'end if
		  'next
		  '
		  'if NOT alreadyExists then
		  'ImportNode( obj.Text )
		  'end if
		  'end if
		End Sub
	#tag EndEvent
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  
		  if IsAutoLevelFeature then
		    
		    Select case column
		      
		    case 0, 2
		      If Val(Me.CellValueAt(row1, column )) < Val(Me.CellValueAt(row2, column)) Then
		        result = -1
		      ElseIf Val(Me.CellValueAt(row1, column)) > Val(Me.CellValueAt(row2, column)) Then
		        result = 1
		      Else
		        result = 0
		      End If
		      Return True
		      
		    End Select
		    
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return False
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ardeTraits
	#tag Event
		Sub ActionAdd()
		  if Keyboard.AsyncAltKey then
		    FeatureCopy
		  else
		    FeatureAdd
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionDuplicate()
		  FeatureCopy
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionEdit()
		  FeatureEdit
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionRemove()
		  FeatureRemove
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
		Name="FeatureType"
		Visible=false
		Group="Behavior"
		InitialValue="trait"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FieldName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseMode"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Mode"
		EditorType="Enum"
		#tag EnumValues
			"0 - BasicFeature"
			"1 - SimpleTrait"
			"2 - CreatureFeature"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsAutoLevelFeature"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Source"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
