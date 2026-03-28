#tag Window
Begin ContainerControl ccBackground
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
   Height          =   902
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
      FieldName       =   ""
      HasBackgroundColor=   False
      Height          =   24
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
      Tooltip         =   "The name of the background."
      Top             =   20
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   624
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
      Height          =   24
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
      Tooltip         =   "Saving throw and skill proficiencies. Enter names of abilities or skills separated by commas."
      Top             =   92
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   660
   End
   Begin ccTraits cFeatures
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      FeatureType     =   "trait"
      FieldName       =   ""
      HasBackgroundColor=   False
      Height          =   250
      Index           =   -2147483648
      InitialParent   =   ""
      IsAutoLevelFeature=   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      Source          =   ""
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Background traits. Multiple traits are allowed."
      Top             =   290
      Transparent     =   True
      UseMode         =   ""
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
      Height          =   240
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Modifiers. The category can be set to one of the following: bonus, ability score, ability modifier, saving throw, or skill. The value for this element is the modifier name, followed by its value."
      Top             =   552
      Transparent     =   True
      Visible         =   True
      Width           =   660
   End
   Begin ccEditorTextField cBaseBackground
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
      Height          =   24
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
      Tooltip         =   "The name of the background this one is based on."
      Top             =   56
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   660
   End
   Begin ccSourceContent ccSourceBox
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   128
      Transparent     =   True
      Visible         =   True
      Width           =   680
   End
   BeginSegmentedButton SegmentedButton btnTextformatting
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   656
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      Segments        =   "🪄\n\nFalse"
      SelectionStyle  =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   "Automagically format texts. (Hold Alt key to use indent instead empty lines between paragraphs)"
      Top             =   20
      Transparent     =   False
      Visible         =   True
      Width           =   24
   End
   Begin ccProficienciesTools cProficienciesTools
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
      Height          =   24
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
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Tool proficiencies."
      Top             =   822
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   624
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
      Index           =   4
      InitialParent   =   ""
      Italic          =   False
      Left            =   658
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuStyle       =   0
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   820
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   24
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
      Index           =   11
      InitialParent   =   ""
      Italic          =   False
      Left            =   658
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuStyle       =   0
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   856
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   24
   End
   Begin ccProficienciesLanguages cLanguagesKnown
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
      Height          =   24
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
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tag             =   ""
      TagsForValue    =   False
      Tooltip         =   "Condition immunities."
      Top             =   858
      Transparent     =   True
      UseLowercase    =   False
      Value           =   ""
      Visible         =   True
      Width           =   624
   End
   Begin Separator sepLine
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   4
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   804
      Transparent     =   False
      Visible         =   True
      Width           =   660
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Function GetXMLNode() As XMLNode
		  
		  var xSpecies as XMLNode = xNode 'xRoot.AppendNewChild( "feat" )
		  
		  if xSpecies = Nil then
		    Return Nil
		  end if
		  
		  // Clear old children
		  xSpecies.RemoveAllChildren
		  
		  // Name
		  xSpecies.AppendSimpleChild( "name", cName.Value.Trim )
		  
		  // Background Origin
		  if cBaseBackground.Value.Trim <> "" then
		    xSpecies.AppendSimpleChild( "ancestry", cBaseBackground.Value.Trim )
		  end if
		  
		  // Proficiencies
		  if cProficiencies.Value <> "" then
		    xSpecies.AppendSimpleChild( "proficiency", cProficiencies.Value.Trim )
		  else
		    xSpecies.AppendSimpleChild( "proficiency", Nil )
		  end if
		  
		  // Tools (Unofficial)
		  if cProficienciesTools.Value.Trim <> "" then
		    xSpecies.AppendSimpleChild( "tools", cProficienciesTools.Value.Trim )
		  end if
		  
		  // Languages (Unofficial)
		  if cLanguagesKnown.Value.Trim <> "" then
		    xSpecies.AppendSimpleChild( "languages", cLanguagesKnown.Value.Trim )
		  end if
		  
		  
		  // Traits
		  for row as Integer = 0 to cFeatures.lstTraits.LastIndex
		    if cFeatures.lstTraits.RowTagAt( row ) IsA XMLNode then
		      var xChild as XMLNode = cFeatures.lstTraits.RowTagAt( row )
		      
		      // Add page source to the first feature
		      if row = 0 and ccSourceBox.GetSources.LastIndex > -1  then 'and NOT xChild.ToString.Contains("Source:")then
		        AddSourceTo( xChild, ccSourceBox.GetSources )
		      end if
		      
		      xSpecies.AppendChildCopy( xChild )
		    end if
		  next
		  
		  
		  // Modifiers
		  var lst as Listbox = cModifiers.lstModifiers
		  
		  if lst.LastRowIndex > -1 then
		    for row as Integer = 0 to lst.LastRowIndex
		      var xModifier as XMLNode = xSpecies.AppendNewChild( "modifier" )
		      
		      xModifier.SetAttribute( "category", lst.CellValueAt( row, 0 ).Lowercase.Trim )
		      xModifier.SetValue( lst.CellValueAt( row, 1 ).Replace( " + Proficiency Bonus", " +%0" ).Replace( "+Proficiency Bonus", " +%0" ).Lowercase.Trim )
		    next
		  end if
		  
		  
		  Return xSpecies
		  
		  
		  Exception err as XMLException
		    MessageBox err.message
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
		  
		  
		  if xNode <> Nil then
		    
		    for index as Integer = 0 to TheNode.ChildCount-1
		      var xChild as XMLNode = TheNode.Child(index)
		      
		      if xChild <> Nil then
		        
		        var xValue as string
		        if xChild.FirstChild <> Nil then
		          xValue = xChild.FirstChild.Value
		        end if
		        
		        
		        Select case xChild.Name
		          
		        case "name"
		          cName.Value = xValue
		          
		        case "ancestry"
		          cBaseBackground.Value = xValue
		          
		        case "proficiency"
		          cProficiencies.Value = xValue
		          cProficiencies.Values = xValue.SplitString(",")
		          cProficiencies.Tags = cProficiencies.Values
		          
		        case "tools"
		          cProficienciesTools.Value = xValue
		          cProficienciesTools.Values = xValue.SplitString(",")
		          cProficienciesTools.Tags = cProficienciesTools.Values
		          
		        case "languages"
		          cLanguagesKnown.Value = xValue
		          cLanguagesKnown.Values = xValue.SplitString(",")
		          cLanguagesKnown.Tags = cLanguagesKnown.Values
		          
		        case "trait"
		          cFeatures.FeatureAdd( xChild )
		          
		          var description as String = xChild.ToString
		          if description.Contains("source:") then
		            ccSourceBox.SetSources( SourceFrom( xChild ) )
		          end if
		          
		        case "modifier"
		          if xChild.GetAttribute("category") <> "" then
		            cModifiers.addrow xChild.GetAttribute("category").Titlecase, xValue
		          else
		            cModifiers.addrow "Bonus", xValue
		            Break
		          end if
		          
		        else
		          'Break
		          
		        End Select
		        
		      end if // xchild <> Nil
		      
		    next
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  cName.Reset
		  cBaseBackground.Reset
		  cProficiencies.Reset
		  cFeatures.Reset
		  cModifiers.Reset
		  ccSourceBox.Reset
		  xNode = Nil
		  
		  cProficienciesTools.Reset
		  cLanguagesKnown.Reset
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetData(TheNode as XMLNode, TheSource as String, PageNr as String = "")
		  var Source as String
		  if PageNr <> "" then
		    Source = TheSource.Trim + " p. " + PageNr
		  else
		    Source = TheSource.Trim
		  end if
		  
		  LoadXML( TheNode )
		  
		  // set source for newly added item
		  if ccSourceBox.GetSources.LastIndex = -1 then
		    ccSourceBox.SetSources( Source )
		  end if
		  
		  
		  
		  'cFeatures.SetCommonNames( Array( "", "Description", "Specialty", "Suggested Characteristics" ) )
		  var baseMenu as new MenuItem
		  baseMenu.Name = "Templates"
		  
		  baseMenu.Append new MenuItem( "Description" ) ', "template:" + "Source:" + chr(9) + cSource.Value )
		  baseMenu.Append new MenuItem( "Feature: " )
		  baseMenu.Append new MenuItem( "Specialty" )
		  baseMenu.Append new MenuItem( "Suggested Characteristics", "template:" + baseCharacteristics )
		  
		  cFeatures.TemplateMenu = baseMenu
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SourcePageNr() As String
		  
		  var sources() as String = ccSourceBox.GetSources
		  if sources.LastIndex > -1 then
		    Return sources(0).Match(" p\. (\d+)", 1)
		  end if
		  
		  Return ""
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		xNode As XMLNode
	#tag EndProperty


#tag EndWindowCode

#tag Events cName
	#tag Event
		Sub Open()
		  me.FieldName = "Name:"
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cFeatures
	#tag Event
		Sub Open()
		  me.FieldName = "Features:"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cBaseBackground
	#tag Event
		Sub Open()
		  me.FieldName = "Origin Background:"
		  me.SetMode ccEditorTextField.Mode.Textfield
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnTextformatting
	#tag Event
		Sub Pressed(segmentIndex As Integer)
		  cName.Value = SmartTitleCase( cName.Value )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bvlUnofficialInfo
	#tag Event
		Sub Action(index as Integer)
		  msgUnofficialFeature
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
