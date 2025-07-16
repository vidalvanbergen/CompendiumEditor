#tag Window
Begin ContainerControl ccFeat
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
   Height          =   732
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
   Width           =   700
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
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "The name of the feat."
      Top             =   20
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   624
   End
   Begin ccEditorTextField cPrerequisite
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      FieldName       =   "Prerequisite:"
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
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Any prerequisites for the feat."
      Top             =   54
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   660
   End
   Begin ccProficiencies cProficiencies
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
      Top             =   384
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   660
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
      Height          =   250
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
      Tooltip         =   "Feat description."
      Top             =   88
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   660
   End
   Begin ccSpecialTraits cSpecialTraits
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
      Top             =   418
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   660
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
      FieldName       =   "Source:"
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
      Tooltip         =   "The name of the source material and a page number this feat came from. (e.g. Player's Handbook p. 128)"
      Top             =   350
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   660
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
      Top             =   452
      Transparent     =   True
      Visible         =   True
      Width           =   660
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
      Left            =   656
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuStyle       =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Import from Clipboard"
      Top             =   20
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
		Function GetXMLNode() As XMLNode
		  
		  
		  var xFeat as XMLNode = xNode 'xRoot.AppendNewChild( "feat" )
		  
		  if xFeat = Nil then
		    Return Nil
		  end if
		  
		  // Clear old children
		  for each xChild as XMLNode in xFeat.Children
		    xFeat.RemoveChild( xChild )
		  next
		  
		  
		  // Name
		  xFeat.AppendSimpleChild( "name", cName.Value )
		  
		  // Prerequisite
		  if cPrerequisite.Value <> "" then
		    xFeat.AppendSimpleChild( "prerequisite", cPrerequisite.Value )
		  end if
		  
		  // Proficiency
		  if cProficiencies.Value <> "" then
		    xFeat.AppendSimpleChild( "proficiency", cProficiencies.Value )
		  end if
		  
		  // Description
		  SetDescription( xFeat, cDescription.Value, cSource.Value )
		  
		  // Special
		  if cSpecialTraits.Value <> "" then
		    xFeat.AppendSimpleChild( "special", cSpecialTraits.Value )
		  end if
		  
		  // Modifiers
		  var lst as Listbox = cModifiers.lstModifiers
		  
		  if lst.LastRowIndex > -1 then
		    for row as Integer = 0 to lst.LastRowIndex
		      var xModifier as XMLNode = xFeat.AppendNewChild( "modifier" )
		      
		      xModifier.SetAttribute( "category", lst.CellValueAt( row, 0 ).Lowercase )
		      xModifier.SetValue lst.CellValueAt( row, 1 ).Replace( " + Proficiency Bonus", " +%0" ).Replace( "+Proficiency Bonus", " +%0" )
		    next
		  end if
		  
		  
		  
		  Return xFeat
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadXML(s as String, xParent as XMLNode)
		  var xDoc as XMLDocument = xParent.OwnerDocument
		  var xRoot as XMLNode = xDoc.FirstChild
		  
		  var xNode as XMLNode = s.ToXML
		  
		  if xRoot <> Nil and xNode <> Nil then
		    xNode = xRoot.AppendChildCopy( xNode )
		  end if
		  
		  LoadXML( xNode, True )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadXML(TheNode as XMLNode, TemplateNode as Boolean = False)
		  me.Reset
		  
		  if NOT TemplateNode then
		    xNode = TheNode
		  end if
		  
		  
		  if TheNode <> Nil then
		    
		    var descriptionLines() as String
		    
		    for index as Integer = 0 to TheNode.ChildCount-1
		      var xProperty as XMLNode = TheNode.Child(index)
		      
		      var TheValue as String
		      if xProperty.FirstChild <> Nil then
		        TheValue = xProperty.FirstChild.Value
		      end if
		      
		      Select case xProperty.Name
		        
		      case "name"
		        cName.Value = TheValue
		        
		      case "prerequisite"
		        cPrerequisite.Value = TheValue
		        
		      case "text"
		        descriptionLines.Add TheValue
		        
		        'if cDescription.Value = "" then
		        'cDescription.Value = TheValue
		        'else // Consideration for multiple <text>
		        'if TheValue = "" then
		        'TheValue = EndOfLine
		        'end if
		        'cDescription.Value = cDescription.Value + EndOfLine + TheValue
		        'End if
		        
		      case "proficiency"
		        cProficiencies.Value = TheValue
		        
		        cProficiencies.Values = TheValue.Split(",")
		        for i as Integer = 0 to cProficiencies.Values.LastIndex
		          cProficiencies.Values(i) = cProficiencies.Values(i).Trim
		        next
		        cProficiencies.Tags = cProficiencies.Values
		        
		      case "special"
		        cSpecialTraits.Value = TheValue
		        
		        cSpecialTraits.Values = TheValue.Split(",")
		        for i as Integer = 0 to cSpecialTraits.Values.LastIndex
		          cSpecialTraits.Values(i) = cSpecialTraits.Values(i).Trim
		        next
		        cSpecialTraits.Tags = cSpecialTraits.Values
		        
		      case "modifier"
		        if TheValue.Contains("%0") then
		          TheValue = TheValue.Replace(" +%0", " + Proficiency Bonus")
		          TheValue = TheValue.Replace("+%0", " + Proficiency Bonus")
		        End if
		        
		        if xProperty.GetAttribute("category") <> "" then
		          
		          var category as String = xProperty.GetAttribute("category").Titlecase
		          if category = "Skills" then
		            category = "Skill"
		          end if
		          
		          cModifiers.addrow category, TheValue
		        else
		          cModifiers.addrow "Bonus", TheValue
		          Break
		        end if
		        
		      else
		        Break
		        
		      End Select
		      
		      
		    next
		    
		    cDescription.Value = String.FromArray( descriptionLines, EndOfLine )
		    
		    if cDescription.Value.Contains("Source:") then
		      cSource.Value = SourceFromDescription( cDescription.Value ).ReplaceAll( EndOfLine, " " ).ReplaceAll( chr(9), "" ).Trim
		      cDescription.Value = DescriptionWithoutSource( cDescription.Value )
		    end if
		    
		  end if // @END thenode <> Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  cName.Reset
		  cPrerequisite.Reset
		  cDescription.Value = ""
		  cProficiencies.Reset
		  cSpecialTraits.Reset
		  cSource.Reset
		  
		  cModifiers.Reset
		  xNode = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetData(TheNode as XMLNode, TheSource as String, PageNr as String = "")
		  var source as string
		  if PageNr <> "" then
		    source = TheSource.Trim + " p. " + PageNr
		  else
		    source = TheSource.Trim
		  end if
		  
		  LoadXML( TheNode )
		  
		  if cSource.Value = "" then
		    cSource.Value = Source
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SourcePageNr() As String
		  Return cSource.Value.Match(" p. (\d+)", 1)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		xNode As XMLNode
	#tag EndProperty


