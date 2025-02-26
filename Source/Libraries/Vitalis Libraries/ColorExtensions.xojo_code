#tag Module
Protected Module ColorExtensions
	#tag Method, Flags = &h1
		Protected Function Adjust_hue(c as Color, value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // ±360 Degress
		  
		  Dim MyD() as Double = RGB2HSL( c.Red, c.Green, c.Blue )
		  
		  Return HSL( MyD(0) + value, MyD(1), MyD(2), ( 255 - c.alpha ) / 255 * 100 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Adjust_hue(extends c as Color, value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Adjust_hue( c, value )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Blend(top As Color, base As Color, opacity As Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function blends two Color values and has a similar effect as blending a picture
		  '    with a mask.  The opacity parameter refers to the transparency value of the "top"
		  '    pixel... and works very similar to Photoshop's transparency.  The max is 1.0 and is
		  '    fully opaque, whereas 0.0 is fully transparent.
		  '
		  '    NOTE: the function overhead is too high to make this effective in a loop (see Gradiant)
		  '
		  '    Returns the blended Color.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (opacity > 1.0) Then opacity = 1.0
		  Dim inver As Double = 1.0 - opacity
		  
		  Return RGB( _
		  (top.Red * opacity) + (base.Red * inver), _
		  (top.Green * opacity) + (base.Green * inver), _
		  (top.Blue * opacity) + (base.Blue * inver), _
		  (top.Alpha * opacity) + (base.Alpha * inver) _
		  )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BlendWith(extends top As Color, base As Color, opacity As Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Blend( top, base, opacity )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Complement(c as Color) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Adjust_hue( c, -180 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Complement(extends c as Color) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Adjust_hue( c, -180 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContrastBW(extends c As Color) As Color
		  If (c.ChromaY < 128) Then
		    Return &cFFFFFF
		  Else
		    Return &c000000
		  End If
		  
		  //    Returns either Black or White depending on which color provides the best
		  //    contrast compared with "c".
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Darken(c as Color, value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  If value < 1 Then value = value * 100
		  
		  Dim MyD() as Double = RGB2HSL( c.Red, c.Green, c.Blue )
		  
		  Return HSL( MyD(0), MyD(1), MyD(2) - value, ( 255 - c.alpha ) / 255 * 100 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Darken(extends c as Color, value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Darken( c, value )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Desaturate(c As Color) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function returns a grayscale color based on the luminosity of the source color
		  '    and uses the same formula as Luminance().
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Dim x As Integer = ((c.red * 0.299) + (c.green * 0.587) + (c.blue * 0.114))
		  
		  Return RGB( x, x, x, ( 255 - c.alpha ) / 255 * 100 )
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Desaturate(c as Color, value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  If value < 1 Then value = value * 100
		  
		  Dim MyD() as Double = RGB2HSL( c.Red, c.Green, c.Blue )
		  
		  Return HSL( MyD(0), MyD(1) - value, MyD(2), ( 255 - c.alpha ) / 255 * 100 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Desaturate(extends c As Color) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Desaturate( c )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Desaturate(extends c as Color, value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Desaturate( c, value )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Gradient(front As Color, back As Color, elements As Integer) As Color()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function returns an array of colors (size of elements) smoothly blended from two
		  '    original source colors.
		  '
		  '    For blending only a single pair of colors, use the Blend() function instead.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Dim grad(0) As Color
		  Dim f(3) As Integer
		  Dim b(3) As Integer
		  Dim r, i As Double
		  
		  If elements <= 0 Then
		    // cannot return an empty array, so return blended color
		    grad(0) = Blend(front, back, 0.5)
		  Else
		    // prefetch the individual color parts
		    f(0) = front.Red
		    f(1) = front.Green
		    f(2) = front.Blue
		    f(3) = front.Alpha
		    b(0) = back.Red
		    b(1) = back.Green
		    b(2) = back.Blue
		    b(3) = back.Alpha
		    Redim grad(elements)
		    #pragma BackgroundTasks False
		    For k As Integer = 0 To elements
		      r = (k * 1.0) / elements
		      i  = 1.0 - r
		      grad(k) = RGB( (f(0) * r) + (b(0) * i), (f(1) * r) + (b(1) * i), (f(2) * r) + (b(2) * i), (f(3) * r) + (b(3) * i) )
		    Next
		    #pragma BackgroundTasks True
		  End If
		  
		  Return grad
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Grayscale(c as Color) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Desaturate( c, 100 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Grayscale(extends c as Color) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Desaturate( c, 100 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HexValue(extends c As Color) As String
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    Returns a string with the color formated in its web Hex format like FFFFFF.
		  '
		  '    The variant string value formats a color as "&h000000", so we take advantage of
		  '    that feature and clean up the output so that it is standard web format.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Dim v As Variant = c
		  
		  Return Right(v, 6)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Invert(c as Color) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return RGB( 255 - c.Red, 255 - c.Green, 255 - c.Blue, 255 - c.Alpha )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Invert(extends c as Color) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Invert(c)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsGray(extends c As Color, tolerance As Double = 0.0) As Boolean
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    Tests to see if a Color is gray (within a percentage defined by "tolerance")
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If c.Saturation <= tolerance Then
		    Return True
		  Else
		    Return False
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Lighten(c as Color, value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  If value < 1 Then value = value * 100
		  
		  Dim MyD() as Double = RGB2HSL( c.Red, c.Green, c.Blue )
		  
		  Return HSL( MyD(0), MyD(1), MyD(2) + value, ( 255 - c.alpha ) / 255 * 100 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Lighten(extends c as Color, value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Lighten( c, value )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Multiply(top As Color, base As Color, opacity As Double = 1.0) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function blends two Color values by "multiplying" their perceived values
		  '    and is very common in traditional graphics applications.   This function has the
		  '    opposite effect of the Screen() function.
		  '
		  '    The opacity parameter refers to the transparency value of the "top" pixel... and
		  '    works very similar to Photoshop's transparency.  The max is 1.0 and is fully opaque,
		  '    whereas 0.0 is fully transparent.
		  '
		  '    NOTE: the function overhead is too high to make this effective in a loop (see Gradiant)
		  '
		  '    Returns the blended Color.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (opacity < 1.0) Then
		    Return CMY( _
		    Min(base.Cyan + top.Cyan, 1.0), _
		    Min(base.Magenta + top.Magenta, 1.0), _
		    Min(base.Yellow + top.Yellow, 1.0), _
		    Min(base.Alpha + top.Alpha, 1.0) _
		    )
		  Else
		    Return CMY( _
		    Min(base.Cyan + (top.Cyan * opacity), 1.0), _
		    Min(base.Magenta + (top.Magenta * opacity), 1.0), _
		    Min(base.Yellow + (top.Yellow * opacity), 1.0), _
		    Min(base.Alpha + (top.Alpha * opacity), 1.0) _
		    )
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MultiplyWith(extends top As Color, base As Color, opacity As Double = 1.0) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Multiply( top, base, opacity )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Opacify(c as Color, Value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return RGB( c.Red, c.Green, c.Blue, 255 - ( ( 255 - c.Alpha ) + ( ( Value / 100 ) * 255 ) ) )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Opacify(extends c as Color, Value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Opacify( c, Value )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Saturate(c as Color, value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  If value < 1 Then value = value * 100
		  
		  Dim MyD() as Double = RGB2HSL( c.Red, c.Green, c.Blue )
		  
		  Return HSL( MyD(0), MyD(1) + value, MyD(2), ( 255 - c.alpha ) / 255 * 100 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Saturate(extends c as Color, value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Saturate( c, value )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Screen(top As Color, base As Color, opacity As Double = 1.0) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function blends two Color values by "screening" their perceived values
		  '    and is very common in traditional graphics applications.   This function has the
		  '    opposite effect of the Multiply() function.
		  '
		  '    The opacity parameter refers to the transparency value of the "top" pixel... and
		  '    works very similar to Photoshop's transparency.  The max is 1.0 and is fully opaque,
		  '    whereas 0.0 is fully transparent.
		  '
		  '    NOTE: the function overhead is too high to make this effective in a loop (see Gradiant)
		  '
		  '    Returns the blended Color.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (opacity < 1.0) Then
		    Return RGB( _
		    Min(base.Red + top.Red, 255), _
		    Min(base.Green + top.Green, 255), _
		    Min(base.Blue + top.Blue, 255), _
		    Min(base.Alpha + top.Alpha, 255) _
		    )
		  Else
		    Return RGB( _
		    Min(base.Red + (top.Red * opacity), 255), _
		    Min(base.Green + (top.Green * opacity), 255), _
		    Min(base.Blue + (top.Blue * opacity), 255), _
		    Min(base.Alpha + (top.Alpha * opacity), 255) _
		    )
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScreenWith(extends top As Color, base As Color, opacity As Double = 1.0) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function blends two Color values by "screening" their perceived values
		  '    and is very common in traditional graphics applications.   This function has the
		  '    opposite effect of the Multiply() function.
		  '
		  '    The opacity parameter refers to the transparency value of the "top" pixel... and
		  '    works very similar to Photoshop's transparency.  The max is 1.0 and is fully opaque,
		  '    whereas 0.0 is fully transparent.
		  '
		  '    NOTE: the function overhead is too high to make this effective in a loop (see Gradiant)
		  '
		  '    Returns the blended Color.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Return Screen( top, base, opacity )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Transparentize(c as Color, Value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return RGB( c.Red, c.Green, c.Blue, 255 - ( ( 255 - c.Alpha ) - ( ( Value / 100 ) * 255 ) ) )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Transparentize(extends c as Color, Value as Double) As Color
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Transparentize( c, Value )
		End Function
	#tag EndMethod


	#tag ViewBehavior
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
	#tag EndViewBehavior
End Module
#tag EndModule
