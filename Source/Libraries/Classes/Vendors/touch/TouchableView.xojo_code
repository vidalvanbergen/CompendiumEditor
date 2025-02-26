#tag Class
Protected Class TouchableView
	#tag Method, Flags = &h0
		Sub Constructor(parentViewHandle As integer, frameWidth As integer, frameHeight As integer, magnifyHandler As delMagnify, rotateHandler As delRotate, touchDownHandler As delTouchDown, touchDragHandler As delTouchDrag, touchUpHandler As delTouchUp)
		  #if TargetCocoa
		    
		    soft declare function NSClassFromString      lib CocoaLib (aClassName as CFStringRef) as Ptr
		    soft declare function NSSelectorFromString   lib CocoaLib (aSelectorName as CFStringRef) as Ptr
		    soft declare function objc_allocateClassPair lib CocoaLib (superclass as Ptr, name as CString, extraBytes as Integer) as Ptr
		    soft declare sub      objc_registerClassPair lib CocoaLib (cls as Ptr)
		    soft declare function class_addMethod        lib CocoaLib (cls as Ptr, name as Ptr, imp as Ptr, types as CString) as Boolean
		    soft declare function alloc                  lib CocoaLib selector "alloc" (classRef as Ptr) as Ptr
		    soft declare function init                   lib CocoaLib selector "init" (classRef as Ptr) as Ptr
		    soft declare sub      setAcceptsTouch        lib CocoaLib selector "setAcceptsTouchEvents:" (id As Ptr, flag As Boolean)
		    soft declare sub      setWantsResting        lib CocoaLib selector "setWantsRestingTouches:" (cls As Ptr, flag As Boolean)
		    soft declare sub      addSubview             lib CocoaLib selector "addSubview:" (id as Ptr, aView as Ptr)
		    soft declare sub      setAutoresizingMask    lib CocoaLib selector "setAutoresizingMask:" (id as Ptr, mask as Integer)
		    soft declare function initWithFrame          lib CocoaLib selector "initWithFrame:" (obj_id as Ptr, frameRect as NSRect) as Ptr
		    
		    callbackMagnify = magnifyHandler //store callbacks
		    callbackRotate = rotateHandler
		    callbackTouchDown = touchDownHandler
		    callbackTouchDrag = touchDragHandler
		    callbackTouchUp = touchUpHandler
		    
		    parentid = Ptr(parentViewHandle) //store ref to parent view
		    
		    //=========================== setup GesturePane class
		    static GesturePanes(7) as Ptr
		    
		    dim uMagnify, uRotate, uTouch, paneIdx As integer //collect Pane type
		    if callbackMagnify <> nil then uMagnify = 1
		    if callbackRotate <> nil then uRotate = 2
		    if callbackTouchDown <> nil and callbackTouchDrag <> nil and callbackTouchUp <> nil then uTouch = 4
		    paneIdx = uMagnify + uRotate + uTouch
		    
		    dim GesturePane As Ptr = GesturePanes(paneIdx) //get Pane from stored list
		    
		    if GesturePane = nil then              //create class if not already made
		      
		      GesturePane = objc_allocateClassPair(NSClassFromString("NSView"), "GesturePane" + Str(paneIdx), 0) //allocate class
		      if GesturePane = nil then break
		      
		      objc_registerClassPair(GesturePane)   //register it
		      
		      //add event handler methods
		      if uMagnify = 1 then
		        if not class_addMethod(GesturePane, NSSelectorFromString("magnifyWithEvent:"), AddressOf impl_Gesture, "v@:@") then break
		      end
		      if uRotate = 2 then
		        if not class_addMethod(GesturePane, NSSelectorFromString("rotateWithEvent:"),  AddressOf impl_Gesture, "v@:@") then break
		      end
		      if uTouch = 4 then
		        if not class_addMethod(GesturePane, NSSelectorFromString("touchesBeganWithEvent:"),     AddressOf impl_Touch, "v@:@") then break
		        if not class_addMethod(GesturePane, NSSelectorFromString("touchesMovedWithEvent:"),     AddressOf impl_Touch, "v@:@") then break
		        if not class_addMethod(GesturePane, NSSelectorFromString("touchesCancelledWithEvent:"), AddressOf impl_Touch, "v@:@") then break
		        if not class_addMethod(GesturePane, NSSelectorFromString("touchesEndedWithEvent:"),     AddressOf impl_Touch, "v@:@") then break
		        //if not class_addMethod(GesturePane, NSSelectorFromString("scrollWheel:"),               AddressOf Impl_Wheel, "v@:@") then break
		      end
		      
		      //if not class_addMethod(GesturePane, NSSelectorFromString("swipeWithEvent:"), AddressOf impl_Swipe, "v@:@") then break
		      
		      GesturePanes(paneIdx) = GesturePane //store created Pane in stored list
		      
		    end
		    
		    //======================== add a MyResponder instance as this Canvases NextResponder
		    dim frame as NSRect  //setup initial bounds
		    frame.x = 0.0
		    frame.y = 0.0
		    frame.w = frameWidth
		    frame.h = frameHeight
		    
		    self.subviewid = initWithFrame(alloc(GesturePane), frame)   //allocate an instance and set its bounds
		    if self.subviewid = nil then break
		    
		    addSubview(parentid, self.subviewid)         //link instance to this RB Canvas
		    
		    setAutoresizingMask(self.subviewid, 18)              //track size, NSViewWidthSizable=2 or NSViewHeightSizable=16
		    
		    setAcceptsTouch(self.subviewid, true)                //tell Canvas to receive touch events
		    
		    setWantsResting(self.subviewid, true)                //also pass 'resting' touches
		    
		    //======================= add self to dispatch list
		    dispatchList.Append self
		    
		  #endif
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function customGestureRunning() As Boolean
		  return runningCustom
		End Function
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub delMagnify(zoom As Single, x As integer, y As integer)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub delRotate(angle As Single, x As integer, y As integer)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h0
		Delegate Function delTouchDown(touches() As TouchableView.TouchData, x As integer, y As integer) As boolean
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub delTouchDrag(touches() As TouchableView.TouchData, x As integer, y As integer)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub delTouchUp(x As integer, y As integer)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0
		Sub eventClose()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_Gesture(pid as Ptr, sel as Ptr, evt as Ptr)
		  #pragma unused sel
		  
		  //Find the Canvas with matching responder and send it the event
		  
		  for i As integer = 0 to dispatchList.Ubound
		    if dispatchList(i).subviewid = pid then
		      dispatchList(i).sendGesture(evt)
		      return
		    end
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_Swipe_OFF(pid as Ptr, sel as Ptr, evt as Ptr)
		  #pragma unused sel
		  #pragma unused pid
		  #pragma unused evt
		  
		  //Find the Canvas with matching responder and send it the event
		  
		  'for i As integer = 0 to dispatchList.Ubound
		  'if dispatchList(i).subviewid = pid then
		  'dispatchList(i).sendGesture(evt)
		  'return
		  'end
		  'next
		  
		  
		  break
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub Impl_Touch(pid as Ptr, sel as Ptr, evt as Ptr)
		  #pragma unused sel
		  
		  //Find the Canvas with matching responder and send it the event
		  
		  for i As integer = 0 to dispatchList.Ubound
		    if dispatchList(i).subviewid = pid then
		      dispatchList(i).sendTouch(evt)
		      return
		    end
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub Impl_Wheel_OFF(pid as Ptr, sel as Ptr, evt as Ptr)
		  #pragma unused sel
		  #pragma unused pid
		  #pragma unused evt
		  
		  
		  '//Find the Canvas with matching responder and send it the event
		  '
		  'for i As integer = 0 to dispatchList.Ubound
		  'if dispatchList(i).subviewid = pid then
		  'dispatchList(i).sendWheel(evt)
		  'return
		  'end
		  'next
		  '
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub pinCursor(doPin As Boolean)
		  //8k
		  soft declare function CGAssociateMouseAndMouseCursorPosition lib "ApplicationServices" (b As boolean) As integer
		  
		  dim err As integer = CGAssociateMouseAndMouseCursorPosition(not doPin)
		  
		  #pragma unused err
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub sendGesture(evt As Ptr)
		  
		  #if TargetCocoa
		    
		    if runningCustom then return
		    
		    soft declare function type lib CocoaLib selector "type" (obj_id as Ptr) as integer
		    soft declare function locationInWindow lib CocoaLib selector "locationInWindow" (id as Ptr) as NSPoint
		    soft declare function convertPoint lib CocoaLib selector "convertPoint:fromView:" ( id as Ptr, loc as NSPoint, fromView as Ptr ) as NSPoint
		    
		    //======================= get mouse coordinates from event (rather than processing System.MouseXY)
		    dim pnt as NSPoint = convertPoint(parentid, locationInWindow(evt), nil)
		    //pnt.y = self.Height - pnt.y
		    'soft declare function viewFrame lib CocoaLib selector "frame" (id As Ptr) As NSRect
		    'dim theRect As NSRect = viewFrame(self.subviewid)
		    'pnt.y = theRect.h - pnt.y
		    
		    //======================== determine gesture event type and send info
		    Select Case type(evt)
		    Case 30 //magnify
		      soft declare function magnification lib CocoaLib selector "magnification" (id as Ptr) as Single 'CGFloat
		      //RaiseEvent GestureMagnify(magnification(evt), pnt.x, pnt.y)
		      callbackMagnify.Invoke(magnification(evt), pnt.x, pnt.y)
		      
		    Case 18 //rotate
		      soft declare function rotation lib CocoaLib selector "rotation" (id as Ptr) as Single 'Float
		      //RaiseEvent GestureRotate(rotation(evt) * 6.28318 / 360, pnt.x, pnt.y)
		      callbackRotate.Invoke(rotation(evt) * 6.28318 / 360, pnt.x, pnt.y)
		      
		    End
		    
		  #endif
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub sendTouch(evt As Ptr)
		  
		  #if TargetCocoa
		    
		    //=================== get mouse coordinates from evt (rather than processing System.MouseXY)
		    soft declare function locationInWindow lib CocoaLib selector "locationInWindow" (id as Ptr) as NSPoint
		    soft declare function convertPoint lib CocoaLib selector "convertPoint:fromView:" ( id as Ptr, loc as NSPoint, fromView as Ptr ) as NSPoint
		    dim pnt as NSPoint = convertPoint(parentid, locationInWindow(evt), nil)
		    //pnt.y = self.Height - pnt.y
		    'soft declare function viewFrame lib CocoaLib selector "frame" (id As Ptr) As NSRect
		    'dim theRect As NSRect = viewFrame(self.subviewid)
		    'pnt.y = theRect.h - pnt.y
		    
		    //==================== extract the touch list data from the event
		    soft declare function touchesMatching lib CocoaLib selector "touchesMatchingPhase:inView:" (e As Ptr, typeMask As UInt32, view As Ptr) As Ptr
		    soft declare function allObjects lib CocoaLib selector "allObjects" (pset As Ptr) As Ptr
		    soft declare function count lib CocoaLib selector "count" (arr As Ptr) As UInt32
		    soft declare function objectAtIndex lib CocoaLib selector "objectAtIndex:" (arr As Ptr, index As UInt32) As Ptr
		    soft declare function identity lib CocoaLib selector "identity" (t As Ptr) As Integer
		    soft declare function phase lib CocoaLib selector "phase" (t As Ptr) As UInt32
		    soft declare function isResting lib CocoaLib selector "isResting" (t As Ptr) As Boolean
		    soft declare function normalPoint lib CocoaLib selector "normalizedPosition" (t As Ptr) As NSPoint
		    
		    dim set As Ptr = touchesMatching(evt, &hFFFFFFFF, parentid) //get set of all touch types
		    if set = nil then break
		    
		    dim touchArray As Ptr = allObjects(set)          //get set as array
		    if touchArray = nil then break
		    
		    dim elemLast As UInt32 = count(touchArray) - 1   //array size
		    
		    dim touchList() As TouchData, tempTouch As Ptr   //read each element into a TouchData (structure)
		    redim touchList(elemLast)
		    for i As UInt32 = 0 to elemLast
		      tempTouch = objectAtIndex(touchArray, i)
		      touchList(i).identity = identity(tempTouch)
		      touchList(i).phase = phase(tempTouch)
		      touchList(i).isResting = isResting(tempTouch)
		      touchList(i).pos = normalPoint(tempTouch)
		      'if i = 0 and deviceRangeX < 0 then //collecting device size
		      'soft declare function deviceSize2 lib CocoaLib selector "deviceSize" (t As Ptr) As NSPoint
		      'dim sizee As NSPoint = deviceSize2(tempTouch)
		      'deviceRangeX = sizee.x
		      'deviceRangeY = sizee.y
		      'break
		      'end
		    next
		    
		    //========================= analyze the touch list to see if this is a "TouchUp" event
		    dim allUp As Boolean = true
		    for i As integer = 0 to elemLast
		      if not (touchList(i).phase = 8 or touchList(i).phase = 16) then  //if not (touch ended or cancelled) then
		        allUp = false
		        exit
		      end
		    next
		    
		    //======================== raise the event
		    if allUp then
		      
		      //RaiseEvent TouchUp(pnt.x, pnt.y)
		      callbackTouchUp.Invoke(pnt.x, pnt.y)
		      
		      if runningCustom then
		        runningCustom = false
		        pinCursor(false) //8k this is pinned when custom
		        
		        if blockWheel then //wheel was triggered, will need to block momentum
		          if timerWheelBlockRelease = nil then
		            timerWheelBlockRelease = new Timer
		            AddHandler timerWheelBlockRelease.Action, WeakAddressOf wheelBlockRelease
		            timerWheelBlockRelease.Period = 1400 'need this much to block momentum
		          end
		          timerWheelBlockRelease.Mode = Timer.ModeSingle
		        end
		      end
		      
		    else
		      
		      if runningCustom then
		        //RaiseEvent TouchDrag(touchList, pnt.x, pnt.y)
		        callbackTouchDrag.Invoke(touchList, pnt.x, pnt.y)
		      else
		        //runningCustom = RaiseEvent TouchDown(touchList, pnt.x, pnt.y)
		        runningCustom = callbackTouchDown.Invoke(touchList, pnt.x, pnt.y)
		        
		        if runningCustom then pinCursor(true) //8k
		      end
		      
		    end
		    
		    
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub sendWheel_OFF(evt As Ptr)
		  #pragma unused evt
		  
		  '#if TargetCocoa
		  '
		  ''if runningCustom or blockWheel then
		  ''blockWheel = true //flag that wheel needs blocking on Up
		  ''return
		  ''end
		  '
		  'soft declare function locationInWindow lib CocoaLib selector "locationInWindow" (id as Ptr) as NSPoint
		  'soft declare function convertPoint     lib CocoaLib selector "convertPoint:fromView:" (id as Ptr, loc as NSPoint, fromView as Ptr) as NSPoint
		  'soft declare function deltaX           lib CocoaLib selector "deltaX" (id as Ptr) as Single 'CGFloat
		  'soft declare function deltaY           lib CocoaLib selector "deltaY" (id as Ptr) as Single 'CGFloat
		  'soft declare function phase    lib CocoaLib selector "phase" (id as Ptr) as integer 'NSEventPhase
		  'soft declare function momPhase lib CocoaLib selector "momentumPhase" (id as Ptr) as integer 'NSEventPhase
		  '
		  'dim pha As integer = phase(evt)
		  ''dim momPha As integer = momPhase(evt)
		  '
		  'if runningCustom or (blockWheel and pha = 0) then
		  'blockWheel = true //flag that wheel needs blocking on Up
		  'return
		  'end
		  '
		  'dim pnt as NSPoint = convertPoint(parentid, locationInWindow(evt), nil)
		  'pnt.y = self.Height - pnt.y
		  '
		  'Call RaiseEvent MouseWheel(pnt.x, pnt.y, deltaX(evt), deltaY(evt)) 
		  '
		  '#endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub wheelBlockRelease(sender As Timer)
		  #pragma unused sender
		  
		  blockWheel = false
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private blockWheel As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private callbackMagnify As delMagnify
	#tag EndProperty

	#tag Property, Flags = &h21
		Private callbackRotate As delRotate
	#tag EndProperty

	#tag Property, Flags = &h21
		Private callbackTouchDown As delTouchDown
	#tag EndProperty

	#tag Property, Flags = &h21
		Private callbackTouchDrag As delTouchDrag
	#tag EndProperty

	#tag Property, Flags = &h21
		Private callbackTouchUp As delTouchUp
	#tag EndProperty

	#tag Property, Flags = &h21
		Private deviceRangeX As single = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private deviceRangeY As single = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared dispatchList() As TouchableView
	#tag EndProperty

	#tag Property, Flags = &h21
		Private parentid As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private runningCustom As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private subviewid As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private timerWheelBlockRelease As Timer
	#tag EndProperty


	#tag Constant, Name = CocoaLib, Type = String, Dynamic = False, Default = \"Cocoa.framework", Scope = Private
	#tag EndConstant


	#tag Structure, Name = NSPoint, Flags = &h0
		x as Single
		y as Single
	#tag EndStructure

	#tag Structure, Name = NSRect, Flags = &h21
		x as Single
		  y as Single
		  w as Single
		h as Single
	#tag EndStructure

	#tag Structure, Name = TouchData, Flags = &h0
		identity As Integer
		  phase As UInt32
		  isResting As Boolean
		pos As NSPoint
	#tag EndStructure


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
End Class
#tag EndClass
