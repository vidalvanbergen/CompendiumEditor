#tag Class
Protected Class ccProficienciesLanguages
Inherits ccEditorTextField
	#tag Event
		Sub Open()
		  me.FieldName = "Languages:"
		  me.SetMode ccEditorTextField.Mode.MultipleChoice
		  me.ReadOnly = False
		  'me.UseLowercase = True
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu NewMenuItem("Standard", Nil, False)
		  
		  me.BaseMenu.AddMenu new MenuItem("Common")
		  me.BaseMenu.AddMenu new MenuItem("Common Sign Language")
		  me.BaseMenu.AddMenu new MenuItem("Dwarvish")
		  me.BaseMenu.AddMenu new MenuItem("Elvish")
		  me.BaseMenu.AddMenu new MenuItem("Giant")
		  me.BaseMenu.AddMenu new MenuItem("Gnomish")
		  me.BaseMenu.AddMenu new MenuItem("Goblin")
		  me.BaseMenu.AddMenu new MenuItem("Halfling")
		  me.BaseMenu.AddMenu new MenuItem("Orc")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Thieves' Cant")
		  me.BaseMenu.AddMenu new MenuItem("Druidic")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Any 1 language")
		  me.BaseMenu.AddMenu new MenuItem("Any 2 languages")
		  
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu NewMenuItem("Exotic", Nil, False)
		  
		  me.BaseMenu.AddMenu new MenuItem("Abyssal")
		  me.BaseMenu.AddMenu new MenuItem("Celestial")
		  me.BaseMenu.AddMenu new MenuItem("Draconic")
		  me.BaseMenu.AddMenu new MenuItem("Deep Speech")
		  me.BaseMenu.AddMenu new MenuItem("Infernal")
		  me.BaseMenu.AddMenu new MenuItem("Primordial")
		  me.BaseMenu.AddMenu new MenuItem("Sylvan")
		  me.BaseMenu.AddMenu new MenuItem("Undercommon")
		  
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu NewMenuItem("Elemental", Nil, False)
		  
		  me.BaseMenu.AddMenu new MenuItem("Auran")
		  me.BaseMenu.AddMenu new MenuItem("Aquan")
		  me.BaseMenu.AddMenu new MenuItem("Ignan")
		  me.BaseMenu.AddMenu new MenuItem("Terran")
		  
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu NewMenuItem("Humblewood", Nil, False)
		  
		  me.BaseMenu.AddMenu new MenuItem("Birdfolk")
		  me.BaseMenu.AddMenu new MenuItem("Cervan")
		  me.BaseMenu.AddMenu new MenuItem("Hedge")
		  me.BaseMenu.AddMenu new MenuItem("Jerbeen")
		  me.BaseMenu.AddMenu new MenuItem("Mapach")
		  me.BaseMenu.AddMenu new MenuItem("Vulpin")
		  
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu NewMenuItem("Kobold Press", Nil, False)
		  
		  me.BaseMenu.AddMenu new MenuItem("Darakhul")
		  me.BaseMenu.AddMenu new MenuItem("Erina")
		  me.BaseMenu.AddMenu new MenuItem("Huginn's Speech")
		  me.BaseMenu.AddMenu new MenuItem("Huginn's Tongue")
		  me.BaseMenu.AddMenu new MenuItem("Ravenfolk")
		  me.BaseMenu.AddMenu new MenuItem("Umbral")
		  me.BaseMenu.AddMenu new MenuItem("Void Speech")
		  
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu NewMenuItem("Other", Nil, False)
		  
		  me.BaseMenu.AddMenu new MenuItem("Bothii")
		  me.BaseMenu.AddMenu new MenuItem("Bullywug")
		  me.BaseMenu.AddMenu new MenuItem("Daelkyr")
		  me.BaseMenu.AddMenu new MenuItem("Ergot")
		  me.BaseMenu.AddMenu new MenuItem("Gith")
		  me.BaseMenu.AddMenu new MenuItem("Hadozee")
		  me.BaseMenu.AddMenu new MenuItem("Kenderspeak")
		  me.BaseMenu.AddMenu new MenuItem("Leonin")
		  me.BaseMenu.AddMenu new MenuItem("Loxodon")
		  me.BaseMenu.AddMenu new MenuItem("Marquesian")
		  me.BaseMenu.AddMenu new MenuItem("Minotaur")
		  me.BaseMenu.AddMenu new MenuItem("Naush")
		  me.BaseMenu.AddMenu new MenuItem("Netherese")
		  me.BaseMenu.AddMenu new MenuItem("Ogre")
		  me.BaseMenu.AddMenu new MenuItem("Quori")
		  me.BaseMenu.AddMenu new MenuItem("Riedran")
		  me.BaseMenu.AddMenu new MenuItem("Terran")
		  me.BaseMenu.AddMenu new MenuItem("Thayan")
		  me.BaseMenu.AddMenu new MenuItem("Thri-Kreen")
		  me.BaseMenu.AddMenu new MenuItem("Vedalken")
		  me.BaseMenu.AddMenu new MenuItem("Yeti")
		  me.BaseMenu.AddMenu new MenuItem("Zemnian")
		  
		End Sub
	#tag EndEvent


	#tag ViewBehavior
		#tag ViewProperty
			Name="IsPrefixedNumber"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TagsForValue"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseLowercase"
			Visible=false
			Group="Behavior"
			InitialValue="False"
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
			Name="DoubleBuffer"
			Visible=true
			Group="Windows Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
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
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleOption"
			Visible=false
			Group="Behavior"
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
		#tag ViewProperty
			Name="Tag"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReadOnly"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
