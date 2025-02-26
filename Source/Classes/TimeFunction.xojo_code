#tag Class
Protected Class TimeFunction
	#tag Method, Flags = &h0
		Sub Constructor(FunctionName as String)
		  me.Name = FunctionName
		  StartTicks = System.Ticks
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  EndTicks = System.Ticks
		  
		  Log( me.Name + " took " + str( (EndTicks-StartTicks)/60 ) + " seconds" )
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		EndTicks As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StartTicks As Integer
	#tag EndProperty


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
			Name="StartTicks"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="EndTicks"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
