#tag Window
Begin WindowPro wndCompendiumBuilder
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   3
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   600
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   300
   MinimumWidth    =   400
   Resizeable      =   True
   Title           =   "Compendium Builder"
   Type            =   0
   Visible         =   True
   Width           =   500
   Begin DNDToolbar cvsToolbar
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   52
      Index           =   -2147483648
      InitialParent   =   ""
      IsDeactivated   =   False
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
      Width           =   500
      Begin CanvasButton cvsBtnExport
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   32
         iconColor       =   &cFFFFFF00
         Image           =   650745855
         Index           =   -2147483648
         InitialParent   =   "cvsToolbar"
         IsSelected      =   True
         Left            =   448
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Pressed         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Template        =   True
         Tooltip         =   "Export Compiled Compendium"
         Top             =   10
         Transparent     =   True
         useCustomColor  =   True
         Visible         =   True
         Width           =   32
      End
   End
   Begin ListboxPro lstSources
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   True
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   4
      ColumnWidths    =   "*,0,0,0"
      DefaultRowHeight=   56
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   484
      IgnoreChange    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      IsFocused       =   False
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaxWidth        =   600
      MinWidth        =   200
      PrefName        =   ""
      RequiresSelection=   False
      Resizable       =   False
      RestoreOnChange =   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   96
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   460
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
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Select which sources you want to compile into a compendium."
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   64
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   460
   End
   Begin DesktopButton btnClose
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -62
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  if IsDarkMode then
		    g.DrawTiledImage PHBstyletilingbackgrounddark, self.Width, self.Height'-56
		  else
		    g.DrawTiledImage PHBstyletilingbackgroundlight, self.Width, self.Height'-56
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub Settings()
		  me.TitlebarAppearsTransparent = True
		  me.TitleVisible = False
		  me.FullSizeContentView = True
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function CheckboxStateForCores(Cores() as SourceCore) As DesktopCheckBox.VisualStates
		  var containsChecked, containsUnchecked as Boolean = False
		  
		  for each core as SourceCore in cores
		    var isChecked as Boolean = core.Include
		    if containsChecked = False and isChecked then
		      containsChecked = True
		      
		    elseif containsUnchecked = False and NOT isChecked then
		      containsUnchecked = True
		      
		    end if
		  next
		  
		  if containsChecked and containsUnchecked then
		    Return DesktopCheckBox.VisualStates.Indeterminate
		  elseif containsChecked and NOT containsUnchecked then
		    Return DesktopCheckBox.VisualStates.Checked
		  elseif NOT containsChecked and containsUnchecked then
		    Return DesktopCheckBox.VisualStates.Unchecked
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CoresForCategory(currentCategory as String, SourcePath as String) As SourceCore()
		  
		  var sourceFolder as new FolderItem( sourcePath, FolderItem.PathModes.Native )
		  
		  var categoryCores() as SourceCore
		  
		  for each core as SourceCore in CollectedCores
		    var category as String = core.SourceInfo.Lookup( "category", "Uncategorized " + sourceFolder.Name )
		    var parentFolder as FolderItem = core.ParentFolder
		    
		    var parentPath as String = parentFolder.NativePath
		    if NOT parentPath.EndsWith(".xml") then
		      parentPath = parentPath + "/"
		    end if
		    
		    if category = currentCategory and parentPath.StartsWith( sourcePath ) then
		      categoryCores.Add core
		    end if
		    
		  next
		  
		  Return categoryCores
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FindXMLFiles(Parent as FolderItem, ByRef XMLFiles() as Folderitem)
		  
		  
		  for each item as FolderItem in Parent.Children
		    
		    if item <> Nil and item.Visible and item.IsReadable then
		      if item.IsFolder then
		        FindXMLFiles( item, XMLFiles )
		      elseif item.Name.EndsWith(".xml") and NOT item.Name.Contains("source") and NOT item.name.Contains("template") and not item.NativePath.Contains("#") then
		        XMLFiles.Add item
		      end if
		    end if
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadList()
		  var t as new TimeFunction( "CompendiumBuilder.LoadList()" )
		  
		  lstSources.RemoveAllRows
		  
		  // Get Sources
		  var sourceFolders() as String = CommonModule.GetSourceFolderPaths
		  
		  
		  
		  
		  var jDictionary as new JSONItem
		  for each sourcePath as String in sourceFolders
		    if NOT sourcePath.EndsWith("/") then
		      sourcePath = sourcePath + "/"
		    end if
		    var source as FolderItem = new FolderItem( sourcePath, FolderItem.PathTypeNative )
		    'var sourcePath as string = source.NativePath + "/"
		    
		    
		    var parentFolders() as FolderItem, parentfolderPaths() as String
		    
		    // add source folder if applicable
		    var parentSourceCore as new SourceCore( source )
		    if parentSourceCore.XMLFiles <> Nil and parentSourceCore.XMLFiles.Count > 0 then
		      parentfolderPaths.Add source.NativePath
		      parentfolders.Add source
		    end if
		    
		    // XML Files
		    var xmlFiles() as FolderItem
		    FindXMLFiles( source, xmlFiles )
		    
		    // parent Folders
		    for each file as FolderItem in xmlFiles
		      if NOT parentfolderPaths.Contains( file.Parent.NativePath ) then
		        parentfolderPaths.Add file.Parent.NativePath
		        parentfolders.Add file.Parent
		      end if
		    next
		    
		    
		    
		    // Add information
		    var cores() as SourceCore
		    var CoreRulebooks(), Supplements(), UnearthedArcana(), Homebrew(), OtherCategories(), Uncategorized() as String
		    
		    for each folderparent as FolderItem in parentfolders
		      var core as new SourceCore( folderparent )
		      cores.Add core
		      
		      var category as String = core.SourceInfo.Lookup( "category", "Uncategorized " + source.Name )
		      
		      if category.Contains( "Homebrew" ) then
		        if NOT Homebrew.Contains( category ) then
		          Homebrew.Add category
		        end if
		        
		      elseif category.Contains( "Unearthed Arcana" ) then
		        if NOT UnearthedArcana.Contains( category ) then
		          UnearthedArcana.Add category
		        end if
		        
		      elseif category.Contains("supplement") then
		        if NOT Supplements.Contains( category ) then
		          Supplements.Add category
		        end if
		        
		      elseif category.Contains( "core" ) then
		        if NOT CoreRulebooks.Contains( category ) then
		          CoreRulebooks.Add category
		        end if
		        
		      elseif category.Contains( "Uncategorized" ) then
		        if NOT Uncategorized.Contains( category ) then
		          Uncategorized.Add category
		        end if
		        
		      else
		        if NOT OtherCategories.Contains( category ) then
		          OtherCategories.Add category
		        end if
		        
		        
		      end if
		      
		      'var name, pubdate, publisher, category as String
		      'name = core.SourceInfo.Lookup( "name", folderparent.Name )
		      'pubdate = core.SourceInfo.Lookup( "pubdate", "" )
		      'publisher = core.SourceInfo.Lookup( "publisher", "" )
		      'category = core.SourceInfo.Lookup( "category", "" )
		      
		      'cores.Add core
		      'lstSources.AddRow name, category, publisher, pubdate
		      'lstSources.RowTagAt( lstSources.LastAddedRowIndex ) = core
		    next
		    
		    
		    // sort by publishers
		    var publishers() as String
		    for each core as SourceCore in cores
		      publishers.Add core.SourceInfo.Lookup("publisher", "").StringValue
		    next
		    publishers.SortWith( cores )
		    
		    // sort by pubdates
		    var PubDates() as String
		    for each core as SourceCore in cores
		      PubDates.Add core.SourceInfo.Lookup("pubdate", "").StringValue
		    next
		    PubDates.SortWith( cores )
		    
		    // Save sorted cores
		    'CollectedCores = cores
		    for each core as SourceCore in cores
		      CollectedCores.Add core
		    next
		    
		    // Sort by Categories
		    'for each core as SourceCore in cores
		    '
		    '
		    'next
		    
		    var unifiedCategories() as String
		    
		    CoreRulebooks.Sort
		    Supplements.Sort
		    OtherCategories.Sort
		    Homebrew.Sort
		    UnearthedArcana.Sort
		    Uncategorized.Sort
		    
		    for each category as String in CoreRulebooks
		      unifiedCategories.Add category
		    next
		    
		    for each category as String in Supplements
		      unifiedCategories.Add category
		    next
		    
		    for each category as String in OtherCategories
		      unifiedCategories.Add category
		    next
		    
		    for each category as String in Homebrew
		      unifiedCategories.Add category
		    next
		    
		    for each category as String in UnearthedArcana
		      unifiedCategories.Add category
		    next
		    
		    for each category as String in Uncategorized
		      unifiedCategories.Add category
		    next
		    
		    
		    // Add to list
		    for each category as string in unifiedCategories
		      lstSources.AddExpandableRow category
		      lstSources.RowTagAt( lstSources.LastAddedRowIndex ) = sourcePath
		      
		      'for each core as SourceCore in cores
		      'if core.SourceInfo.Lookup("category", "Uncategorized") = category then
		      'lstSources.AddRow core.SourceInfo.Lookup( "name", core.ParentFolder.Name ), core.SourceInfo.Lookup("category", "Uncategorized"), core.SourceInfo.Lookup("publisher", "")
		      'lstSources.RowTagAt( lstSources.LastAddedRowIndex ) = core
		      'end if
		      'next
		    next
		    
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CollectedCores() As SourceCore
	#tag EndProperty


