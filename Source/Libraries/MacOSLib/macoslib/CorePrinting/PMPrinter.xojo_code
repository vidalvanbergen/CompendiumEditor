#tag Class
Class PMPrinter
Inherits PMObject
	#tag Method, Flags = &h0
		Sub SetDefault()
		  #if TargetMacOS
		    
		    declare function PMPrinterSetDefault lib framework ( printer As PMTypeRef ) As Integer
		    
		    dim errNum as integer = PMPrinterSetDefault( self )
		    if errNum <> 0 then
		      dim err as new OSError
		      err.ErrorNumber = errNum
		      err.Message = "Could not set this printer as default."
		      raise err
		    end if
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    
			    declare function PMPrinterGetID lib framework ( printer As PMTypeRef ) As CFStringRef
			    
			    dim csf as CFStringRef = PMPrinterGetID( self )
			    return csf
			    
			  #endif
			  
			End Get
		#tag EndGetter
		ID As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    
			    declare function PMPrinterIsDefault lib framework ( printer As PMTypeRef ) As Boolean
			    
			    return PMPrinterIsDefault( self )
			    
			  #endif
			End Get
		#tag EndGetter
		IsDefault As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    
			    declare function PMPrinterGetName lib framework ( printer As PMTypeRef ) As CFStringRef
			    
			    dim cfs as CFStringRef = PMPrinterGetName( self )
			    return cfs
			    
			  #endif
			End Get
		#tag EndGetter
		Name As String
	#tag EndComputedProperty


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
		#tag ViewProperty
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsDefault"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
