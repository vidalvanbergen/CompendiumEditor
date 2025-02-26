#tag Class
Protected Class CanvasToolbar
Inherits DesktopCanvas
	#tag Event
		Sub Opening()
		  #if NOT DebugBuild
		    #Pragma BackgroundTasks False
		    #Pragma BoundsChecking False
		    #Pragma StackOverflowchecking False
		    #Pragma NilObjectChecking False
		  #endif
		  
		  #if NOT TargetMacOS then
		    me.Top = 0
		    
		    // Below code may easily break controls
		    
		    // Adjust controls that aren't part of the toolbar
		    Dim AllControls() as Variant
		    for index as Integer = 0 to self.window.ControlCount-1
		      AllControls.Append self.Window.Control( index )
		    next
		    
		    for each currentControl as RectControl in AllControls
		      if currentControl <> me and currentControl.Parent = self.Parent then // Only touch direct window controls other than self.
		        
		        if currentControl.LockTop and currentControl.LockBottom then // Resize variable height controls.
		          currentControl.Height = currentControl.Height - me.Height
		        end if
		        
		        // Don't move if controls are moved out of the window as a result
		        if currentControl.Top + currentControl.Height + me.Height < self.Window.Height then
		          currentControl.Top = currentControl.Top + me.Height
		        end if
		        
		      end if
		    next
		    
		  #endif
		  
		  RaiseEvent Opening()
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  #Pragma Unused areas
		  #if NOT DebugBuild
		    #Pragma BackgroundTasks False
		    #Pragma BoundsChecking False
		    #Pragma StackOverflowchecking False
		    #Pragma NilObjectChecking False
		  #endif
		  
		  #if not TargetMacOS then
		    g.DrawGradient( HSL( 0, 0, 92, 92 ), HSL( 0, 0, 80, 80 ), 0, 0, g.Width, g.Height )
		    
		    g.ForeColor = HSL( 0, 0, 100, 60 )
		    g.DrawLine 0, 0, g.Width, 0
		    
		    g.ForeColor = HSL( 0, 0, 60, 90 )
		    g.DrawLine 0, g.Height -1, g.Width, g.Height -1
		  #else
		    #Pragma Unused g
		  #endif
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Opening()
	#tag EndHook


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
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
