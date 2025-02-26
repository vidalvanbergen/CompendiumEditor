#tag Module
Protected Module Paintbucket
	#tag Method, Flags = &h0
		Sub drawStringWithShadow(Extends g as Graphics, Textcolor as Color, Shadowcolor as Color, Text as String, x as Integer, y as Integer, Width as Integer = 0, Condense as Boolean = False)
		  
		  g.ForeColor = Shadowcolor
		  g.DrawString( Text, x, y + 1, Width, Condense )
		  
		  g.ForeColor = Textcolor
		  g.DrawString( Text, x, y, Width, Condense )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawTiledImage(Extends g as graphics, image as Picture, width as Integer, height as Integer)
		  var rows as Integer = Ceiling(height / image.Height)
		  var cols as Integer = Ceiling(width / image.Width)
		  
		  for row as Integer = 0 to rows-1
		    for col as Integer = 0 to cols-1
		      g.DrawPicture image, col * image.Width, row * image.Height
		    next
		  next
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
