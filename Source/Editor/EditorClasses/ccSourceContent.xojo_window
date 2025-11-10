#tag Window
Begin ContainerControl ccSourceContent
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
   Height          =   150
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
   Width           =   640
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
      Text            =   "Sources:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin Listbox lstSources
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   True
      AllowRowReordering=   True
      Bold            =   False
      ColumnCount     =   3
      ColumnWidths    =   "*, 75, 100"
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
      Height          =   94
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Source name	Page nr.	Tag"
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
      Tooltip         =   "List of sources from which the material originates. Multiple sources will be comma separated, hence why you can't use commas in the sources' names."
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   478
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   BeginSegmented AddRemoveEditButton areSources
      AddEnabled      =   False
      EditEnabled     =   False
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   548
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
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   False
      Top             =   106
      Transparent     =   False
      Visible         =   True
      Width           =   72
   End
   Begin ComboBox cbSourcebox
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
      Left            =   162
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   106
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   374
   End
   Begin Label lblDescription
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   12.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Formatting: [Content Name] p. [page number] ([Tag]), avoid using commas in content name."
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   130
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   620
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AddSources(SourcesStr as String)
		  
		  // Normalize string
		  SourcesStr = SourcesStr.ReplaceAll( EndOfLine, " " ).ReplaceAll( chr(9), "" ).Trim
		  var multisources() as String = SourcesStr.SplitString(",")
		  
		  for each source as string in multisources
		    if source.Contains(" p. " ) then
		      var sourceName as string = source.NthField( " p. ", 1 ).Trim
		      var pageNr as String = source.Match( " p\. (\d+)", 1 )
		      var tag as String = source.NthField( " p. " + pageNr, 2 ).Trim
		      
		      lstSources.AddRow sourceName, pageNr, tag
		      
		      if cbSourcebox.IndexOfRowWithValue( sourceName ) = -1 then
		        cbSourcebox.AddRow sourceName
		      end if
		    else
		      var sourceName as String = source
		      var tag as String
		      if source.Contains("(") and source.Contains(")") then
		        sourceName = source.NthField( " (", 1 )
		        tag = source.Match( "(\(.*?\))", 0 )
		      end if
		      lstSources.AddRow sourceName, "", tag
		      
		      if cbSourcebox.IndexOfRowWithValue( Source ) = -1 then
		        cbSourcebox.AddRow source
		      end if
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSources() As String()
		  var Sources() as String
		  
		  if lstSources.LastRowIndex > -1 then
		    for row as Integer = 0 to lstSources.LastRowIndex
		      var FullName as string = lstSources.CellValueAt( row, 0 ).Trim
		      
		      
		      if lstSources.CellValueAt( row, 1 ).Trim <> "" then
		        FullName = FullName + " p. " + lstSources.CellValueAt( row, 1 ).Trim
		      end if
		      if lstSources.CellValueAt( row, 2 ).Trim <> "" then
		        FullName = FullName + " " + lstSources.CellValueAt( row, 2 ).Trim
		      end if
		      
		      Sources.Add FullName
		    next
		  end if
		  
		  Return Sources
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSourcesMerged() As String
		  Return StringFromArray( GetSources, ", " )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  lstSources.DeleteAllRows
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDefaultSources(defaultSources as String)
		  var sources() as String = defaultSources.SplitString(",")
		  
		  for each source as string in sources
		    if source.Contains(" p. ") then
		      source = source.NthField( " p. ", 1 )
		    end if
		    
		    if cbSourcebox.IndexOfItemWithTitle( Source ) = -1 then
		      cbSourcebox.AddRow source
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSources(SourcesStr as String)
		  lstSources.DeleteAllRows
		  
		  AddSources SourcesStr
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events lstSources
	#tag Event
		Sub Open()
		  me.ColumnAlignmentAt(1) = Listbox.Alignments.Right
		  
		  me.ColumnTypeAt(0) = Listbox.CellTypes.TextField
		  me.ColumnTypeAt(1) = Listbox.CellTypes.TextField
		  me.ColumnTypeAt(2) = Listbox.CellTypes.TextField
		  
		  #if TargetMacOS then
		    areSources.RemoveEnabled = me.SelectedRowIndex > -1
		    areSources.EditEnabled = me.SelectedRowIndex > -1
		  #endif
		End Sub
	#tag EndEvent
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
		    areSources.RemoveEnabled = me.SelectedRowIndex > -1
		    areSources.EditEnabled = me.SelectedRowIndex > -1
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  if lstSources.SelectedRowIndex > -1 then
		    if lstSources.CellValueAt( lstSources.SelectedRowIndex, 1 ) <> "" then
		      cbSourcebox.Text = Str( lstSources.CellValueAt( lstSources.SelectedRowIndex, 0 ).Trim + " p. " + lstSources.CellValueAt( lstSources.SelectedRowIndex, 1 ).Trim + " " + lstSources.CellValueAt( lstSources.SelectedRowIndex, 2 ).Trim ).Trim
		    else
		      cbSourcebox.Text = lstSources.CellValueAt( lstSources.SelectedRowIndex, 0 )
		    end if
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  if row > -1 then
		    me.CellValueAt( row, column ) = me.CellValueAt( row, column ).RemoveAll(",").Trim
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim AscKey as Integer = Asc( key )
		  
		  if ( TargetMacOS and Keyboard.AsyncCommandKey ) OR ( NOT TargetMacOS and Keyboard.AsyncControlKey ) then
		    
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
		      
		    case 30 // Up
		      me.CellValueAt( me.SelectedRowIndex, 1 ) = Str( Val( me.CellValueAt( me.SelectedRowIndex, 1 ) ) + 1 ) 
		    case 31 // Down
		      me.CellValueAt( me.SelectedRowIndex, 1 ) = Str( Val( me.CellValueAt( me.SelectedRowIndex, 1 ) ) - 1 ) 
		      
		    End Select
		    
		  else
		    
		    Select case AscKey
		      
		    case 13 // Return
		      if me.SelectedRowIndex > -1 then
		        me.EditCellAt( me.SelectedRowIndex, 0 )
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
#tag Events areSources
	#tag Event
		Sub ActionAdd()
		  AddSources cbSourcebox.Text
		  cbSourcebox.Text = ""
		  lstSources.SelectedRowIndex = lstSources.LastAddedRowIndex
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionEdit()
		  if lstSources.SelectedRowIndex > -1 then
		    var name, pgnr, tag as string
		    
		    
		    if cbSourcebox.Text.Contains(" p. ") then
		      name = cbSourcebox.Text.NthField( " p. ", 1 ).RemoveAll(",")
		      pgnr = cbSourcebox.Text.NthField( " p. ", 2 ).RemoveAll(",")
		      tag = pgnr.Match( "\((.*?)\)", 0 )
		      pgnr = pgnr.RemoveAll( tag ).Trim
		    else
		      name = cbSourcebox.Text.RemoveAll(",")
		    end if
		    lstSources.CellValueAt( lstSources.SelectedRowIndex, 0 ) = name
		    lstSources.CellValueAt( lstSources.SelectedRowIndex, 1 ) = pgnr
		    lstSources.CellValueAt( lstSources.SelectedRowIndex, 2 ) = tag
		    
		    cbSourcebox.Text = ""
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub ActionRemove()
		  if lstSources.SelectedRowIndex > -1 then
		    var lindex as Integer = lstSources.SelectedRowIndex
		    
		    lstSources.RemoveRowAt( lstSources.SelectedRowIndex )
		    
		    if lindex-1 > -1 then
		      lstSources.SelectedRowIndex = lindex-1
		    elseif lstSources.LastRowIndex > -1 then
		      lstSources.SelectedRowIndex = 0
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
