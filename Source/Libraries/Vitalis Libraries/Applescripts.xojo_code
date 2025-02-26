#tag Module
Protected Module Applescripts
	#tag Method, Flags = &h1
		Protected Sub CreateLogin(TheName as String, TheNativePath as String)
		  dim script as string = "osascript -e 'tell application ""System Events"" to make login item at end with properties {name: ""%name%"",path:""%path%"", hidden:false}'"
		  script = script.Replace("%path%", TheNativePath)
		  script = script.Replace("%name%", TheName)
		  
		  dim s as new Shell
		  s.Execute script
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LoginItems() As String()
		  dim script as string = "osascript -e 'tell application ""System Events"" to get the name of every login item'"
		  
		  dim sh as new Shell
		  sh.Execute script
		  dim result as string = sh.Result
		  
		  Return result.Split(", ")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RemoveLogin(TheName as String)
		  dim script as string = "osascript -e 'tell application ""System Events"" to delete login item ""%name%""'"
		  script = script.ReplaceAll("%name%", TheName)
		  
		  dim sh as new Shell
		  sh.Execute script
		End Sub
	#tag EndMethod


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
