#tag Module
Protected Module GraphicExtensions
	#tag Method, Flags = &h0
		Sub CreateGradient(extends g as Graphics, Width as Integer, Height as Integer, Points() as Pair, Vertical as Boolean = False)
		  // Example: 
		  // g.CreateGradient( self.Width / 2, self.Height / 2, Array( Pair( 0.0 : RGBa( 100, 0, 0 ) ), Pair( 0.5 : RGBa( 0, 0, 100 ) ), Pair( 1.0 : RGBa( 00, 100, 0 ) ) ), True )
		  
		  Dim w, nextStart As Integer
		  Dim pointOne, pointTwo As pair
		  Dim colorOne, colorTwo, blendedColor As Color
		  Dim pct As Double
		  
		  For i As Integer = 0 To UBound(points) - 1
		    pointOne = points(i)
		    pointTwo = points(i + 1)
		    colorOne = pointOne.Right
		    colorTwo = pointTwo.Right
		    If vertical Then
		      w = (pointTwo.Left.DoubleValue * height) - nextStart
		    Else
		      w = (pointTwo.Left.DoubleValue * width) - nextStart
		    End
		    
		    For x As Integer = 0 To w
		      pct = x / w
		      blendedColor = RGB((colorOne.Red * (1 - pct)) + (colorTwo.Red * pct), _
		      (colorOne.Green * (1 - pct)) + (colorTwo.Green * pct), _
		      (colorOne.Blue * (1 - pct)) + (colorTwo.Blue * pct), _
		      (colorOne.Alpha * (1 -pct)) + (colorTwo.Alpha * pct))
		      g.ForeColor = blendedColor
		      If vertical Then
		        g.DrawLine(-1, x + nextStart, g.Width + 1, x + nextStart)
		      Else
		        g.DrawLine(x + nextStart, -1, x + nextStart, g.Height + 1)
		      End
		    Next
		    
		    nextStart = nextStart + w
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateRadialGradient(extends g as Graphics, Width as Integer, Height as Integer, Points() as Pair, Quality as Integer = 100)
		  // Example:
		  // g.CreateRadialGradient( self.Width, self.Height, Array( Pair( 0.0 : RGBa( 100, 0, 0 ) ), Pair( 0.5 : RGBa( 0, 0, 100 ) ), Pair( 1.0 : RGBa( 00, 100, 0 ) ) ), 100 )
		  
		  // Change the quality property to modify the quality. The higher the number, the more
		  // passes will be made to refine the gradient, at the cost of rendering speed.
		  
		  Dim i, x, y, v, w, h, s, e as Integer
		  Dim pointOne, pointTwo as pair
		  Dim colorOne, colorTwo, blendedColor as Color
		  Dim pct, amt as Double
		  Dim curLeft, curTop, curWidth, curHeight, destLeft, destTop, destWidth, destHeight as Integer
		  
		  g.ForeColor = points(0).Right.ColorValue
		  g.FillRect(0, 0, g.Width, g.Height)
		  
		  For i = 0 To UBound(points) - 1
		    pointOne = points(i)
		    pointTwo = points(i + 1)
		    colorOne = pointOne.Right
		    colorTwo = pointTwo.Right
		    
		    destWidth = ((1 - pointTwo.Left.DoubleValue) * width)
		    destHeight = ((1 - pointTwo.Left.DoubleValue) * height)
		    destLeft = curleft + (destWidth / 2)
		    destTop = curtop + (destHeight / 2)
		    curWidth = (1 - pointOne.Left.DoubleValue) * width
		    curHeight = (1 - pointOne.Left.DoubleValue) * height
		    
		    s = pointOne.Left.DoubleValue * quality
		    e = pointTwo.Left.DoubleValue * quality
		    For v = s To e
		      amt = v / quality
		      x = amt * (width / 2)
		      y = amt * (height / 2)
		      w = width * (1 - (v / quality))
		      h = height * (1 - (v / quality))
		      pct = (v - s) / (e - s)
		      blendedColor = RGB( ( colorone.Red * (1 - pct) ) + ( colorTwo.Red * pct ), _
		      ( colorOne.Green * (1 - pct) ) + ( colorTwo.Green * pct ), _
		      ( colorOne.Blue * (1 - pct) ) + ( colorTwo.Blue * pct ), _
		      ( colorOne.Alpha * (1 - pct) ) + ( colorTwo.Alpha * pct ) )
		      g.ForeColor = blendedColor
		      g.FillOval(x, y, w, h)
		    Next
		    
		    curLeft = curLeft + destLeft
		    curTop = curTop + destTop
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawDiagonalText(extends g As Graphics, Text As String, x As Integer, y As Integer, Width As Integer, Height As Integer)
		  dim s As New StringShape
		  s.Bold = True
		  s.FillColor = g.ForeColor
		  s.Text = Text'+" "
		  s.TextFont = g.TextFont
		  s.TextSize = g.GetMaxFontSize(s.Text, Width, Height)
		  g.TextSize = s.TextSize
		  
		  s.X = Width/2
		  s.Y = (g.TextAscent+Height)/2
		  
		  s.Rotation = ATan((Height-g.TextAscent)/Width)
		  
		  g.DrawObject(s, x, y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawFade(extends g as graphics, ColorStart As Color, ColorEnd As Color, FadeDir As integer = 0, x As Integer = - 1, y As Integer = - 1, Width As integer = - 1, Height As Integer = - 1)
		  dim j, w As Integer
		  dim pct As Double
		  dim colorset() As color
		  
		  if x = -1 Or y = -1 Or Width = -1 Or Height = -1 then
		    x = 0
		    y = 0
		    Width = g.Width
		    Height = g.Height
		    
		  else
		    g = g.Clip(x, y, Width, Height)
		    
		  end if
		  
		  select case FadeDir
		  case 0 // Vertical
		    w = Height
		    
		  case 1 // Horz
		    w = Width
		    
		    dim tmpColor As Color
		    tmpColor = ColorStart
		    ColorStart = ColorEnd
		    ColorEnd = tmpColor
		    
		  case 2 // Vertical
		    w = Height
		    
		    dim tmpColor As Color
		    tmpColor = ColorStart
		    ColorStart = ColorEnd
		    ColorEnd = tmpColor
		    
		  case 3 // Horz
		    w = Width
		    
		  end
		  
		  colorset = ColorExtensions.Gradient(ColorEnd, ColorStart, w)
		  
		  for j = 0 to w
		    pct = j / w
		    g.forecolor = colorset(j)
		    
		    select case FadeDir
		    case 0, 2 // Vertical
		      g.drawline(0, j, Width, j)
		      
		    case 1, 3
		      g.drawline(j, 0, j, Height)
		      
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawGradient(extends g as Graphics, StartColor as Color, EndColor as Color, Left as Integer, Top as Integer, Width as Integer, Height as Integer, IsVertical as Boolean = True)
		  dim ratio, endratio as Double
		  
		  dim x as Integer
		  if IsVertical then
		    x = Height // Top to Bottom
		  else
		    x = Width // Left to Right
		  end if
		  
		  for i as Integer = 0 to x
		    ratio    = ( x - i ) / x
		    endratio = ( i / x )
		    
		    g.ForeColor = RGB( _
		    EndColor.Red * EndRatio + StartColor.Red * Ratio, _
		    EndColor.Green * EndRatio + StartColor.green * Ratio, _
		    EndColor.Blue * EndRatio + StartColor.Blue * Ratio, _
		    EndColor.Alpha * EndRatio + StartColor.Alpha * Ratio )
		    
		    if IsVertical then
		      // Top to Bottom
		      g.DrawLine( Left, Top + i, Left + Width - 1, Top + i )
		    else
		      // Left to Right
		      g.DrawLine( Left + i, Top, Left + i, Top + Height - 1 )
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawImg(extends g As Graphics, p As Picture, mode As Integer, x As Integer, y As Integer, w As Integer, h As Integer, Vert As Integer = 1, Horz As Integer = 1)
		  dim subx, suby, subw, subh As Integer
		  dim Transparency As Double
		  dim Aspect As Double
		  'Mode
		  '0 - Fill Screen (Keep AR)
		  '1 - Fit To Screen (Keep AR)
		  '2 - Strech to Screen
		  '3 - Center (Keep AR)
		  
		  if p = Nil then
		    Exit Sub
		  end if
		  
		  if p.Width < 1 Or p.Height < 1 then
		    Exit Sub
		  end if
		  
		  Transparency = g.Transparency
		  g = g.Clip(x, y, w, h)
		  g.Transparency = Transparency
		  
		  Aspect = p.Width/p.Height
		  
		  subx = 0
		  suby = 0
		  subw = w
		  subh = h
		  
		  Select Case mode
		  Case 0
		    If w / Aspect > h Then
		      subw = w
		      subh = w / Aspect
		    Else
		      subw = h * Aspect
		      subh = h
		    End If
		    
		    subx = (W - subw)/2
		    suby = (H - subh)/2
		    
		  Case 1
		    If w / Aspect < h Then
		      subw = w
		      subh = w / Aspect
		    Else
		      subw = h * Aspect
		      subh = h
		    End If
		    
		    subx = (W - subw)/2
		    suby = (H - subh)/2
		    
		  Case 2
		    subx = 0
		    suby = 0
		    subw = w
		    subh = h
		    
		  Case 3
		    subx = (W - p.Width)/2
		    suby = (H - p.Height)/2
		    subw = p.Width
		    subh = p.Height
		    
		  End Select
		  
		  Select Case Vert
		  Case 0
		    Suby = 0
		  Case 2
		    Suby = h - p.Height
		  End Select
		  
		  Select Case Horz
		  Case 0
		    Subx = 0
		  Case 2
		    Subx = w - p.Width
		  End Select
		  
		  g.DrawPicture(p, subx, suby, subw, subh, 0, 0, p.Width, p.Height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawText(extends g As Graphics, Text As String, x As Integer, y As Integer, Width As Integer = - 1, Height As Integer = - 1, Vert As Integer = 1, Horz As Integer = 1, WordWrap As Boolean = False, Max As Boolean = False)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    Draws text to the screen as the size you want and in the orientation you want.
		  '
		  '    Note: The x and y start in the top left hand corner.
		  '
		  '    Variables
		  '        g        - The Graphics Object
		  '        Text     - The text to be drawn
		  '        x        - The x coordinate for the arrow
		  '        y        - The y coordinate for the arrow
		  '        Width    - The width of the arrow
		  '        Height   - The height of the arrow
		  '        (The following options require the Width and height to be set)
		  '        Vert     - Sets the vertical alignment of the text
		  '                       0: Top
		  '                       1: Middle
		  '                       2: Bottom
		  '        Horz     - Sets the horizontal alignment of the text
		  '                       0: Left
		  '                       1: Center
		  '                       2: Right
		  '        WordWrap - Wraps text with breaks on spaces
		  '        Max      - Auto sizes the text to fill the max amount of space
		  '
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Dim i, t, M, id As Integer
		  Dim subx, suby As Integer
		  Dim yOffset As Integer
		  Dim tParts(0) As String
		  Dim Words() As String
		  Dim clipy As Boolean
		  
		  Clipy = True
		  
		  If Trim(Text) = "" Then
		    Exit Sub
		    
		  End If
		  
		  If Width = 0 Or Height = 0 Then
		    Exit Sub
		    
		  End If
		  
		  Text = Trim(ReplaceLineEndings(Text, EndOfLine))
		  
		  If Width = -1 Or Height = -1 Then
		    Horz = 0
		    Vert = 0
		    WordWrap = False
		    Max = False
		    Clipy = False
		    
		  Else
		    If Clipy Then
		      g = g.Clip(x, y, Width, Height)
		      x = 0
		      y = 0
		      
		    End If
		    
		  End If
		  
		  If Max = True Then
		    g.TextSize = 1
		    
		  End If
		  
		  If InStr(Text, " ") = 0 OR InStr(Text, EndOfLine) > 0  Then
		    WordWrap = False
		    
		  End If
		  
		  If WordWrap = True Then
		    Text = ReplaceLineEndings(Text, " ") // This is a fix for new lines with word wrap. They dont seem to be compatable.
		    
		    Words = Split(Text, " ")
		    
		    If Max = True Then
		      Do
		        i = 0
		        t = 0
		        M = UBound(Words)
		        Redim tParts(0)
		        tParts(0) = Trim(Words(0))
		        While i < M
		          If g.StringWidth(tParts(t) + " " + Trim(Words(i+1))) < Width Then
		            tParts(t) = tParts(t) + " " + Trim(Words(i+1))
		            
		          Else
		            t = t + 1
		            Redim tParts(t)
		            tParts(t) = Words(i+1)
		            
		          End If
		          
		          i = i + 1
		        Wend
		        
		        If (UBound(tParts)+1)*(g.TextHeight) < Height Then
		          g.TextSize = g.TextSize + 1
		          
		        Else
		          g.TextSize = g.TextSize - 1
		          Exit Do
		          
		        End If
		        
		      Loop
		      
		    End If
		    
		    i = 0
		    t = 0
		    M = UBound(Words)
		    Redim tParts(0)
		    tParts(0) = Trim(Words(0))
		    While i < M
		      If g.StringWidth(tParts(t) + " " + Trim(Words(i+1))) < Width Then
		        tParts(t) = tParts(t) + " " + Trim(Words(i+1))
		        
		      Else
		        t = t + 1
		        Redim tParts(t)
		        tParts(t) = Words(i+1)
		        
		      End If
		      
		      i = i + 1
		    Wend
		    
		    If UBound(tParts) = UBound(Words) Then
		      i = 0
		      M = UBound(Words)+1
		      While i < M
		        While g.StringWidth(Words(i)) > Width AND g.TextSize > 1
		          g.TextSize = g.TextSize - 1
		          
		        Wend
		        i = i + 1
		        
		      Wend
		      
		    End If
		    
		  Else
		    If InStr(Trim(Text), EndOfLine) > 0 Then
		      Redim tParts(CountFields(Text, EndOfLine)-1)
		      
		    End If
		    
		    If Max = True Then
		      While g.StringWidth(Text) < Width And g.TextHeight*(UBound(tParts)+1) < Height
		        g.TextSize = g.TextSize + 1
		        
		      Wend
		      g.TextSize = g.TextSize - 1
		      
		    End If
		    
		    tparts = Split(Text, EndOfLine)
		  End If
		  
		  If Max = False And Width > 0 And Height > 0 Then
		    If g.StringWidth(tparts(0)) > Width Or (((UBound(tParts)+1)*g.TextHeight) > Height And UBound(tParts) > 0) Then
		      If ((UBound(tParts)+1)*g.TextHeight) > Height And UBound(tParts) > 0 Then
		        Dim size As Integer
		        size = Floor(Height/g.TextHeight)-1
		        If size < 0 Then
		          size = 0
		          
		        End If
		        Redim tParts(size)
		        
		      End If
		      
		      id = UBound(tParts)
		      Do
		        If g.StringWidth(Trim(tparts(id)) + "...") > Width And Len(tparts(id)) <> 0 Then
		          tparts(id) = Trim(Left(tparts(id), Len(tparts(id))-1))
		          
		        Else
		          tparts(id) = Trim(tparts(id)) + "..."
		          Exit Do
		          
		        End If
		        
		      Loop
		      
		    End If
		    
		  End If
		  
		  Select Case Vert
		  Case 0
		    yOffset = 0
		  Case 1
		    yOffset = Height - (Height + ((UBound(tParts)+1)*g.TextHeight))/2
		  Case 2
		    yOffset = Height - ((UBound(tParts)+1)*g.TextHeight)
		  End Select
		  
		  i = 0
		  M = UBound(tparts) + 1
		  While i < M
		    Select Case Horz
		    Case 0
		      subx = 0
		    Case 1
		      subx = (width - g.StringWidth(tparts(i)))/2
		    Case 2
		      subx = width-g.StringWidth(tparts(i))
		    End Select
		    
		    suby = (g.TextHeight * i) + yOffset
		    
		    g.DrawString(tparts(i), x+subx, y+suby+g.TextAscent)
		    
		    i = i + 1
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetMaxFontSize(extends g As Graphics, text As String, Width As Integer, Height As Integer) As Integer
		  dim SizeWidth, SizeHeight as Integer
		  
		  g.TextSize = 1
		  
		  'Text = ReplaceAll(Text, "0", "O")
		  
		  if g.TextFont = "Monaco" then
		    SizeWidth = Floor(Width/g.StringWidth(Text))
		    SizeHeight = Height * 1.15
		  else
		    SizeWidth = Floor(Width/g.StringWidth(Text))
		    SizeHeight = Height
		  end if
		  
		  if SizeWidth < SizeHeight then
		    Return SizeWidth
		  else
		    Return SizeHeight
		  end If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GradientWipe(extends g as Graphics, ColorList() as Color, Width as Integer, Height as Integer, Left as Integer = 0, Top as Integer = 0, IsVertical as Boolean = True)
		  
		  if ColorList.Ubound = 0 And Width > 0 And Height > 0 then
		    g.FillRect( Left, Top, Width, Height )
		  ElseIf ColorList.Ubound < 1 or Width = 0 or Height = 0 then
		    Exit Sub
		  End If
		  
		  dim j, x as Integer = 0
		  dim Ratio, EndRatio as Double
		  
		  if IsVertical then
		    j = Height \ (ColorList.Ubound)
		  else
		    j = Width \ (ColorList.Ubound)
		  end if
		  
		  dim c1, c2 as Color = ColorList(0)
		  
		  for t as integer = 1 to ColorList.Ubound
		    c2 = c1
		    c1 = ColorList(t)
		    
		    for i as integer = 0 to j
		      Ratio = i / j
		      EndRatio = 1 - Ratio
		      
		      #if RBVersion >= 2011.04 then
		        g.ForeColor = RGB( ( c1.Red * Ratio ) + ( c2.Red * EndRatio ), ( c1.Green * Ratio ) + ( c2.Green * EndRatio ), ( c1.Blue * Ratio ) + ( c2.Blue * EndRatio ), ( c1.Alpha * Ratio ) + ( c2.Alpha * EndRatio ) )
		      #else
		        g.ForeColor = RGB( ( c1.Red * Ratio ) + ( c2.Red * EndRatio ), ( c1.Green * Ratio ) + ( c2.Green * EndRatio ), ( c1.Blue * Ratio ) + ( c2.Blue * EndRatio ) )
		      #endif
		      
		      if IsVertical then
		        g.DrawLine( Left, Top + x, Left + Width - 1, Top + x)
		      else
		        g.DrawLine( Left + x, Top, Left + x, Top + Height - 1)
		      end if
		      
		      x = x + 1
		    next
		    
		  next
		End Sub
	#tag EndMethod


	#tag Note, Name = Sample Gradients
		
		// Active window BG gradient
		  g.DrawGradient( hsl(0, 0, 95), hsl(0, 0, 75), 0, 0, g.Width, Height )
		// InActive window BG gradient
		  g.DrawGradient( hsl(0, 0, 100), hsl(0, 0, 91), 0, 0, g.Width, Height )
		
		
		// Duo tone white gradient (For add/remove controls)
		  g.DrawGradient( hsl(0, 0, 97), hsl(0, 0, 94), 0, 0, g.Width, g.Height / 2 )
		  g.DrawGradient( hsl(0, 0, 90), hsl(0, 0, 92), 0, g.Height / 2, g.Width, g.Height )
		
		
		// White gradient
		  g.ForeColor = HSL( 0, 100, 100 )
		  g.FillRect( 0, 0, g.Width, g.Height )
		  
		  g.DrawGradient( HSL( 0, 100, 100 ), hsl(0, 0, 96), 0, 0, g.Width, g.Height - 1 )
		  
		  g.ForeColor = HSL( 0, 100, 100 )
		  If BorderBottom Then
		    g.DrawLine( 0, g.Height - 2, g.Width, g.Height - 2 )
		  Else
		    g.DrawLine( 0, g.Height - 1, g.Width, g.Height - 1 )
		  End If
		  
		  g.ForeColor = HSLa( 0, 0, 0, 20 )
		  g.DrawLine( 0, 0, g.Width, 0 )
		  If BorderBottom Then g.DrawLine( 0, g.Height - 1, g.Width, g.Height -1 )
		
		// Black gradient
		g.DrawGradient( hsl(0, 0, 15.2941), hsl(0, 0, 26.2745), g.Width, g.Height )
	#tag EndNote


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
