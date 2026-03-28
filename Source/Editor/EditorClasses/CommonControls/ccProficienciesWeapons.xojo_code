#tag Class
Protected Class ccProficienciesWeapons
Inherits ccEditorTextField
	#tag Event
		Sub Open()
		  me.FieldName = "Weapon Proficiencies:"
		  me.SetMode( ccEditorTextField.Mode.MultipleChoice )
		  me.ReadOnly = False
		  
		  me.BaseMenu.AddMenu new MenuItem("None", "")
		  me.BaseMenu.AddMenu new MenuItem("-")
		  me.BaseMenu.AddMenu new MenuItem("Simple Weapons")
		  me.BaseMenu.AddMenu new MenuItem("Martial Weapons")
		  me.BaseMenu.AddMenu new MenuItem("Firearms")
		  // Weapons
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Battleaxe" )
		  me.BaseMenu.Append new MenuItem( "Club" )
		  me.BaseMenu.Append new MenuItem( "Dagger" )
		  me.BaseMenu.Append new MenuItem( "Double-Bladed Scimitar" )
		  me.BaseMenu.Append new MenuItem( "Flail" )
		  me.BaseMenu.Append new MenuItem( "Glaive" )
		  me.BaseMenu.Append new MenuItem( "Greataxe" )
		  me.BaseMenu.Append new MenuItem( "Greatclub" )
		  me.BaseMenu.Append new MenuItem( "Greatsword" )
		  me.BaseMenu.Append new MenuItem( "Halberd" )
		  me.BaseMenu.Append new MenuItem( "Handaxe" )
		  me.BaseMenu.Append new MenuItem( "Hooked Shortspear" )
		  me.BaseMenu.Append new MenuItem( "Hoopak" )
		  me.BaseMenu.Append new MenuItem( "Javelin" )
		  me.BaseMenu.Append new MenuItem( "Lance" )
		  me.BaseMenu.Append new MenuItem( "Light Hammer" )
		  me.BaseMenu.Append new MenuItem( "Longsword" )
		  me.BaseMenu.Append new MenuItem( "Mace" )
		  me.BaseMenu.Append new MenuItem( "Maul" )
		  me.BaseMenu.Append new MenuItem( "Morningstar" )
		  me.BaseMenu.Append new MenuItem( "Pike" )
		  me.BaseMenu.Append new MenuItem( "Quarterstaff" )
		  me.BaseMenu.Append new MenuItem( "Rapier" )
		  me.BaseMenu.Append new MenuItem( "Scimitar" )
		  me.BaseMenu.Append new MenuItem( "Shortsword" )
		  me.BaseMenu.Append new MenuItem( "Sickle" )
		  me.BaseMenu.Append new MenuItem( "Spear" )
		  me.BaseMenu.Append new MenuItem( "Staff" )
		  me.BaseMenu.Append new MenuItem( "Trident" )
		  me.BaseMenu.Append new MenuItem( "War Pick" )
		  me.BaseMenu.Append new MenuItem( "Warhammer" )
		  me.BaseMenu.Append new MenuItem( "Whip" )
		  me.BaseMenu.Append new MenuItem( "Yklwa" )
		  me.BaseMenu.Append new MenuItem( "-" )
		  me.BaseMenu.Append new MenuItem( "Blowgun" )
		  me.BaseMenu.Append new MenuItem( "Dart" )
		  me.BaseMenu.Append new MenuItem( "Hand Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Heavy Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Light Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Light Repeating Crossbow" )
		  me.BaseMenu.Append new MenuItem( "Longbow" )
		  me.BaseMenu.Append new MenuItem( "Net" )
		  me.BaseMenu.Append new MenuItem( "Shortbow" )
		  me.BaseMenu.Append new MenuItem( "Sling" )
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
