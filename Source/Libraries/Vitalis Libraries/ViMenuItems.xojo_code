#tag Module
Protected Module ViMenuItems
	#tag Method, Flags = &h0
		Function NewMenuItem(Title as String, Tag as Variant, Enabled as Boolean = True) As MenuItem
		  var mi as new MenuItem(Title, Tag)
		  mi.Enabled = Enabled
		  
		  Return mi
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NewMenuItem(Title as String, Tag as Variant, Icon as picture, Enabled as Boolean = True) As MenuItem
		  var mi as new MenuItem(Title, Tag)
		  var nsi as NSImage = Icon
		  nsi.Template = True
		  mi.Icon = nsi
		  mi.Enabled = Enabled
		  
		  Return mi
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
