#tag Module
Protected Module ViWindowExtensions
	#tag Method, Flags = &h0
		Function IsVisible(Extends w as Window) As Boolean
		  // Check whether a window is visible *without* calling it to the front and making it visible in the process.
		  if w <> Nil then
		    for i as Integer = WindowCount-1 DownTo 0
		      dim currentWindow as Window = Window(i)
		      
		      if currentWindow <> Nil and currentWindow = w then
		        Return True
		      end if
		    next
		  end if
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScreenNumber(Extends w as Window) As Integer
		  dim x as integer = w.Left
		  dim y as integer= w.top
		  for q as integer = 0 to ScreenCount -1
		    if (x >= Screen(q).Left and x <= screen(q).left + screen(q).Width) and( y >= Screen(q).top and y <= Screen(q).top + Screen(q).Height) then
		      return q
		    end if
		  next
		  return -1
		End Function
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
