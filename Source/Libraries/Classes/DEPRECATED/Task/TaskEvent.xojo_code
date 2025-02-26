#tag Class
Protected Class TaskEvent
	#tag Method, Flags = &h0
		Sub Constructor(type as Types)
		  self.Type = type
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Arguments As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Type As Types
	#tag EndProperty


	#tag Enum, Name = Types, Flags = &h0
		Begin
		  Finished
		  UpdateUI
		Killed
	#tag EndEnum


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
		#tag ViewProperty
			Name="Type"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Types"
			EditorType="Enum"
			#tag EnumValues
				"0 - Begin"
				"1 - Finished"
				"2 - UpdateUI"
				"3 - Killed"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
