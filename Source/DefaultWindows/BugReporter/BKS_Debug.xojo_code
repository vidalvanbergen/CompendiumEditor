#tag Module
Protected Module BKS_Debug
	#tag Method, Flags = &h1
		Protected Sub Assert(bCondition as boolean, sMessage as string = "")
		  #if DebugBuild then
		    if not bCondition then
		      Raise new BKS_AssertFailedException(sMessage)
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Log(sMessage as String)
		  #if DebugBuild and TargetHasGUI
		    wndDebugLog.Send(sMessage)
		  #endif
		  System.DebugLog(sMessage)
		End Sub
	#tag EndMethod


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
