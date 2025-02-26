#tag Module
Protected Module DesktopWindowExtensions
	#tag Method, Flags = &h0
		Function SetFrameAutosaveName(extends w as DesktopWindow, saveName as String) As Boolean
		  //# Set the autosave name for the Window's frame.
		  
		  //@ See RestoreFrameFromWindowName
		  
		  #if TargetMacOS
		    declare function setFrameAutosaveName lib CocoaLib selector "setFrameAutosaveName:" (id as Ptr, name as CFStringRef) as Boolean
		    
		    //returns false if the name is already in use for another NSWindow object in the application.
		    return setFrameAutosaveName(WindowRef(w), saveName)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetWindowToolbar(extends w as DesktopWindow, t as NSToolbar)
		  
		  #if TargetCocoa
		    declare sub setToolbar lib CocoaLib selector "setToolbar:" (WindowRef as Ptr, toolbarRef as Ptr)
		    
		    setToolbar w.handle, t
		    
		  #else
		    #pragma unused w
		    #pragma unused t
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function WindowRef(w as DesktopWindow) As Ptr
		  if w = nil then
		    return nil
		  end if
		  
		  #if targetCocoa
		    return Ptr(w.Handle)
		    
		  #elseif targetCarbon
		    //the existing code was wrong.  I'm leaving this unimplemented for now.
		    return nil
		    
		  #else
		    #pragma unused w
		    return nil
		  #endif
		  
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
