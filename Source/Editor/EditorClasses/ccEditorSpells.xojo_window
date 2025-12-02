#tag Window
Begin ContainerControl ccEditorSpells
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
   Height          =   100
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
   Begin BevelButton bvlCommonSpellNames
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   7
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   "≡"
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
      Left            =   618
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuStyle       =   0
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
   End
   Begin Label lblSpellListDescription
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   11.0
      FontUnit        =   0
      Height          =   54
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Comma separated list of spell names."
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   26
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin TextArea txtSpells
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   100
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   162
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Comma separated list of spell names for the class or subclass."
      Top             =   0
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   452
   End
   Begin Label lblSpells
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
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Spells:"
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   BeginSegmentedButton SegmentedButton btnSpellformatting
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   126
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
      Tooltip         =   "Automagically format spells and spell tables into a comma separated list. (Hold Alt for [2024] tags)"
      Top             =   65
      Transparent     =   False
      Visible         =   True
      Width           =   24
   End
End
#tag EndWindow

#tag WindowCode
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return lblSpells.Text
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  lblSpells.Text = Value
			End Set
		#tag EndSetter
		FieldName As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return txtSpells.Text
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  txtSpells.Text = value
			End Set
		#tag EndSetter
		Value As String
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events bvlCommonSpellNames
	#tag Event
		Sub Action()
		  
		  var basemenu as new MenuItem
		  
		  var miFormatSpells as new MenuItem("Format Spells")
		  miFormatSpells.Shortcut = "L"
		  
		  basemenu.AddMenu miFormatSpells
		  basemenu.AddMenu new MenuItem("Add '[2024]' Tag")
		  basemenu.AddMenu new MenuItem("-")
		  basemenu.AddMenu new MenuItem("Sort by name")
		  
		  basemenu.AddMenu new MenuItem("-")
		  basemenu.AppendBaseSpellLists
		  
		  var HitItem as MenuItem = basemenu.PopUp
		  
		  
		  
		  if HitItem <> Nil then
		    
		    Select case HitItem.Text
		      
		    case "Format spells"
		      txtSpells.Text = FormatSpelllist( txtSpells.Text )
		      
		    case "Add '[2024]' Tag"
		      var names() as String = SplitString( txtSpells.Text, "," )
		      for index as Integer = 0 to names.LastIndex
		        if NOT names(index).Contains("[2024]") then
		          names(index) = names(index) + " [2024]"
		        end if
		      next
		      txtSpells.Text = String.FromArray( names, ", " )
		      
		    case "Sort by Name"
		      var names() as String = SplitString( txtSpells.Text, "," )
		      names.Sort
		      txtSpells.Text = StringFromArray( names, ", " )
		      
		    else
		      if txtSpells.Text = "" then
		        txtSpells.Text = HitItem.Text
		      else
		        txtSpells.Text = txtSpells.Text + ", " + hitItem.Text
		      end if
		      
		      
		    End Select
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtSpells
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim AscKey as Integer = Asc( key )
		  
		  
		  if (TargetMacOS and Keyboard.AsyncCommandKey) OR (TargetWindows and Keyboard.AsyncControlKey) then
		    
		    Select case AscKey
		      
		      
		    case 108 ' L
		      txtSpells.Text = FormatSpelllist( txtSpells.Text )
		      
		      Return True
		      
		    End Select
		    
		  end if
		  
		  
		  Return False
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnSpellformatting
	#tag Event
		Sub Pressed(segmentIndex As Integer)
		  
		  
		  
		  txtSpells.Text = FormatSpelllist( txtSpells.Text )
		  
		  if Keyboard.AsyncAltKey then
		    var names() as String = SplitString( txtSpells.Text, "," )
		    for index as Integer = 0 to names.LastIndex
		      if NOT names(index).Contains("[2024]") then
		        names(index) = names(index) + " [2024]"
		      end if
		    next
		    txtSpells.Text = String.FromArray( names, ", " )
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
	#tag ViewProperty
		Name="FieldName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Value"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
