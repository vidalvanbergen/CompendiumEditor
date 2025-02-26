#tag Class
Protected Class MacRegExOptions
	#tag Method, Flags = &h0
		Function Operator_Convert() As UInt32
		  dim r as UInt32
		  
		  if not CaseSensitive then r = r or NSRegularExpression.NSRegularExpressionCaseInsensitive
		  if DotMatchNewlines then r = r or NSRegularExpression.NSRegularExpressionDotMatchesLineSeparators
		  if IgnoreWhitespace then r = r or NSRegularExpression.NSRegularExpressionAllowCommentsAndWhitespace
		  if TreatPatternAsLiteral then r = r or NSRegularExpression.NSRegularExpressionIgnoreMetacharacters
		  if not TreatTargetAsOneLine then r = r or NSRegularExpression.NSRegularExpressionAnchorsMatchLines
		  if UnixLineSeparatorsOnly then r = r or NSRegularExpression.NSRegularExpressionUseUnixLineSeparators
		  if UnicodeWordBoundaries then r = r or NSRegularExpression.NSRegularExpressionUseUnicodeWordBoundaries
		  
		  return r
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		CaseSensitive As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		DotMatchNewlines As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		IgnoreWhitespace As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		TreatPatternAsLiteral As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		TreatTargetAsOneLine As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		UnicodeWordBoundaries As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		UnixLineSeparatorsOnly As Boolean
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
			Name="CaseSensitive"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DotMatchNewlines"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoreWhitespace"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TreatPatternAsLiteral"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TreatTargetAsOneLine"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UnicodeWordBoundaries"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UnixLineSeparatorsOnly"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
