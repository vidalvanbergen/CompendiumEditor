#tag Class
Protected Class CocoaMenuItemSelectLine
Inherits CocoaMenuItem
	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Select Line\xE2\x80\xA6", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select Line\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Zeile ausw\xC3\xA4hlen \xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE8\xA1\x8C\xE3\x82\x92\xE9\x81\xB8\xE6\x8A\x9E..."
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Selectionner la ligne\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Seleziona linea\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = bn, Definition  = \"\xE0\xA6\xAA\xE0\xA6\x82\xE0\xA6\x95\xE0\xA7\x8D\xE0\xA6\xA4\xE0\xA6\xBF \xE0\xA6\xA8\xE0\xA6\xBF\xE0\xA6\xB0\xE0\xA7\x8D\xE0\xA6\xAC\xE0\xA6\xBE\xE0\xA6\x9A\xE0\xA6\xA8"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Selecteer regel..."
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
