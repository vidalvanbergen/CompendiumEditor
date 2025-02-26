#tag Class
Class NSTextField
Inherits NSObject
	#tag Method, Flags = &h1000
		Sub Constructor(fromObject as Label)
		  
		  #if TargetMacOS
		    me.Constructor  Ptr( fromObject.Handle ), false
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(fromObject as TextField)
		  
		  #if TargetMacOS
		    me.Constructor  Ptr( fromObject.Handle ), false
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentEditor() As FieldEditor
		  
		  #if TargetMacOS
		    declare Function currentEditor lib CocoaLib selector "currentEditor" (id as Ptr) as Ptr
		    
		    dim p as Ptr = currentEditor( me.id )
		    if p<>nil then
		      return  new FieldEditor( p )
		    end if
		  #endif
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    declare function attributedStringValue lib CocoaLib selector "attributedStringValue" (id as Ptr) as Ptr
			    
			    return new NSAttributedString(attributedStringValue(self))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if TargetMacOS
			    declare sub attributedStringValue lib CocoaLib selector "setAttributedStringValue:" (id as Ptr, value as Ptr)
			    
			    if value <> nil then
			      attributedStringValue(self, value)
			    else
			      //do nothing.
			    end if
			    
			  #else
			    #pragma unused value
			  #endif
			End Set
		#tag EndSetter
		AttributedStringValue As NSAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    declare function isEditable lib CocoaLib selector "isEditable" (id as Ptr) as Boolean
			    
			    return isEditable(self)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if TargetMacOS
			    declare sub setEditable lib CocoaLib selector "setEditable:" (id as Ptr, value as boolean)
			    
			    setEditable(self, value)
			    
			  #else
			    #pragma unused value
			  #endif
			End Set
		#tag EndSetter
		Editable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    declare function allowsEditingTextAttributes lib CocoaLib selector "allowsEditingTextAttributes" (id as Ptr) as Boolean
			    
			    return allowsEditingTextAttributes(self)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if TargetMacOS
			    declare sub allowsEditingTextAttributes lib CocoaLib selector "setAllowsEditingTextAttributes:" (id as Ptr, value as boolean)
			    
			    allowsEditingTextAttributes(self, value)
			    
			  #else
			    #pragma unused value
			  #endif
			End Set
		#tag EndSetter
		EditableAttributes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if TargetMacOS
			    declare function isSelectable lib CocoaLib selector "isSelectable" (id as Ptr) as Boolean
			    
			    return isSelectable(self)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if TargetMacOS
			    declare sub setSelectable lib CocoaLib selector "setSelectable:" (id as Ptr, value as boolean)
			    
			    setSelectable(self, value)
			    
			  #else
			    #pragma unused value
			  #endif
			End Set
		#tag EndSetter
		Selectable As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Editable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="EditableAttributes"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
			Name="Selectable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
