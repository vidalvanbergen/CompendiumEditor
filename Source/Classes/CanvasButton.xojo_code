#tag Class
Protected Class CanvasButton
Inherits DesktopCanvas
	#tag Event
		Function KeyDown(key As String) As Boolean
		  var asckey as Integer = Asc( key )
		  
		  if me.Active and asckey = 13 then
		    RaiseEvent Action
		    Return True
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub KeyUp(key As String)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  'if x >= me.Left and y >= me.top and _
		  'x <= me.Width and y <= me.Height then
		  
		  Pressed = True
		  Refresh(True)
		  
		  Return True
		  'end if
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  Pressed = False
		  Refresh(true)
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  Pressed = False
		  me.Refresh(True)
		  
		  if x >= 0 and y >= 0 and _
		    x <= me.Width and y <= me.Height then
		    
		    RaiseEvent Action()
		    
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  'if IsSelected then
		  'g.ForeColor = HSL( 0, 0, 100, 20 )
		  'g.FillRoundRectangle( 0, 0, g.Width, g.Height, 10, 10 )
		  'end if
		  
		  // pressed
		  if Pressed then
		    g.ForeColor = HSL( 0, 0, 100, 20 )
		    g.FillRoundRectangle( 0, 0, g.Width, g.Height, 10, 10 )
		  end if
		  'if Pressed then
		  'if IsDarkMode then
		  'g.ForeColor = &cAAAAAA
		  'else
		  'g.ForeColor = &c222222
		  'end if
		  '
		  '// unpressed
		  'else
		  'if IsDarkMode then
		  'g.ForeColor = &cFFFFFF
		  'else
		  'g.ForeColor = &c000000
		  'end if
		  'end if
		  
		  'if NOT me.Enabled then
		  'g.ForeColor = Color.FillColor ' DarkTingeColor 'HighlightColor 'DisabledTextColor
		  'end if
		  
		  
		  'if Pressed then
		  'if useCustomColor then
		  ''g.DrawingColor = iconColor.Darken(10)
		  'else
		  ''g.DrawingColor = color.HighlightColor 'DarkTingeColor
		  'end if
		  'else
		  if useCustomColor then
		    g.DrawingColor = iconColor
		  else
		    g.DrawingColor = color.TextColor
		  end if
		  'end if
		  
		  
		  var tmp as Picture = image 'image.BestRepresentation( 24, 24, 1 ) 'TemplateSetColor( image, g.ForeColor )
		  'tmp.Invert
		  
		  if Template and tmp <> NIl then
		    dim pict, mask as Picture
		    pict = new Picture( tmp.width, tmp.Height, 32 )
		    mask = new Picture( tmp.width, tmp.Height, 32 )
		    
		    mask.Graphics.DrawPicture   tmp, 0, 0
		    if NOT enabled then
		      mask = mask.Lighten(0.6)
		    elseif Pressed then
		      'mask = mask.Lighten(0.4)
		    end if
		    
		    pict.Graphics.DrawingColor = g.DrawingColor
		    pict.Graphics.FillRectangle   0, 0, pict.Width, pict.Height
		    'pict.Mask( true ).Graphics.DrawPicture   mask, 0, 0
		    pict.ApplyMask( mask )
		    
		    tmp = pict
		  else
		    if Pressed then
		      'tmp = tmp.ApplyMask
		    end if
		  end if
		  
		  
		  
		  
		  var iconSize as Integer = min( g.Width-4, g.Height-4 ) 'min( g.Width*0.80, g.Height*0.80 )
		  var iconPadding as Integer = 2 '0 '( min( g.Width, g.Height ) - iconSize ) / 2
		  
		  if Image <> Nil then
		    'g.ScaleImage tmp, 24, 24, 4, 4
		    g.DrawPicture tmp, iconPadding, iconPadding, iconSize, iconSize, 0, 0, tmp.Width, tmp.Height
		  end if
		  'g.FillRect 0, 0, g.Width, g.Height
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ScaleFactorChanged()
		  me.Refresh(True)
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook


	#tag Property, Flags = &h0
		iconColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		Image As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		IsSelected As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Pressed As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Template As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		useCustomColor As Boolean = False
	#tag EndProperty


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
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
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
			Name="AllowAutoDeactivate"
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
			Name="Enabled"
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
			Name="Visible"
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
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Template"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Pressed"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="iconColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="useCustomColor"
			Visible=true
			Group="Behavior"
			InitialValue="False"
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
			Name="IsSelected"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