#tag EndWindowCode

#tag Events cName
	#tag Event
		Sub Open()
		  'me.FieldName = "Name:"
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cPrerequisite
	#tag Event
		Sub Open()
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cSource
	#tag Event
		Sub Open()
		  
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bvlClipboard
	#tag Event
		Sub Action()
		  var c as new Clipboard
		  
		  var Title as string
		  var Description as String
		  var prerequisite as string
		  
		  if c.Text <> "" then
		    
		    var lines() as string
		    Description = NormalizeLineEndings( c.Text )
		    lines = Description.Split( EndOfLine )
		    
		    
		    if lines.LastIndex > -1 then
		      
		      if lines(0).Length <= 50 then
		        Title = lines(0)
		        lines.RemoveAt(0)
		      end if
		      
		      if lines(0).StartsWith("Prerequisite:") or lines(0).StartsWith("Prerequisites:") then
		        prerequisite = lines(0).Replace("Prerequisite:","").Replace("Prerequisites:","").Trim
		        lines.RemoveAt(0)
		      end if
		      
		      Description = string.FromArray( lines, EndOfLine )
		    end if
		  end if
		  
		  cDescription.FormatParagraphs( Description, False )
		  cDescription.FormatLists( Description, false )
		  
		  Title = Title.Titlecase.ReplaceAll(" Of ", " of ").ReplaceAll(" The ", " the ").ReplaceAll( " A ", " a " ).ReplaceAll(" And ", " and ").ReplaceAll(" An ", " an ")
		  var isHomebrew as Boolean = cName.Value.Contains( "(HB)" )
		  if cName.Value.Contains( "Unnamed Feat" ) then
		    cName.Value = cName.Value.Replace("Unnamed Feat", Title)
		  elseif cName.Value.Contains( "featname" ) then
		    cName.Value = cName.Value.Replace("featname", Title)
		  else
		    cName.Value = Title
		  end if
		  if isHomebrew and NOT cName.Value.Contains("(HB)")then
		    cName.Value = cName.Value + " (HB)"
		  end if
		  
		  cPrerequisite.Value = prerequisite
		  cDescription.Value = Description
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
