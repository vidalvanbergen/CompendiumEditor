#tag Class
Protected Class CanvasTouch
Inherits Canvas
	#tag Event
		Sub Close()
		  
		  //tear down touchable
		  refToucher.eventClose
		  refToucher = nil
		  
		  RaiseEvent Close()
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  //call open and get users choice of gesture events
		  dim useMag As boolean = false
		  dim useRot As boolean = false
		  dim useTouch As boolean = false
		  
		  RaiseEvent Open(useMag, useRot, useTouch)
		  
		  if (not useMag) and (not useRot) and (not useTouch) then return //user didn't use anything
		  
		  
		  //collect the callbacks to use
		  dim va(4) As Variant
		  if useMag then va(0) = AddressOf handleMagnify
		  if useRot then va(1) = AddressOf handleRotate
		  if useTouch then
		    va(2) = AddressOf handleTouchDown
		    va(3) = AddressOf handleTouchDrag
		    va(4) = AddressOf handleTouchUp
		  end
		  
		  //create the subview reciever
		  refToucher = new TouchableView(RectControl(self).Handle, self.Width, self.Height, va(0), va(1), va(2), va(3), va(4))
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub handleMagnify(zoom As Single, x As integer, y As integer)
		  
		  RaiseEvent GestureMagnify(zoom, x, y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub handleRotate(angle As Single, x As integer, y As integer)
		  
		  RaiseEvent GestureRotate(angle, x, y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function handleTouchDown(touches() As TouchableView.TouchData, x As integer, y As integer) As boolean
		  
		  return RaiseEvent TouchDown(touches, x, y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub handleTouchDrag(touches() As TouchableView.TouchData, x As integer, y As integer)
		  
		  RaiseEvent TouchDrag(touches, x, y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub handleTouchUp(x As integer, y As integer)
		  
		  RaiseEvent TouchUp(x, y)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GestureMagnify(zoom As Single, x As integer, y As integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GestureRotate(angle As Single, x As integer, y As integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open(byref useMagnify As boolean, byref useRotate As boolean, byref useTouch As boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchDown(touches() As TouchableView.TouchData, x As integer, y As integer) As boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchDrag(touches() As TouchableView.TouchData, x As integer, y As integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TouchUp(x As integer, y As integer)
	#tag EndHook


	#tag Property, Flags = &h21
		Private refToucher As TouchableView
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocus"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabs"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
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
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group=""
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