#tag EndWindowCode

#tag Events cvsBtnExport
	#tag Event
		Sub Action()
		  var TheCompendium as new Compendium
		  
		  var addedXMLFile as Boolean = False
		  for each core as SourceCore in CollectedCores
		    if core.Include and core.XMLFiles <> Nil and core.XMLFiles.LastIndex > -1 then
		      
		      for each file as FolderItem in core.XMLFiles
		        addedXMLFile = True
		        TheCompendium.LoadXMLFile( file )
		      next
		      
		    end if
		  next
		  
		  
		  'for row as Integer = 0 to lstSources.LastRowIndex
		  'if lstSources.CellCheckBoxValueAt( row, 0 ) = True and lstSources.RowTagAt( row ) IsA SourceCore then
		  'var core as SourceCore = lstSources.RowTagAt( row )
		  '
		  'if core.XMLFiles <> Nil and core.XMLFiles.LastIndex > -1 then
		  'for each file as FolderItem in core.XMLFiles
		  '
		  'TheCompendium.LoadXMLFile( file )
		  '
		  'next
		  'end if
		  '
		  '
		  'end if
		  '
		  '
		  'next
		  
		  if addedXMLFile then
		    TheCompendium.Save
		  else
		    MessageBox "Select sources to compile into a compendium."
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstSources
	#tag Event
		Sub Openening()
		  me.ColumnTypeAt(0) = DesktopListBox.CellTypes.CheckBox
		  
		  LoadList
		End Sub
	#tag EndEvent
	#tag Event
		Function PaintCellBackground(g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  
		  if NOT me.RowSelectedAt( row ) then
		    
		    if row mod 2 = 0 then
		      if IsDarkMode then
		        g.ForeColor = RowAlternatingDarkModeColorLight '&c0C1024
		      else
		        g.ForeColor = RowAlternatingLightModeColorLight '&cE6E0C6
		      end if
		    else
		      if IsDarkMode then
		        g.ForeColor = RowAlternatingDarkModeColorDark '&c090A1A
		      else
		        g.ForeColor = RowAlternatingLightModeColorDark '&cF1ECD9
		      end if
		    end if
		    
		    'g.DrawAlternatingRows( row )
		    
		  else
		    
		    g.ForeColor = SelectionColor '&c7F1C14
		  end if
		  
		  g.FillRectangle 0, 0, g.Width, g.Height
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function PaintCellText(g as Graphics, row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  
		  if row > -1 and row <= me.LastRowIndex and column = 0 then
		    
		    // Fetch image
		    var image as Picture
		    if me.RowTagAt( row ) IsA SourceCore then
		      var source as SourceCore = me.RowTagAt( row )
		      
		      if me.RowHeight <= 64 and source.CoverImageThumbnail <> Nil then
		        image = source.CoverImageThumbnail
		      elseif source.CoverImageMedium <> Nil then
		        image = source.CoverImageMedium
		      else
		        // Use default foldericon
		      end if
		    end if
		    
		    // Fetch data
		    var name, publisher as String
		    name = me.CellTextAt( row, 0 )
		    if me.CellTextAt(row, 0) <> "" then
		      name = me.CellTextAt( row, 0 ) 'source.SourceInfo.Lookup("name", "")
		    end if
		    publisher = me.CellTextAt( row, 1 ) 'source.SourceInfo.Lookup("publisher", "")
		    
		    var padding as Integer = 2
		    if me.DefaultRowHeight >= 28 then
		      padding = 4
		    end if
		    
		    // Draw Cover
		    if image <> Nil then
		      Dim Factor as Double = min( (g.Height-(padding*4)) / image.Width, (g.Height-(padding*2)) / image.Height )
		      
		      Dim NewWidth as Double = image.Width * Factor
		      Dim NewHeight as Double = image.Height * Factor
		      
		      g.DrawPicture image, padding, (g.Height/2) - (NewHeight/2), NewWidth, NewHeight, 0, 0, image.Width, image.Height
		      
		      g.forecolor = HeaderStartColor '&cB2271C
		      g.DrawRectangle padding-1, (g.Height/2) - (NewHeight/2) - 1, NewWidth + 2, NewHeight + 2
		      
		      // Draw Folder
		    else
		      var folderIcon as Picture = foldericonwhite
		      if me.RowDepthAt( row ) > 0 then
		        folderIcon = foldericonred
		      end if
		      
		      Dim Factor as Double = min( (g.Height-(padding*4)) / folderIcon.Width, (g.Height-(padding*2)) / folderIcon.Height )
		      
		      Dim NewWidth as Double = foldericonred.Width * Factor
		      Dim NewHeight as Double = foldericonred.Height * Factor
		      
		      g.DrawPicture folderIcon, padding, (g.Height/2) - (NewHeight/2), NewWidth, NewHeight, 0, 0, folderIcon.Width, folderIcon.Height
		      
		    end if
		    
		    
		    // Draw Name & Publisher
		    g.ForeColor = color.TextColor
		    if me.RowSelectedAt( row ) then
		      g.ForeColor = &cFFFFFF
		    end if
		    
		    
		    if publisher = "" then
		      g.DrawText name, me.RowHeight, g.FontAscent + (g.Height / 2) - (g.TextHeight / 2)
		    else
		      g.DrawText name, me.RowHeight, g.FontAscent + (g.Height / 2) - (g.TextHeight) - padding
		      
		      
		      if me.RowSelectedAt(row) or IsDarkMode then
		        g.ForeColor = &cFFFFFF80 'HSL( 0, 0, 100, 50 )
		      else
		        g.ForeColor = &C00000080 'HSL( 0, 0, 0, 50 )
		      end if
		      
		      g.TextSize = 12
		      g.DrawText publisher, me.RowHeight, g.FontAscent + (g.Height / 2) + padding' - padding' - (g.TextHeight)
		      
		      
		    end if
		    
		    Return True
		  end if
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub RowExpanded(row As Integer)
		  if me.RowTagAt( row ).StringValue <> "" then
		    var categoryCores() as SourceCore = CoresForCategory( me.CellTextAt( row, 0 ), me.RowTagAt( row ).StringValue )
		    
		    for each core as SourceCore in categoryCores
		      me.AddRow core.SourceInfo.Lookup( "name", core.ParentFolder.Name ), core.SourceInfo.Lookup("publisher", ""), core.SourceInfo.Lookup("pubdate", "")
		      me.RowTagAt( me.LastAddedRowIndex ) = core
		      me.CellCheckBoxValueAt( me.LastAddedRowIndex, 0 ) = core.Include
		    next
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if me.RowDepthAt( row ) = 0 then
		    var isChecked as Boolean = me.CellCheckBoxValueAt( row, 0 )
		    
		    var categoryCores() as SourceCore = CoresForCategory( me.CellTextAt( row, 0 ), me.RowTagAt( row ).StringValue )
		    for each core as SourceCore in categoryCores
		      core.Include = isChecked
		    next
		    
		    if me.RowExpandedAt( row ) then
		      for index as Integer = row+1 to me.LastRowIndex
		        if me.RowDepthAt(index) = 1 then
		          
		          var core as SourceCore = me.RowTagAt( index )
		          core.Include = me.CellCheckBoxValueAt( row, 0 )
		          me.CellCheckBoxValueAt( index, 0 ) = isChecked
		          
		        else
		          Exit
		        end if
		        
		        
		      next
		    end if
		    
		    // folderparent
		  elseif me.RowDepthAt( row ) = 1 then
		    var core as SourceCore = me.RowTagAt( row )
		    core.Include = me.CellCheckBoxValueAt( row, 0 )
		    
		    var categoryIndex as Integer
		    for index as Integer = row DownTo 0
		      if me.RowDepthAt( index ) = me.RowDepthAt( row )-1 then
		        categoryIndex = index
		        Exit
		      end if
		    next
		    
		    var categoryCores() as SourceCore = CoresForCategory( lstSources.CellTextAt( categoryIndex, 0 ), lstSources.RowTagAt( categoryIndex ).StringValue )
		    
		    me.CellCheckBoxStateAt( categoryIndex, 0 ) =  CheckboxStateForCores( categoryCores )
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  if me.SelectedRowIndex > -1 and me.RowTagAt( me.SelectedRowIndex ) IsA SourceCore then
		    var core as SourceCore = me.RowTagAt( me.SelectedRowIndex )
		    
		    if core <> Nil and core.ParentFolder <> Nil and core.ParentFolder.Exists then
		      
		      base.AddMenu new MenuItem( "Reveal in Finder", core.ParentFolder )
		      Return True
		      
		    end if
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  if selectedItem <> Nil then
		    
		    Select case selectedItem.Text
		      
		    case "Reveal in Finder", "Reveal in Explorer"
		      if selectedItem.Tag IsA FolderItem then
		        var TheFolder as FolderItem = selectedItem.Tag
		        
		        if TheFolder <> Nil and TheFolder.Exists then
		          TheFolder.Launch
		        end if
		      end if
		      
		      Return True
		      
		    End Select
		    
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnClose
	#tag Event
		Sub Pressed()
		  self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
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
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
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
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
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
		Name="MenuBarVisible"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
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
#tag EndViewBehavior
