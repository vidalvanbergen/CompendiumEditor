#tag Module
Protected Module AppPrefs
	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return AppSettings.Prefs.Value("DescriptionMultiTextTags", False)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppSettings.Prefs.Value("DescriptionMultiTextTags") = value
			End Set
		#tag EndSetter
		Protected DescriptionMultiTextTags As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return AppSettings.Prefs.Value("IndentCharacters", "  ")
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppSettings.Prefs.Value("IndentCharacters") = value
			End Set
		#tag EndSetter
		Protected IndentCharacters As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return AppSettings.Prefs.Value("SourceMultiline", True)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppSettings.Prefs.Value("SourceMultiline") = value
			End Set
		#tag EndSetter
		Protected SourceMultiline As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return AppSettings.Prefs.Value("SubclassBeforeFeatureName", False)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppSettings.Prefs.Value("SubclassBeforeFeatureName") = value
			End Set
		#tag EndSetter
		Protected SubclassBeforeFeatureName As Boolean
	#tag EndComputedProperty


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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
	#tag EndViewBehavior
End Module
#tag EndModule
