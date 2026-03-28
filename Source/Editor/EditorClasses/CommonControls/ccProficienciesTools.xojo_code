#tag Class
Protected Class ccProficienciesTools
Inherits ccEditorTextField
	#tag Event
		Sub Open()
		  me.FieldName = "Tool Proficiencies:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = False
		  
		  me.BaseMenu.AddMenu new MenuItem( "None", "" )
		  me.BaseMenu.AddMenu new MenuItem( "-" )
		  me.BaseMenu.AddMenu NewMenuItem( "Artisan's Tools", Nil, False )
		  me.BaseMenu.AddMenu new MenuItem( "Artisan's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Alchemist's Supplies" )
		  me.BaseMenu.AddMenu new MenuItem( "Brewer's Supplies" )
		  me.BaseMenu.AddMenu new MenuItem( "Calligrapher's Supplies" )
		  me.BaseMenu.AddMenu new MenuItem( "Carpenter's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Cartographer's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Cobbler's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Cook's Utensils" )
		  me.BaseMenu.AddMenu new MenuItem( "Glassblower's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Jeweler's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Leatherworker's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Mason's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Painter's Supplies" )
		  me.BaseMenu.AddMenu new MenuItem( "Potter's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Smith's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Tinker's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Weaver's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Woodcarver's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "-" )
		  me.BaseMenu.AddMenu NewMenuItem( "Miscellaneous", Nil, False )
		  me.BaseMenu.AddMenu new MenuItem( "Disguise Kit" )
		  me.BaseMenu.AddMenu new MenuItem( "Forgery Kit" )
		  me.BaseMenu.AddMenu new MenuItem( "Herbalism Kit" )
		  me.BaseMenu.AddMenu new MenuItem( "Navigator's Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "Poisoner's Kit" )
		  me.BaseMenu.AddMenu new MenuItem( "Thieves' Tools" )
		  me.BaseMenu.AddMenu new MenuItem( "-" )
		  me.BaseMenu.AddMenu NewMenuItem( "Gaming Set", Nil, False )
		  me.BaseMenu.AddMenu new MenuItem( "Gaming Set" )
		  me.BaseMenu.AddMenu new MenuItem( "Dice Set" )
		  me.BaseMenu.AddMenu new MenuItem( "Dragonchess Set" )
		  me.BaseMenu.AddMenu new MenuItem( "Playing Card Set" )
		  me.BaseMenu.AddMenu new MenuItem( "Three-Dragon Ante Set" )
		  me.BaseMenu.AddMenu new MenuItem( "-" )
		  me.BaseMenu.AddMenu NewMenuItem( "Musical Instruments", Nil, False )
		  me.BaseMenu.AddMenu new MenuItem( "Musical Instrument" )
		  me.BaseMenu.AddMenu new MenuItem( "Bagpipes" )
		  me.BaseMenu.AddMenu new MenuItem( "Drum" )
		  me.BaseMenu.AddMenu new MenuItem( "Dulcimer" )
		  me.BaseMenu.AddMenu new MenuItem( "Flute" )
		  me.BaseMenu.AddMenu new MenuItem( "Lute" )
		  me.BaseMenu.AddMenu new MenuItem( "Lyre" )
		  me.BaseMenu.AddMenu new MenuItem( "Horn" )
		  me.BaseMenu.AddMenu new MenuItem( "Pan FLute" )
		  me.BaseMenu.AddMenu new MenuItem( "Shawm" )
		  me.BaseMenu.AddMenu new MenuItem( "Viol" )
		  me.BaseMenu.AddMenu new MenuItem( "-" )
		  me.BaseMenu.AddMenu NewMenuItem( "Vehicles", Nil, False )
		  me.BaseMenu.AddMenu new MenuItem( "Vehicle (Air)" )
		  me.BaseMenu.AddMenu new MenuItem( "Vehicle (Land)" )
		  me.BaseMenu.AddMenu new MenuItem( "Vehicle (Water)" )
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
