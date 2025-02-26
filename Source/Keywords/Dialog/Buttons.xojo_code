#tag Module
Protected Module Buttons
	#tag Constant, Name = kAdd, Type = String, Dynamic = True, Default = \"Add", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Add"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Voeg Toe"
	#tag EndConstant

	#tag Constant, Name = kCancel, Type = String, Dynamic = True, Default = \"Cancel", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Cancel"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Annuleer"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Abbrechen"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Avbryt"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Annuler"
	#tag EndConstant

	#tag Constant, Name = kContinue, Type = String, Dynamic = True, Default = \"Continue", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Continue"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Doorgaan"
	#tag EndConstant

	#tag Constant, Name = kDonate, Type = String, Dynamic = True, Default = \"Donate", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Donate"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Doneer"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Spenden"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Donation"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Donera"
	#tag EndConstant

	#tag Constant, Name = kNext, Type = String, Dynamic = True, Default = \"Next", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Next"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Volgende"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"N\xC3\xA4sta"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"N\xC3\xA4chstes"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Suivant"
	#tag EndConstant

	#tag Constant, Name = kNo, Type = String, Dynamic = True, Default = \"No", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"No"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Nee"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Non"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nein"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Nej"
	#tag EndConstant

	#tag Constant, Name = kOK, Type = String, Dynamic = True, Default = \"OK", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"OK"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"OK"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"OK"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"OK"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"OK"
	#tag EndConstant

	#tag Constant, Name = kPrevious, Type = String, Dynamic = True, Default = \"Previous", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Previous"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Vorige"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"F\xC3\xB6reg\xC3\xA5ende"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Vorheriges"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Pr\xC3\xA9c\xC3\xA9dent"
	#tag EndConstant

	#tag Constant, Name = kRemove, Type = String, Dynamic = True, Default = \"Remove", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Remove"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Verwijder"
	#tag EndConstant

	#tag Constant, Name = kReplace, Type = String, Dynamic = True, Default = \"Replace", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Replace"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Vervang"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Remplacer"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ersetzen"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Ers\xC3\xA4tt"
	#tag EndConstant

	#tag Constant, Name = kReset, Type = String, Dynamic = True, Default = \"Reset", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Reset"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Herstel"
	#tag EndConstant

	#tag Constant, Name = kSave, Type = String, Dynamic = True, Default = \"Save", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Save"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Bewaar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Sichern"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Spara"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Sauvegarder"
	#tag EndConstant

	#tag Constant, Name = kSubmit, Type = String, Dynamic = True, Default = \"Submit", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Submit"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Verzenden"
	#tag EndConstant

	#tag Constant, Name = kYes, Type = String, Dynamic = True, Default = \"Yes", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Yes"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Ja"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Oui"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ja"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Ja"
	#tag EndConstant


	#tag ViewBehavior
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
End Module
#tag EndModule
