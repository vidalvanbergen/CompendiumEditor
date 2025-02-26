#tag Class
Class NSPanel
Inherits NSWindow
	#tag Method, Flags = &h1000
		Sub Constructor(contentRect as Cocoa.NSRect, windowStyle as UInt32, bufferingType as NSBackingStoreType, deferCreation as Boolean)
		  
		  #if TargetCocoa
		    declare function initWithContentRect lib CocoaLib selector "initWithContentRect:styleMask:backing:defer:" _
		    (obj_id as Ptr, contentRect as Cocoa.NSRect, windowStyle as UInt32, bufferingType as NSBackingStoreType, deferCreation as Boolean) as Ptr
		    
		    super.Constructor(initWithContentRect(Allocate("NSPanel"), contentRect, windowStyle, bufferingType, deferCreation), NSWindow.hasOwnership)
		    
		  #else
		    #pragma unused contentRect
		    #pragma unused windowStyle
		    #pragma unused bufferingType
		    #pragma unused deferCreation
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(contentRect as Cocoa.NSRect, windowStyle as UInt32, bufferingType as NSBackingStoreType, deferCreation as Boolean, aScreen as NSScreen)
		  
		  #if TargetCocoa
		    declare function initWithContentRect lib CocoaLib selector "initWithContentRect:styleMask:backing:defer:screen:" _
		    (obj_id as Ptr, contentRect as Cocoa.NSRect, windowStyle as UInt32, bufferingType as NSBackingStoreType, deferCreation as Boolean, aScreen as Ptr) as Ptr
		    
		    dim screenRef as Ptr
		    if aScreen <> nil then
		      screenRef = aScreen
		    end if
		    
		    super.Constructor(initWithContentRect(Allocate("NSPanel"), contentRect, windowStyle, bufferingType, deferCreation, screenRef), NSWindow.hasOwnership)
		    
		  #else
		    #pragma unused contentRect
		    #pragma unused windowStyle
		    #pragma unused bufferingType
		    #pragma unused deferCreation
		    #pragma unused aScreen
		  #endif
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetCocoa then
			    declare function getBecomesKeyOnlyIfNeeded lib CocoaLib selector "becomesKeyOnlyIfNeeded" (obj_id as Ptr) as Boolean
			    
			    return getBecomesKeyOnlyIfNeeded( self )
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  #if TargetCocoa then
			    declare sub setBecomesKeyOnlyIfNeeded lib CocoaLib selector "setBecomesKeyOnlyIfNeeded:" (obj_id as Ptr, value as Boolean)
			    
			    setBecomesKeyOnlyIfNeeded self, value
			  #else
			    #pragma Unused value
			  #endif
			End Set
		#tag EndSetter
		BecomesKeyOnlyIfNeeded As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetCocoa then
			    declare function getIsFloatingPanel lib CocoaLib selector "isFloatingPanel" (obj_id as Ptr) as Boolean
			    
			    return getIsFloatingPanel( self )
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  #if TargetCocoa then
			    declare sub setFloatingPanel lib CocoaLib selector "setFloatingPanel:" (obj_id as Ptr, value as Boolean)
			    
			    setFloatingPanel self, value
			  #else
			    #pragma Unused value
			  #endif
			End Set
		#tag EndSetter
		FloatingPanel As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetCocoa then
			    declare function getWorksWhenModal lib CocoaLib selector "worksWhenModal" (obj_id as Ptr) as Boolean
			    
			    return getWorksWhenModal( self )
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  #if TargetCocoa then
			    declare sub setWorksWhenModal lib CocoaLib selector "setWorksWhenModal:" (obj_id as Ptr, value as Boolean)
			    
			    setWorksWhenModal self, value
			  #else
			    #pragma Unused value
			  #endif
			End Set
		#tag EndSetter
		WorksWhenModal As Boolean
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
			Name="AcceptsMouseMovedEvents"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsConcurrentViewDrawing"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsToolTipsWhenApplicationIsInactive"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AlphaValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AnimationBehavior"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NSWindowAnimationBehavior"
			EditorType="Enum"
			#tag EnumValues
				"0 - NSWindowAnimationBehaviorDefault"
				"2 - NSWindowAnimationBehaviorNone"
				"3 - NSWindowAnimationBehaviorDocumentWindow"
				"4 - NSWindowAnimationBehaviorUtilityWindow"
				"5 - NSWindowAnimationBehaviorAlertPanel"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AreCursorRectsEnabled"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Autodisplay"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutorecalculatesKeyViewLoop"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackingLocation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NSWindowBackingLocation"
			EditorType="Enum"
			#tag EnumValues
				"0 - NSWindowBackingLocationDefault"
				"1 - NSWindowBackingLocationVideoMemory"
				"2 - NSWindowBackingLocationMainMemory"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackingScaleFactor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackingType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NSBackingStoreType"
			EditorType="Enum"
			#tag EnumValues
				"0 - NSBackingStoreRetained"
				"1 - NSBackingStoreNonretained"
				"2 - NSBackingStoreBuffered"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeKeyWindow"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeMainWindow"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeVisibleWithoutLogin"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanHide"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanJoinAllSpaces"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanStoreColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollectionBehavior"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DepthLimit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplaysWhenScreenProfileChanges"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DocumentEdited"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DynamicDepthLimit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameAutosaveName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameString"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullscreenAllowed"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullscreenAllowedAuxiliary"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullSizeContentView"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="GState"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasShadow"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HidesOnDeactivate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoresCycle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoresMouseEvents"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InLiveResize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsDocumentEdited"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsExcludedFromWindowsMenu"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFlushWindowDisabled"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFullscreen"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsKeyWindow"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsMainWindow"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsMiniaturized"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsMovable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsOnActiveSpace"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsOpaque"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsReleasedWhenClosed"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRestorable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsSheet"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsVisible"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsZoomed"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyViewSelectionDirection"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NSSelectionDirection"
			EditorType="Enum"
			#tag EnumValues
				"0 - NSDirectSelection"
				"1 - NSSelectingNext"
				"2 - NSSelectingPrevious"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Managed"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MiniwindowTitle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MovableByBackground"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MoveToActiveSpace"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="OneShot"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParticipatesInCycle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredBackingLocation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NSWindowBackingLocation"
			EditorType="Enum"
			#tag EnumValues
				"0 - NSWindowBackingLocationDefault"
				"1 - NSWindowBackingLocationVideoMemory"
				"2 - NSWindowBackingLocationMainMemory"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesContentDuringLiveResize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreventsAppTerminationWhenModal"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepresentedFilename"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SharingType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NSWindowSharingType"
			EditorType="Enum"
			#tag EnumValues
				"0 - NSWindowSharingNone"
				"1 - NSWindowSharingReadOnly"
				"2 - NSWindowSharingReadWrite"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsResizeIndicator"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsToolbarButton"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Stationary"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StyleMask"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="UInt32"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TitlebarAppearsTransparent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transient"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ViewsNeedDisplay"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="WindowLevel"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NSWindowLevel"
			EditorType="Enum"
			#tag EnumValues
				"4 - NSNormalWindowLevel"
				"5 - NSFloatingWindowLevel"
				"6 - NSSubmenuWindowLevel"
				"6 - NSTornOffMenuWindowLevel"
				"8 - NSMainMenuWindowLevel"
				"9 - NSStatusWindowLevel"
				"10 - NSModalPanelWindowLevel"
				"11 - NSPopUpMenuWindowLevel"
				"13 - NSScreenSaverWindowLevel"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="WindowNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="WindowTitleVisibility"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NSWindowTitleVisibility"
			EditorType="Enum"
			#tag EnumValues
				"0 - Visible"
				"1 - Hidden"
				"2 - HiddenWhenActive"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Subtitle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WindowToolbarStyle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NSWindowToolbarStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - Expanded"
				"2 - Preference"
				"3 - Unified"
				"4 - UnifiedCompact"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BecomesKeyOnlyIfNeeded"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FloatingPanel"
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
		#tag ViewProperty
			Name="WorksWhenModal"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
