#tag Class
Protected Class CocoaMenuItemWritingDirectionText
Inherits CocoaMenuItem
	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Selection", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Selection"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Auswahl"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE9\x81\xB8\xE6\x8A\x9E\xE9\x83\xA8\xE5\x88\x86"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"S\xC3\xA9lection"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Selezione"
		#Tag Instance, Platform = Any, Language = bn, Definition  = \"\xE0\xA6\xA8\xE0\xA6\xBF\xE0\xA6\xB0\xE0\xA7\x8D\xE0\xA6\xAC\xE0\xA6\xBE\xE0\xA6\x9A\xE0\xA6\xA8"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Selectie"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="HasCheckMark"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Shortcut"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoEnabled"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastRowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Icon"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mIndex"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
