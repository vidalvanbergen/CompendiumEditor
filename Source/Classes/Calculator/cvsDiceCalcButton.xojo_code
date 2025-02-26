#tag Class
Protected Class cvsDiceCalcButton
Inherits DesktopCanvas
	#tag Event
		Sub DoublePressed(x As Integer, y As Integer)
		  Pressed = False
		  me.Refresh
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  if x > 0 and y > 0 and x < me.Width and y < me.Height then
		    Pressed = True
		    me.Refresh
		    Return True
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(x As Integer, y As Integer)
		  if x < 0 or y < 0 or x > me.Width or y > me.Height then
		    Pressed = False
		    Hover = False
		  else
		    Pressed = True
		  end if
		  me.Refresh
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  Hover = True
		  me.Refresh
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  Hover = False
		  me.Refresh
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(x As Integer, y As Integer)
		  'if x < 0 or y < 0 or x > me.Width or y > me.Height then
		  'Pressed = False
		  'me.Refresh
		  'end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  if x > 0 and y > 0 and x < me.Width and y < me.Height then
		    Pressed = False
		    me.Refresh
		    press.Play
		    
		    RaiseEvent Action()
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  g.DrawingColor = me.BackColor
		  
		  if UseHoverBackColor and me.Hover then
		    g.DrawingColor = me.BackColorHover
		  elseif me.Pressed then
		    g.DrawingColor = me.BackColorPressed
		  elseif me.Active then
		    g.DrawingColor = me.BackColorActive
		  end if
		  
		  g.FillRectangle 0, 0, g.Width, g.Height
		  
		  g.FontSize = me.FontSize
		  g.DrawingColor = me.TextColor
		  
		  if me.Icon = Nil and me.Caption.Trim <> "" then
		    g.DrawText me.Caption, (g.Width/2) - (g.TextWidth(me.Caption)/2), g.TextAscent + (g.Height/2) - (g.TextHeight( me.Caption, g.Width )/2)
		    
		  elseif me.Icon <> Nil and me.Caption.Trim <> "" then
		    // ToDo
		    
		  elseif me.Icon <> Nil and me.Caption.Trim = "" then
		    var ratio as Double = Min(me.IconSize / me.Icon.Height, me.IconSize / me.Icon.Width)
		    
		    var wFit as Double = me.Icon.Width * ratio
		    var hFit as Double = me.Icon.Height * ratio
		    
		    if me.Template = true then
		      var p as new Picture( me.Icon.Width, me.Icon.Height, 32 )
		      p.Graphics.DrawingColor = me.TemplateColor
		      p.Graphics.FillRect 0, 0, p.Width, p.Height
		      p.ApplyMask( me.Icon )
		      'p.Mask.graphics.drawpicture( me.Icon, 0, 0, p.Width, p.Height,   0, 0, me.Icon.Width, me.Icon.Height )
		      
		      g.DrawPicture p, (g.Width/2)-(wFit/2), (g.Height/2)-(hFit/2), wFit, hFit,   0, 0, p.Width, p.Height
		    else
		      g.DrawPicture me.Icon, (g.Width/2)-(wFit/2), (g.Height/2)-(hFit/2), wFit, hFit,   0, 0, me.Icon.Width, me.Icon.Height
		    end if
		  end if
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook


	#tag Property, Flags = &h0
		Active As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		BackColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		BackColorActive As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		BackColorHover As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		BackColorPressed As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		Caption As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FontSize As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Hover As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Icon As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		IconSize As Integer = 32
	#tag EndProperty

	#tag Property, Flags = &h0
		Pressed As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Template As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		TemplateColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		TextColor As Color = &c000000
	#tag EndProperty

	#tag Property, Flags = &h0
		UseHoverBackColor As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		UsePressedBackColor As Boolean = True
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
			Name="Pressed"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hover"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Icon"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IconSize"
			Visible=true
			Group="Behavior"
			InitialValue="32"
			Type="Integer"
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
			Name="TemplateColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UsePressedBackColor"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColorPressed"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseHoverBackColor"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColorHover"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Active"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColorActive"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
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
	#tag EndViewBehavior
End Class
#tag EndClass
