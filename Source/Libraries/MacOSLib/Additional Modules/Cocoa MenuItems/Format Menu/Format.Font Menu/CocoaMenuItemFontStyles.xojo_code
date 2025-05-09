#tag Class
Protected Class CocoaMenuItemFontStyles
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "orderFrontStylesPanel:"
		End Function
	#tag EndEvent

	#tag Event
		Sub EnableMenu(target as Ptr)
		  #if targetCocoa
		    declare function sharedApplication lib CocoaLib selector "sharedApplication" (class_id as Ptr) as Ptr
		    declare function targetForAction lib CocoaLib selector "targetForAction:to:from:" (id as Ptr, anAction as Ptr, aTarget as Ptr, sender as Ptr) as Ptr
		    
		    dim NSApp as Ptr = sharedApplication(Cocoa.NSClassFromString("NSApplication"))
		    self.Enabled = (targetForAction(NSApp, Cocoa.NSSelectorFromString("changeFont:"), nil, nil) <> nil)
		  #endif
		  
		  #pragma unused target
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function Target(menuItemRef as Ptr) As Ptr
		  #if targetCocoa
		    declare function sharedFontManager lib CocoaLib selector "sharedFontManager" (class_id as Ptr) as Ptr
		    
		    return sharedFontManager(Cocoa.NSClassFromString("NSFontManager"))
		  #endif
		  
		  #pragma unused menuItemRef
		  
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Styles...", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Styles..."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Stile \xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE3\x82\xB9\xE3\x82\xBF\xE3\x82\xA4\xE3\x83\xAB..."
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Styles\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Stili..."
		#Tag Instance, Platform = Any, Language = bn, Definition  = \"\xE0\xA6\xB6\xE0\xA7\x88\xE0\xA6\xB2\xE0\xA7\x80\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Stijlen..."
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="HasCheckMark"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Shortcut"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoEnabled"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastRowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Icon"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mIndex"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
End Class
#tag EndClass
