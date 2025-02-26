#tag Class
Protected Class LinkLabelCanvas
Inherits Canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If IsContextualClick then
		    Dim base as new MenuItem
		    base.Append new MenuItem ( kCopyLink )
		    Dim HitItem as MenuItem = base.PopUp
		    If HitItem <> Nil and HitItem.Text = kCopyLink then
		      Dim c as new Clipboard
		      c.Text = URL
		    end if
		  Else
		    MyState = 2
		    me.Invalidate
		    Return True
		  End If
		  
		  
		  #Pragma Unused X
		  #Pragma Unused Y
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  If x < 0 or x > me.Width or _
		    y < 0 or y > me.Height then
		    MyState = 0
		    me.Invalidate
		  ElseIf x > 0 or x < me.Width or y > 0 or y < me.Height then
		    MyState = 2
		    me.Invalidate
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  MyState = 1
		  me.Invalidate
		  MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  MyState = 0
		  me.Invalidate
		  MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  If X > 0 and Y > 0 and X < StringWidth + 5 and Y < 20 then
		    MyState = 1
		    me.Invalidate
		    
		    if email then
		      ShowURL "mailto:" + URL
		    else
		      ShowURL URL
		    end if
		  Else
		    MyState = 0
		    me.Invalidate
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  'Width = 20 + 5 + Graphics.StringWidth( Text ) + 15
		  Open
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma Unused areas
		  
		  if StringWidth  <= 0 then StringWidth = 20 + 5 + g.StringWidth( Text ) + 5
		  if StringHeight <= 0 then StringHeight = g.StringHeight( Text, StringWidth )
		  
		  g.AntiAlias = True
		  
		  dim HelpInactiveArrow as Picture
		  #if TargetMacOS then
		    HelpInactiveArrow = SystemIcons.FollowLinkFreestandingTemplate( 16, 16 ).IconTemplateSetColor( HSL( 0, 0, 60 ) )
		  #endif
		  
		  dim HelpActiveArrow as Picture
		  #if TargetMacOS then
		    HelpActiveArrow = SystemIcons.FollowLinkFreestandingTemplate( 16, 16 ).IconTemplateSetColor( HSL( 0, 100, 100 ) )
		  #endif
		  
		  
		  Select case MyState
		    // Normal
		  case 0
		    g.Bold = False
		    if HelpInactiveArrow <> Nil then
		      g.DrawPicture HelpInactiveArrow, 2, ( g.Height / 2 ) - ( 16 / 2 ), 16, 16,  0, 0, HelpInactiveArrow.Width, HelpInactiveArrow.Height
		    end if
		    
		    'g.ForeColor = &c000000
		    if IsDarkMode then
		      g.ForeColor = &cFFFFFF
		    end if
		    g.DrawString Text, 25, g.TextAscent + ( g.Height / 2 ) - ( g.StringHeight( Text, g.Width - 25 ) / 2 )  'StringHeight - 1
		    
		    
		    // Hover
		  case 1
		    g.Bold = True
		    g.ForeColor = HSL( 0, 0, 66 )
		    g.FillRoundRect 0, 0, 20 + 5 + g.StringWidth( Text ) + 10, 20, 20, 20
		    if HelpActiveArrow <> Nil then
		      g.DrawPicture HelpActiveArrow, 2, ( g.Height / 2 ) - ( 16 / 2 ), 16, 16,  0, 0, HelpActiveArrow.Width, HelpActiveArrow.Height
		    end if
		    
		    g.ForeColor = HSL( 0, 0, 0, 20 )
		    g.DrawString Text, 25, g.TextAscent + ( g.Height / 2 ) - ( g.StringHeight( Text, StringWidth ) / 2 ) + 1 'StringHeight
		    g.ForeColor = HSL( 0, 0, 100 )
		    g.DrawString Text, 25, g.TextAscent + ( g.Height / 2 ) - ( g.StringHeight( Text, StringWidth ) / 2 ) 'StringHeight - 1
		    
		    // Pressed
		  case 2
		    g.Bold = True
		    g.ForeColor = HSL( 0, 0, 33 ) '&c858585
		    g.FillRoundRect 0, 0, 20 + 5 + g.StringWidth( Text ) + 10, 20, 20, 20
		    if HelpActiveArrow <> Nil then
		      g.DrawPicture HelpActiveArrow, 2, ( g.Height / 2 ) - ( 16 / 2 ), 16, 16,  0, 0, HelpActiveArrow.Width, HelpActiveArrow.Height
		    end if
		    
		    g.ForeColor = HSL( 0, 0, 0 )
		    g.DrawString Text, 25, g.TextAscent + ( g.Height / 2 ) - ( g.StringHeight( Text, StringWidth ) / 2 ) + 1 'StringHeight
		    g.ForeColor = HSL( 0, 0, 100 )
		    g.DrawString Text, 25, g.TextAscent + ( g.Height / 2 ) - ( g.StringHeight( Text, StringWidth ) / 2 ) 'StringHeight - 1
		  End Select
		  
		  'Self.Width = 20 + 5 + Graphics.StringWidth( Text ) + 10
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag Property, Flags = &h0
		email As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		MyState As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		StringHeight As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		StringWidth As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Text As String
	#tag EndProperty

	#tag Property, Flags = &h0
		URL As String = "http://"
	#tag EndProperty


	#tag Constant, Name = kCopyLink, Type = String, Dynamic = True, Default = \"Copy Link", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Copy Link"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Kopieer koppeling"
	#tag EndConstant


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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
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
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="20"
			Type="Integer"
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
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
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
			Name="LockRight"
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
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
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
			InitialValue="200"
			Type="Integer"
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
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
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
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group="Initial State"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MyState"
			Visible=false
			Group="Link"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringHeight"
			Visible=false
			Group="Link"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringWidth"
			Visible=false
			Group="Link"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Link"
			InitialValue="Link"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="URL"
			Visible=true
			Group="Link"
			InitialValue="http://"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="email"
			Visible=true
			Group="Link"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
