#tag Module
Protected Module PictureExtensions
	#tag Method, Flags = &h0
		Function BlackAndWhite(extends p As Picture) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    First converts the image to Grayscale (using Desaturate function), and then
		  '    applies a RGBSurface.Transform to convert all pixels within the image to
		  '    either absolute Black or absolute White.
		  '
		  '    Returns a copy of "p", which will be a different color depth if p.Depth <= 8.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  if p Is Nil then return Nil
		  
		  Dim copy As Picture
		  
		  If p.Depth <= 16 Then
		    copy = Desaturate(p.Copy(True))
		  Else
		    copy = Desaturate(p)
		  End If
		  
		  Dim r As RGBSurface = copy.RGBSurface
		  
		  static cmap(255) As Integer
		  if cmap(255) = 0 then
		    For k As Integer = 128 To 255
		      cmap(k) = 255
		    Next
		  end if
		  
		  If Not (r Is Nil) Then r.Transform(cmap)
		  
		  Return copy
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Blend(top As Color, base As Color, opacity As Double) As Color
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
		  (top.Blue * opacity) + (base.Blue * inver) _
		  )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy(extends p As Picture, force32Bit As Boolean = False) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    Since you often want to modify copies of pictures, this function makes
		  '    it easy to create a new picture that duplicates the pixel values of the
		  '    original picture.
		  '
		  '    To make this function compatible with masks, we need to do a little
		  '    extra work to extract the RGB data from the Mask.  We need to first
		  '    make a new picture to contain a copy of the mask.  Then we need to
		  '    clear the mask in the *original* picture by filling the mask with black.
		  '    Yes, this modifies the original, but we have no choice and we will
		  '    restore the mask at the end of the function.
		  '
		  '    Please note that this function does not currently duplicate the Object2D
		  '    instead, the same Object2D classes are linked to the copied picture.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Dim mask As Picture
		  Dim gOriginalMask As Graphics
		  Dim copy As Picture
		  
		  If (p Is Nil) Then Return Nil      // there is nothing to do, so return
		  
		  Dim hasMask As Boolean = p.HasMask
		  If hasMask Then
		    mask = New Picture(p.Width, p.Height, 32)     // create temp mask picture
		    mask.Graphics.DrawPicture(p.Mask, 0, 0)      // copy the mask
		    gOriginalMask = p.Mask.Graphics      // get direct graphics object for speed
		    gOriginalMask.ForeColor = &c000000          // clear with black
		    gOriginalMask.FillRect(0, 0, gOriginalMask.Width, gOriginalMask.Height)
		  End If
		  
		  // now we create the new picture copy object and draw 'p'
		  If force32Bit Then
		    copy = New Picture(p.Width, p.Height, 32)
		  Else
		    copy = New Picture(p.Width, p.Height, p.Depth)
		  End If
		  
		  copy.Graphics.DrawPicture(p, 0, 0)
		  
		  If hasMask Then    // draw the mask
		    copy.Mask.Graphics.DrawPicture(mask, 0, 0)
		    gOriginalMask.DrawPicture(mask, 0, 0)      // restore the original mask to 'p'
		  End If
		  
		  // now copy other variables of "p"
		  copy.HorizontalResolution = p.HorizontalResolution
		  copy.VerticalResolution = p.VerticalResolution
		  copy.Objects = p.Objects
		  copy.Transparent = p.Transparent
		  
		  Return copy
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Darken(extends p As Picture, opacity As Double) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function creates a dark version of a picture such as you
		  '    would see for a button that is being clicked.  This function
		  '    creates this effect by overlaying a partly transparent black picture
		  '    on top of the duplicated picture.
		  '
		  '    The picture 'trans' is defined as Static so that it can be cached to
		  '    reduce the overhead for frequent calls to the function.  To be
		  '    compatible with REALbasic 5.5 and earlier, change this to DIM.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (p Is Nil) Then Return Nil      // nothing to do, so return Nil
		  
		  Static trans As Picture
		  
		  If (trans Is Nil) Then
		    trans = New Picture(1, 1, 32)
		    trans.Graphics.Pixel(0, 0) = &c000000
		  End If
		  
		  Dim temp As Picture = p.Copy
		  
		  trans.Mask.Graphics.Pixel(0, 0) = Gray(255 * (1.0 - opacity))
		  temp.Graphics.DrawPicture(trans, 0, 0, temp.Width, temp.Height, 0, 0, 1, 1)
		  
		  Return temp
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Desaturate(extends p As Picture) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function converts the picture into perceptual grayscale by using the same
		  '    formula as the Luminance() function.
		  '
		  '    Returns a desaturated copy of "p".
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Return Desaturate( p )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Desaturate(p As Picture) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function converts the picture into perceptual grayscale by using the same
		  '    formula as the Luminance() function.
		  '
		  '    Returns a desaturated copy of "p".
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (p Is Nil) Then Return Nil
		  
		  Dim copy As Picture = p.Copy
		  Dim g As Graphics
		  Dim r As RGBSurface
		  
		  Dim x, y, xMax, yMax, k As Integer
		  Dim c As Color
		  
		  // Determine if we can use Graphics (fast) or RGBSurface (faster)
		  If (copy.Depth >= 16) And Not (copy.RGBSurface Is Nil) Then
		    r = copy.RGBSurface
		  Else
		    g = copy.Graphics
		  End If
		  
		  xMax = p.Width - 1
		  yMax = p.Height - 1
		  
		  // prefer to use RGBSurface, but if it is not then fall back to Graphics
		  
		  If Not (r Is Nil) Then
		    #pragma BackgroundTasks False
		    For y = 0 To yMax
		      For x = 0 To xMax
		        c = r.Pixel(x, y)
		        k = ((c.red * 0.299) + (c.green * 0.587) + (c.blue * 0.114))
		        r.Pixel(x, y) = RGB(k, k, k)
		      Next
		    Next
		    #pragma BackgroundTasks True
		  Else
		    #pragma BackgroundTasks False
		    For y = 0 To yMax
		      For x = 0 To xMax
		        c = g.Pixel(x, y)
		        k = ((c.red * 0.299) + (c.green * 0.587) + (c.blue * 0.114))
		        g.Pixel(x, y) = RGB(k, k, k)
		      Next
		    Next
		    #pragma BackgroundTasks True
		  End If
		  
		  Return copy
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FlipHorizontal(extends p As Picture) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function flips the picture in the horizontal direction, but does not change
		  '    the size of the picture.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (p Is Nil) Then Return Nil
		  
		  Dim hasMask As Boolean = p.HasMask      // cache result
		  Dim copy As Picture = New Picture(p.Width, p.Height, p.Depth)
		  Dim g, gOriginalMask As Graphics
		  Dim mask As Picture
		  Dim x, xMax As Integer
		  
		  If hasMask Then
		    mask = New Picture(p.Width, p.Height, p.Depth)
		    mask.Graphics.DrawPicture(p.Mask, 0, 0)
		    gOriginalMask = p.Mask.Graphics
		    gOriginalMask.ForeColor = &c000000
		    gOriginalMask.FillRect(0, 0, p.Width, p.Height)
		  End If
		  
		  xMax = p.Width - 1
		  g = copy.Graphics
		  
		  // Copy 1 pixel wide strips of the original picture into the new picture
		  For x = 0 To xMax
		    g.DrawPicture(p, x, 0, 1, g.Height, (xMax - x), 0, 1, g.Height)
		  Next
		  
		  // If there is a mask, we need to do the same thing
		  If hasMask Then
		    g = copy.Mask.Graphics
		    For x = 0 To xMax
		      g.DrawPicture(mask, x, 0, 1, g.Height, (xMax - x), 0, 1, g.Height)
		    Next
		    // restore old mask
		    gOriginalMask.DrawPicture(mask, 0, 0)
		  End If
		  
		  // now copy other variables of "p"
		  copy.HorizontalResolution = p.HorizontalResolution
		  copy.VerticalResolution = p.VerticalResolution
		  copy.Objects = p.Objects
		  copy.Transparent = p.Transparent
		  
		  Return copy
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FlipImageHorizontal(extends p as picture) As picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Dim pic as Picture
		  Dim x, y, x2 as Integer
		  Dim picS, maskS, picS2, maskS2 as RGBSurface
		  
		  pic    = New Picture( p.Width, p.Height, p.Depth )
		  picS   = p.RGBSurface
		  maskS  = p.Mask.RGBSurface
		  picS2  = pic.RGBSurface
		  maskS2 = pic.Mask.RGBSurface
		  
		  For x = p.Width - 1 DownTo 0
		    For y = p.Height - 1 DownTo 0
		      picS2.Pixel(x,y) = picS.Pixel(x2,y)
		      maskS2.Pixel(x,y) = maskS.Pixel(x2,y)
		    Next
		    x2 = x2+1
		  Next
		  
		  Return pic
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FlipImageVertical(extends p as Picture) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Dim pic as picture
		  Dim x, y, y2 as Integer
		  Dim picS, maskS, picS2, maskS2 as RGBSurface
		  
		  pic    = New Picture( p.width, p.height, p.depth )
		  picS   = p.RGBSurface
		  maskS  = p.Mask.RGBSurface
		  picS2  = pic.RGBSurface
		  maskS2 = pic.Mask.RGBSurface
		  
		  For y = p.height - 1 DownTo 0
		    For x = p.width - 1 DownTo 0
		      picS2.Pixel(x,y) =  picS.Pixel(x,y2)
		      maskS2.Pixel(x,y) = maskS.Pixel(x,y2)
		    next
		    y2=y2+1
		  next
		  
		  Return pic
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FlipVertical(extends p As Picture) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function flips the picture in the vertical direction, but does not change
		  '    the size of the picture.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (p Is Nil) Then Return Nil
		  
		  Dim hasMask As Boolean = p.HasMask      // cache result
		  Dim copy As Picture = New Picture(p.Width, p.Height, p.Depth)
		  Dim g, gOriginalMask As Graphics
		  Dim mask As Picture
		  Dim y, yMax As Integer
		  
		  If hasMask Then
		    mask = New Picture(p.Width, p.Height, p.Depth)
		    mask.Graphics.DrawPicture(p.Mask, 0, 0)
		    gOriginalMask = p.Mask.Graphics
		    gOriginalMask.ForeColor = &c000000
		    gOriginalMask.FillRect(0, 0, p.Width, p.Height)
		  End If
		  
		  yMax = p.Height - 1
		  g = copy.Graphics
		  
		  // Copy 1 pixel wide strips of the original picture into the new picture
		  For y = 0 To yMax
		    g.DrawPicture(p, 0, y, g.Width, 1, 0, (yMax - y), g.Width, 1)
		  Next
		  
		  // If there is a mask, we need to do the same thing
		  If hasMask Then
		    g = copy.Mask.Graphics
		    For y = 0 To yMax
		      g.DrawPicture(mask, 0, y, g.Width, 1, 0, (yMax - y), g.Width, 1)
		    Next
		    // restore old mask
		    gOriginalMask.DrawPicture(mask, 0, 0)
		  End If
		  
		  // now copy other variables of "p"
		  copy.HorizontalResolution = p.HorizontalResolution
		  copy.VerticalResolution = p.VerticalResolution
		  copy.Objects = p.Objects
		  copy.Transparent = p.Transparent
		  
		  Return copy
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GrayScale(extends Old_p as Picture) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  If Old_p = Nil Then Return Nil
		  
		  Dim width, height as Integer
		  Dim c as Color
		  Dim gray as Integer
		  
		  Dim New_p as Picture
		  Dim New_RGB as RGBSurface
		  Dim Old_RGB as RGBSurface
		  width = Old_p.Graphics.Width
		  height = Old_p.Graphics.Height
		  
		  // -- GrayScale Image
		  New_p = New Picture( width, height, 32 )
		  New_p.Graphics.drawpicture( Old_p, 0, 0 )
		  New_RGB = New_p.RGBSurface
		  Old_RGB = Old_p.RGBSurface
		  
		  For y as uInt16 = 0 to height
		    For x as uInt16 = 0 to width
		      c = Old_RGB.Pixel( x, y )
		      gray = ( c.red * 0.2989 ) + ( c.green * 0.5870 ) + ( c.blue * .114 )
		      New_RGB.pixel( x, y ) = RGB( gray, gray, gray )
		    Next
		  Next
		  
		  New_p.Mask = Old_p.Mask
		  Return New_p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasMask(extends p As Picture) As Boolean
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Not (p.mask(false) = nil)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Histogram(extends p As Picture, accurate As Boolean = True) As Double()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    A Histogram is the frequency of RGB pixel values within an image.  It is
		  '    usually displayed as a graph in image-editing programs, is a set of data
		  '    showing the relative distribution of pixels of various densities in an Picture.
		  '
		  '    This function returns an array of Doubles with a size of 1024 elements.  The
		  '    array is actually divided into four parts with 256 elements for each part.  The
		  '    function returns the values in the order you see below with elements 0 to 255
		  '    representing Luminance, 256 to 511 representing Red, etc.:
		  '
		  '        Luminance (perceptual gray value)
		  '        Red channel
		  '        Green channel
		  '        Blue channel
		  '
		  '    Values will be returned between 0.0 and 1.0.
		  '
		  '    This function can require a lot of processing since it loops over each pixel.  For
		  '    larger images, you might consider setting "accurate = False":  it gives less
		  '    accurate results, but only samples a fraction of the pixels in the image.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Dim r As RGBSurface
		  Dim g As Graphics
		  Dim x, xMax, y, yMax As Integer
		  Dim c As Color
		  Dim lum As Double
		  Dim graph(1023) As Double
		  
		  If (p Is Nil) Then Return graph      // no pixel data
		  
		  // Determine if we can use Graphics (fast) or RGBSurface (faster)
		  If (p.Depth >= 16) And Not (p.RGBSurface Is Nil) Then
		    r = p.RGBSurface
		  Else
		    g = p.Graphics
		  End If
		  
		  xMax = p.Width - 1
		  yMax = p.Height - 1
		  
		  // loop through the pixels in the image.  When not accurate, will loop
		  // through every other pixel on even lines and every third pixel for odd
		  
		  If accurate Then
		    If Not (r Is Nil) Then
		      For y = 0 To yMax
		        #pragma BackgroundTasks False
		        For x = 0 To xMax
		          c = r.Pixel(x, y)
		          lum = (c.red * 0.299) + (c.green * 0.587) + (c.blue * 0.114)      // same formula
		          graph(lum) = graph(lum) + 1
		          graph(c.Red + 256) = graph(c.Red + 256) + 1
		          graph(c.Green + 512) = graph(c.Green + 512) + 1
		          graph(c.Blue + 768) = graph(c.Blue + 768) + 1
		        Next
		        #pragma BackgroundTasks True
		      Next
		    Else
		      For y = 0 To yMax
		        #pragma BackgroundTasks False
		        For x = 0 To xMax
		          c = g.Pixel(x, y)
		          lum = (c.red * 0.299) + (c.green * 0.587) + (c.blue * 0.114)      // same formula
		          graph(lum) = graph(lum) + 1
		          graph(c.Red + 256) = graph(c.Red + 256) + 1
		          graph(c.Green + 512) = graph(c.Green + 512) + 1
		          graph(c.Blue + 768) = graph(c.Blue + 768) + 1
		        Next
		        #pragma BackgroundTasks True
		      Next
		    End If
		  Else
		    If Not (r Is Nil) Then
		      For y = 0 To yMax
		        #pragma BackgroundTasks False
		        If (y Mod 2) = 0 Then
		          For x = 0 To xMax Step 2
		            c = r.Pixel(x, y)
		            lum = (c.red * 0.299) + (c.green * 0.587) + (c.blue * 0.114)      // same formula
		            graph(lum) = graph(lum) + 1
		            graph(c.Red + 256) = graph(c.Red + 256) + 1
		            graph(c.Green + 512) = graph(c.Green + 512) + 1
		            graph(c.Blue + 768) = graph(c.Blue + 768) + 1
		          Next
		        Else
		          For x = 0 To xMax Step 3
		            c = r.Pixel(x, y)
		            lum = (c.red * 0.299) + (c.green * 0.587) + (c.blue * 0.114)      // same formula
		            graph(lum) = graph(lum) + 1
		            graph(c.Red + 256) = graph(c.Red + 256) + 1
		            graph(c.Green + 512) = graph(c.Green + 512) + 1
		            graph(c.Blue + 768) = graph(c.Blue + 768) + 1
		          Next
		        End If
		        #pragma BackgroundTasks True
		      Next
		    Else
		      For y = 0 To yMax
		        #pragma BackgroundTasks False
		        If (y Mod 2) = 0 Then
		          For x = 0 To xMax Step 2
		            c = g.Pixel(x, y)
		            lum = (c.red * 0.299) + (c.green * 0.587) + (c.blue * 0.114)      // same formula
		            graph(lum) = graph(lum) + 1
		            graph(c.Red + 256) = graph(c.Red + 256) + 1
		            graph(c.Green + 512) = graph(c.Green + 512) + 1
		            graph(c.Blue + 768) = graph(c.Blue + 768) + 1
		          Next
		        Else
		          For x = 0 To xMax Step 3
		            c = g.Pixel(x, y)
		            lum = (c.red * 0.299) + (c.green * 0.587) + (c.blue * 0.114)      // same formula
		            graph(lum) = graph(lum) + 1
		            graph(c.Red + 256) = graph(c.Red + 256) + 1
		            graph(c.Green + 512) = graph(c.Green + 512) + 1
		            graph(c.Blue + 768) = graph(c.Blue + 768) + 1
		          Next
		        End If
		        #pragma BackgroundTasks True
		      Next
		    End If
		  End If
		  
		  // now we need to normalize the data.  "y" is now the maximum value and will
		  // be applied to all values in the second loop to normalize the values between
		  // 0.0 and 1.0.  For the first section (Luminance), only those values need to be
		  // compared.  For the RGB values, the max is found between all three channels.
		  
		  y = 0
		  
		  For x = 0 To 255          // find the max
		    If graph(x) > y Then y = graph(x)
		  Next
		  For x = 0 To 255          // normalize between 0.0 and 1.0
		    graph(x) = graph(x) / y
		  Next
		  
		  y = 0
		  
		  For x = 256 To 1023          // find the max
		    If graph(x) > y Then y = graph(x)
		  Next
		  For x = 256 To 1023          // normalize between 0.0 and 1.0
		    graph(x) = graph(x) / y
		  Next
		  
		  Return graph
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HueShift(extends p As Picture, value As Double) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    Modifies the Picture by adding "value" to each pixel's Hue value to shift most
		  '    of the colors (except grays).  For example, you can use this function to change a
		  '    green button into a red one by passing a value of -0.33.
		  '
		  '    value must be within a range of -1.0 to 1.0.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (p Is Nil) Then Return Nil
		  
		  Dim copy As Picture = p.Copy
		  Dim g As Graphics
		  Dim r As RGBSurface
		  Dim x, xMax, y, yMax As Integer
		  Dim h As Double
		  Dim c As Color
		  
		  xMax = copy.Width - 1
		  yMax = copy.Height - 1
		  
		  // Determine if we can use Graphics (fast) or RGBSurface (faster)
		  If (copy.Depth >= 16) And Not (copy.RGBSurface Is Nil) Then
		    r = copy.RGBSurface
		  Else
		    g = copy.Graphics
		  End If
		  
		  If Not (r Is Nil) Then
		    For y = 0 To yMax
		      #pragma BackgroundTasks False
		      For x = 0 To xMax
		        c = r.Pixel(x, y)
		        h = c.Hue + value
		        If (h > 1.0) Then h = h - 1.0
		        If (h < 0.0) Then h = h + 1.0
		        r.Pixel(x, y) = HSV(h, c.Saturation, c.Value)
		      Next
		      #pragma BackgroundTasks True
		    Next
		  Else
		    For y = 0 To yMax
		      #pragma BackgroundTasks False
		      For x = 0 To xMax
		        c = g.Pixel(x, y)
		        h = c.Hue + value
		        If (h > 1.0) Then h = h - 1.0
		        If (h < 0.0) Then h = h + 1.0
		        g.Pixel(x, y) = HSV(h, c.Saturation, c.Value)
		      Next
		      #pragma BackgroundTasks True
		    Next
		  End If
		  
		  Return copy
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Invert(extends p As Picture, UseMask as Boolean = True) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  #pragma Unused UseMask
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    Inverts all pixels in a Picture.
		  '
		  '    Returns a copy of "p", which will be a different color depth if p.Depth <= 8.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (p Is Nil) Then Return Nil
		  
		  Dim copy As Picture
		  Dim r As RGBSurface
		  Dim k, cmap(255) As Integer
		  
		  If (p.Depth < 16) Then copy = p.Copy(True) Else copy = p.Copy
		  r = copy.RGBSurface
		  
		  For k = 0 To 255
		    cmap(k) = BitwiseXor(k, &hFF)
		  Next
		  
		  If Not (r Is Nil) Then r.Transform(cmap)
		  
		  Return copy
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InvertMask(extends p As Picture) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    Inverts all pixels in a Picture.
		  '
		  '    Returns a copy of "p", which will be a different color depth if p.Depth <= 8.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (p Is Nil) Then Return Nil
		  
		  Dim copy As Picture
		  Dim r As RGBSurface
		  Dim k, cmap(255) As Integer
		  
		  If (p.Depth < 16) Then copy = p.Copy(True) Else copy = p.Copy
		  r = copy.Mask.RGBSurface
		  
		  For k = 0 To 255
		    cmap(k) = BitwiseXor(k, &hFF)
		  Next
		  
		  If Not (r Is Nil) Then r.Transform(cmap)
		  
		  Return copy
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Invert_OLD(extends Old_p as Picture) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  If Old_p = Nil Then Return Nil
		  
		  Dim width, height As Integer
		  'Dim c as Color
		  'Dim gray as Integer
		  
		  Dim New_p as Picture
		  Dim New_RGB as RGBSurface
		  Dim Old_RGB as RGBSurface
		  width = Old_p.Graphics.Width
		  height = Old_p.Graphics.Height
		  
		  // -- GrayScale Image
		  New_p = New Picture( width, height, 32 )
		  New_p.Graphics.drawpicture( Old_p, 0, 0 )
		  New_RGB = New_p.RGBSurface
		  Old_RGB = Old_p.RGBSurface
		  
		  For y as uInt16 = 0 to height
		    For x as uInt16 = 0 to width
		      New_RGB.pixel( x, y ) = ColorExtensions.Invert( Old_RGB.Pixel( x, y ) )
		    Next
		  Next
		  
		  New_p.Mask = Old_p.Mask
		  Return New_p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsGray(extends p As Picture, tolerance As Double = 0.0) As Boolean
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    Tests to see if a Picture is gray (within a percentage defined by "tolerance")
		  '
		  '    This function loops through all of the pixels in the picture and will return FALSE
		  '    as soon as the first pixel is determined to be outside of the tolerance.  Only
		  '    Pictures which evaluate as TRUE will have all pixels compared.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  
		  If (p Is Nil) Then Return False
		  
		  Dim g As Graphics
		  Dim x, y, xMax, yMax As Integer
		  Dim r As RGBSurface
		  
		  // Determine if we can use Graphics (fast) or RGBSurface (faster)
		  If (p.Depth >= 16) And Not (p.RGBSurface Is Nil) Then
		    r = p.RGBSurface
		  Else
		    g = p.Graphics
		  End If
		  
		  xMax = p.Width - 1
		  yMax = p.Height - 1
		  
		  If Not (r Is Nil) Then
		    For y = 0 To yMax
		      #pragma BackgroundTasks False
		      For x = 0 To xMax
		        If (r.Pixel(x, y).Saturation > tolerance) Then Return False
		      Next
		      #pragma BackgroundTasks True
		    Next
		  Else
		    For y = 0 To yMax
		      #pragma BackgroundTasks False
		      For x = 0 To xMax
		        If (g.Pixel(x, y).Saturation > tolerance) Then Return False
		      Next
		      #pragma BackgroundTasks True
		    Next
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Lighten(extends p As Picture, opacity As Double) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function creates a lightened version of a picture such as you
		  '    would see for a button that is being disabled.  This function
		  '    creates this effect by overlaying a partly transparent white picture
		  '    on top of the duplicated picture.
		  '
		  '    The picture 'trans' is defined as Static so that it can be cached to
		  '    reduce the overhead for frequent calls to the function.  To be
		  '    compatible with REALbasic 5.5 and earlier, change this to DIM.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (p Is Nil) Then Return Nil      // nothing to do, so return Nil
		  
		  Static trans As Picture
		  
		  If (trans Is Nil) Then
		    trans = New Picture(1, 1, 32)
		    trans.Graphics.Pixel(0, 0) = &cFFFFFF
		  End If
		  
		  Dim temp As Picture = p.Copy
		  
		  trans.Mask.Graphics.Pixel(0, 0) = Gray(255 * (1.0 - opacity))
		  temp.Graphics.DrawPicture(trans, 0, 0, temp.Width, temp.Height, 0, 0, 1, 1)
		  
		  Return temp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ModernizePicture(input As Picture) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  If input.hasAlphaChannel Then Return input
		  
		  #if TargetCarbon Then Return input
		  
		  Dim result As New Picture( input.Width, input.Height )
		  result.Graphics.DrawPicture( input, 0, 0 )
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Noise(extends p As Picture, amount As Double, grayNoise As Boolean = False) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Noise( p, amount, grayNoise )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Noise(p As Picture, amount As Double, grayNoise As Boolean = False) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function adds Noise to the picture, by tiling it.  We cannot use the tile
		  '    function since this function requires each noise tile to be randomized.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (p Is Nil) Then Return Nil
		  
		  Dim copy As Picture = p.Copy
		  Dim g As Graphics = copy.Graphics
		  Dim x, xMax, y, yMax As Integer
		  
		  xMax = copy.Width - 1
		  yMax = copy.Height - 1
		  
		  For y = 0 To yMax Step 128
		    #pragma BackgroundTasks False
		    For x = 0 To xMax Step 128
		      g.DrawPicture(NoiseTile(amount, grayNoise), x, y)
		    Next
		    #pragma BackgroundTasks True
		  Next
		  
		  // now copy other variables of "p"
		  copy.HorizontalResolution = p.HorizontalResolution
		  copy.VerticalResolution = p.VerticalResolution
		  copy.Objects = p.Objects
		  copy.Transparent = p.Transparent
		  
		  Return copy
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function NoiseTile(opacity As Double, isGrayNoise As Boolean = False) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Static rand As New Random
		  Static noisy As Picture
		  Static r As RGBSurface
		  
		  Dim x, y, j As Integer
		  
		  If (noisy Is Nil) Then
		    noisy = New Picture(128, 128, 32)
		    r = noisy.RGBSurface
		  End If
		  
		  If isGrayNoise Then
		    For y = 0 to 127
		      #pragma BackgroundTasks False
		      For x = 0 To 127
		        j = Rand.InRange(0, 255)
		        r.Pixel(x, y) = RGB(j, j, j)
		      Next
		      #pragma BackgroundTasks True
		    Next
		  Else
		    For y = 0 to 127
		      #pragma BackgroundTasks False
		      For x = 0 To 127
		        r.Pixel(x, y) = RGB(Rand.InRange(0, 255), Rand.InRange(0, 255), Rand.InRange(0, 255))
		      Next
		      #pragma BackgroundTasks True
		    Next
		  End If
		  
		  noisy.Mask.Graphics.ForeColor = Gray((1.0 - opacity) * 255)
		  noisy.Mask.Graphics.FillRect(0, 0, 128, 128)
		  
		  Return noisy
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PixelCount(extends p As Picture) As Integer
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    Returns the total number of pixels within a Picture... useful if you want to
		  '    display the "mega pixels" of an Picture.  To calculate mega pixels, divide result
		  '    by 1000000.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (p Is Nil) Then Return 0      // nothing to do, so return Nil
		  
		  Return p.Width * p.Height
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Rotate180(extends p As Picture) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Rotate180( p )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Rotate180(p As Picture) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function rotates the picture 180 degrees, but does not change the size
		  '    of the picture.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (p Is Nil) Then Return Nil
		  
		  Dim copy As Picture = p.Copy
		  Dim x, xMax, y, yMid, yMax, yRow As Integer
		  Dim g As Graphics
		  Dim r As RGBSurface
		  Dim c As Color
		  
		  xMax = p.Width - 1
		  yMid = (p.Height \ 2) - 1
		  yMax = p.Height - 1
		  
		  // Determine if we can use Graphics (fast) or RGBSurface (faster)
		  If (p.Depth >= 16) And Not (p.RGBSurface Is Nil) Then
		    r = copy.RGBSurface
		  Else
		    g = copy.Graphics
		  End If
		  
		  // Loop through each pixel on the top half and store it on the bottom half the "copy"
		  // picture.  If p.Width is an odd number then the center row must be treated separately.
		  
		  If Not (r Is Nil) Then        // the RGBSurface version
		    For y = 0 To yMid
		      #pragma BackgroundTasks False
		      yRow = yMax - y
		      For x = 0 To xMax
		        c = r.Pixel(x, y)
		        r.Pixel(x, y) = r.Pixel(xMax - x, yRow)
		        r.Pixel(xMax - x, yRow) = c
		      Next
		      #pragma BackgroundTasks True
		    Next
		    If (p.Height Mod 2) = 1 Then
		      #pragma BackgroundTasks False
		      yRow = p.Height \ 2
		      For x = xMax \ 2 DownTo 0      // only do half of the center row
		        c = r.Pixel(x, yRow)
		        r.Pixel(x, yRow) = r.Pixel(xMax - x, yRow)
		        r.Pixel(xMax - x, yRow) = c
		      Next
		      #pragma BackgroundTasks True
		    End If
		  Else        // the Graphics version
		    For y = 0 To yMid
		      #pragma BackgroundTasks False
		      yRow = yMax - y
		      For x = 0 To xMax
		        c = g.Pixel(x, y)
		        g.Pixel(x, y) = g.Pixel(xMax - x, yRow)
		        g.Pixel(xMax - x, yRow) = c
		      Next
		      #pragma BackgroundTasks True
		    Next
		    If (p.Height Mod 2) = 1 Then
		      #pragma BackgroundTasks False
		      yRow = p.Height \ 2
		      For x = xMax \ 2 DownTo 0      // only do half of the center row
		        c = g.Pixel(x, yRow)
		        g.Pixel(x, yRow) = g.Pixel(xMax - x, yRow)
		        g.Pixel(xMax - x, yRow) = c
		      Next
		      #pragma BackgroundTasks True
		    End If
		  End If
		  
		  // If there is a mask, we need to do the same thing as above
		  If p.HasMask Then
		    // Determine if we can use Graphics (fast) or RGBSurface (faster)
		    If (p.Mask.Depth >= 16) And Not (p.Mask.RGBSurface Is Nil) Then
		      r = copy.Mask.RGBSurface
		    Else
		      g = copy.Mask.Graphics
		    End If
		    If Not (r Is Nil) Then        // the RGBSurface version
		      For y = 0 To yMid
		        #pragma BackgroundTasks False
		        yRow = yMax - y
		        For x = 0 To xMax
		          c = r.Pixel(x, y)
		          r.Pixel(x, y) = r.Pixel(xMax - x, yRow)
		          r.Pixel(xMax - x, yRow) = c
		        Next
		        #pragma BackgroundTasks True
		      Next
		      If (p.Height Mod 2) = 1 Then
		        #pragma BackgroundTasks False
		        yRow = p.Height \ 2
		        For x = xMax \ 2 DownTo 0      // only do half of the center row
		          c = r.Pixel(x, yRow)
		          r.Pixel(x, yRow) = r.Pixel(xMax - x, yRow)
		          r.Pixel(xMax - x, yRow) = c
		        Next
		        #pragma BackgroundTasks True
		      End If
		    Else        // the Graphics version
		      For y = 0 To yMid
		        #pragma BackgroundTasks False
		        yRow = yMax - y
		        For x = 0 To xMax
		          c = g.Pixel(x, y)
		          g.Pixel(x, y) = g.Pixel(xMax - x, yRow)
		          g.Pixel(xMax - x, yRow) = c
		        Next
		        #pragma BackgroundTasks True
		      Next
		      If (p.Height Mod 2) = 1 Then
		        #pragma BackgroundTasks False
		        yRow = p.Height \ 2
		        For x = xMax \ 2 DownTo 0      // only do half of the center row
		          c = g.Pixel(x, yRow)
		          g.Pixel(x, yRow) = g.Pixel(xMax - x, yRow)
		          g.Pixel(xMax - x, yRow) = c
		        Next
		        #pragma BackgroundTasks True
		      End If
		    End If
		  End If
		  
		  // now copy other variables of "p"
		  copy.HorizontalResolution = p.HorizontalResolution
		  copy.VerticalResolution = p.VerticalResolution
		  copy.Objects = p.Objects
		  copy.Transparent = p.Transparent
		  
		  Return copy
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Rotate90(extends p As Picture, counterClockwise As Boolean = False) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Rotate90( p, counterClockwise )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Rotate90(p As Picture, counterClockwise As Boolean = False) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function rotates the picture 90 degrees Clockwise or Counter Clockwise
		  '    depending on the value of "counterClockwise".  Default is to rotate Clockwise.
		  '
		  '    Please note that the copied Picture will change dimensions from the original
		  '    with the width and height values swapped.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  If (p Is Nil) Then Return Nil
		  
		  Dim copy As Picture = New Picture(p.Height, p.Width, p.Depth)
		  Dim x, xMax, y, yMax As Integer
		  Dim gs, gd As Graphics
		  Dim rs, rd As RGBSurface
		  
		  xMax = p.Width - 1
		  yMax = p.Height - 1
		  
		  // Determine if we can use Graphics (fast) or RGBSurface (faster)
		  If (p.Depth >= 16) And Not (p.RGBSurface Is Nil) Then
		    rs = p.RGBSurface
		    rd = copy.RGBSurface
		  Else
		    gs = p.Graphics
		    gd = copy.Graphics
		  End If
		  
		  // Loop through each pixel on the top half and store it on the bottom half the "copy"
		  // picture.  If p.Width is an odd number then the center row must be treated separately.
		  
		  If Not (rs Is Nil) Then        // the RGBSurface version
		    If Not counterClockwise Then
		      For y = 0 To yMax
		        '#pragma BackgroundTasks False
		        For x = 0 To xMax
		          rd.Pixel(yMax - y, x) = rs.Pixel(x, y)
		        Next
		        '#pragma BackgroundTasks True
		      Next
		    Else
		      For y = 0 To yMax
		        '#pragma BackgroundTasks False
		        For x = 0 To xMax
		          rd.Pixel(y, xMax - x) = rs.Pixel(x, y)
		        Next
		        '#pragma BackgroundTasks True
		      Next
		    End If
		  Else        // the Graphics version
		    If Not counterClockwise Then
		      For y = 0 To yMax
		        '#pragma BackgroundTasks False
		        For x = 0 To xMax
		          gd.Pixel(yMax - y, x) = gs.Pixel(x, y)
		        Next
		        '#pragma BackgroundTasks True
		      Next
		    Else
		      For y = 0 To yMax
		        '#pragma BackgroundTasks False
		        For x = 0 To xMax
		          gd.Pixel(y, xMax - x) = gs.Pixel(x, y)
		        Next
		        '#pragma BackgroundTasks True
		      Next
		    End If
		  End If
		  
		  // If there is a mask, we need to do the same thing as above
		  If p.HasMask Then
		    // Determine if we can use Graphics (fast) or RGBSurface (faster)
		    If (p.Mask.Depth >= 16) And Not (p.Mask.RGBSurface Is Nil) Then
		      rs = p.Mask.RGBSurface
		      rd = copy.Mask.RGBSurface
		    Else
		      gs = p.Mask.Graphics
		      gd = copy.Mask.Graphics
		    End If
		    If Not (rs Is Nil) Then        // the RGBSurface version
		      If Not counterClockwise Then
		        For y = 0 To yMax
		          '#pragma BackgroundTasks False
		          For x = 0 To xMax
		            rd.Pixel(yMax - y, x) = rs.Pixel(x, y)
		          Next
		          #pragma BackgroundTasks True
		        Next
		      Else
		        For y = 0 To yMax
		          '#pragma BackgroundTasks False
		          For x = 0 To xMax
		            rd.Pixel(y, xMax - x) = rs.Pixel(x, y)
		          Next
		          '#pragma BackgroundTasks True
		        Next
		      End If
		    Else        // the Graphics version
		      If Not counterClockwise Then
		        For y = 0 To yMax
		          '#pragma BackgroundTasks False
		          For x = 0 To xMax
		            gd.Pixel(yMax - y, x) = gs.Pixel(x, y)
		          Next
		          '#pragma BackgroundTasks True
		        Next
		      Else
		        For y = 0 To yMax
		          '#pragma BackgroundTasks False
		          For x = 0 To xMax
		            gd.Pixel(y, xMax - x) = gs.Pixel(x, y)
		          Next
		          '#pragma BackgroundTasks True
		        Next
		      End If
		    End If
		  End If
		  
		  // now copy other variables of "p"  (must swap horizontal and vertical res)
		  copy.HorizontalResolution = p.VerticalResolution
		  copy.VerticalResolution = p.HorizontalResolution
		  copy.Transparent = p.Transparent
		  
		  // cannot copy objects because we would need to rotate them, and that would change
		  // the original picture... has to wait until support for duplicating objects is added.
		  // copy.Objects = p.Objects
		  
		  Return copy
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Scale(extends p As Picture, w As Integer, h As Integer) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Scale( p, w, h )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Scale(p As Picture, w As Integer, h As Integer) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function creates a Scale copy of the original "p".
		  '
		  '    Returns a Picture which is exactly the size "w" and "h".  If you want to scale a
		  '    picture proportionally, use the ScaleWithin() function.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Dim mask As Picture
		  Dim gOriginalMask As Graphics
		  Dim copy As Picture
		  
		  If (p Is Nil) Then Return Nil      // there is nothing to do, so return
		  
		  If p.HasMask Then
		    mask = New Picture(p.Width, p.Height, 32)     // create temp mask picture
		    mask.Graphics.DrawPicture(p.Mask, 0, 0)      // copy the mask
		    gOriginalMask = p.Mask.Graphics      // get direct graphics object for speed
		    gOriginalMask.ForeColor = &c000000          // clear with black
		    gOriginalMask.FillRect(0, 0, gOriginalMask.Width, gOriginalMask.Height)
		    copy = New Picture(w, h, 32)                         // create new picture size of "w" and "h"
		    copy.Graphics.DrawPicture(p, 0, 0, w, h, 0, 0, p.Width, p.Height)
		    copy.Mask.Graphics.DrawPicture(mask, 0, 0, w, h, 0, 0, p.Width, p.Height)
		    gOriginalMask.DrawPicture(mask, 0, 0)      // restore the original mask to 'p'
		  Else
		    copy = New Picture(w, h, 32)                         // create new picture size of "w" and "h"
		    copy.Graphics.DrawPicture(p, 0, 0, w, h, 0, 0, p.Width, p.Height)
		  End If
		  
		  // now copy other variables of "p"
		  copy.HorizontalResolution = p.HorizontalResolution
		  copy.VerticalResolution = p.VerticalResolution
		  copy.Objects = p.Objects
		  copy.Transparent = p.Transparent
		  
		  Return copy
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScaleImage(extends g as Graphics, pic as Picture, Width as Integer, Height as Integer, Left as Integer = 0, Top as Integer = 0, Upscale as Boolean = True)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  If Pic = Nil Then Return
		  
		  Dim Factor as Double = Min( Width / Pic.Width, Height / Pic.Height )
		  If NOT Upscale Then Factor = Min( Factor, 1.0 )
		  
		  Dim NewWidth as Double = Pic.Width * Factor
		  Dim NewHeight as Double = Pic.Height * Factor
		  
		  If NewWidth.InRange() And NewHeight.InRange() Then // Pic isn't too small or too large.
		    g.DrawPicture( Pic, left, top, NewWidth, NewHeight, 0, 0, Pic.Width, Pic.Height )
		  Else
		    g.DrawPicture( Pic, Left, Top, Pic.Width, Pic.Height )
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScaleWithin(extends p As Picture, w As Integer, h As Integer) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function creates a Scale copy of the original "p".
		  '
		  '    Returns a Picture which is would fit within the bounds "w" and "h".  If you want to
		  '    scale a picture to be exactly "w" and "h", use the Scale() function instead.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Return ScaleWithin( p, w, h )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScaleWithin(p As Picture, w As Integer, h As Integer) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function creates a Scale copy of the original "p".
		  '
		  '    Returns a Picture which is would fit within the bounds "w" and "h".  If you want to
		  '    scale a picture to be exactly "w" and "h", use the Scale() function instead.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Dim mask As Picture
		  Dim gOriginalMask As Graphics
		  Dim copy As Picture
		  Dim ratio As Double
		  Dim wFit, hFit As Integer
		  
		  If (p Is Nil) Then Return Nil      // there is nothing to do, so return
		  
		  ratio = Min(h / p.Height, w / p.Width)
		  
		  wFit = p.Width * ratio
		  hFit = p.Height * ratio
		  
		  If p.HasMask Then
		    mask = New Picture(p.Width, p.Height, 32)     // create temp mask picture
		    mask.Graphics.DrawPicture(p.Mask, 0, 0)      // copy the mask
		    gOriginalMask = p.Mask.Graphics              // get direct graphics object for speed
		    gOriginalMask.ForeColor = &c000000          // clear with black
		    gOriginalMask.FillRect(0, 0, gOriginalMask.Width, gOriginalMask.Height)
		    copy = New Picture(wFit, hFit, 32)                 // create new picture size of "wFit" and "hFit"
		    copy.Graphics.DrawPicture(p, 0, 0, wFit, hFit, 0, 0, p.Width, p.Height)
		    copy.Mask.Graphics.DrawPicture(mask, 0, 0, wFit, hFit, 0, 0, p.Width, p.Height)
		    gOriginalMask.DrawPicture(mask, 0, 0)      // restore the original mask to 'p'
		  Else
		    copy = New Picture(wFit, hFit, 32)                // create new picture size of "w" and "h"
		    copy.Graphics.DrawPicture(p, 0, 0, wFit, hFit, 0, 0, p.Width, p.Height)
		  End If
		  
		  // now copy other variables of "p"
		  copy.HorizontalResolution = p.HorizontalResolution
		  copy.VerticalResolution = p.VerticalResolution
		  copy.Objects = p.Objects
		  copy.Transparent = p.Transparent
		  
		  Return copy
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TemplateSetColor(extends Image as Picture, theColor as Color) As Picture
		  Return TemplateSetColor(Image, theColor)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TemplateSetColor(Image as Picture, theColor as Color) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  dim pict, mask as Picture
		  pict = new Picture( Image.width, Image.Height, 32 )
		  mask = new Picture( Image.width, Image.Height, 8 )
		  
		  mask.Graphics.DrawPicture   Image, 0, 0
		  
		  pict.Graphics.DrawingColor = theColor
		  pict.Graphics.FillRectangle   0, 0, pict.Width, pict.Height
		  'pict.Mask( true ).Graphics.DrawPicture   mask, 0, 0
		  pict.ApplyMask( mask )
		  
		  return  pict
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TemplateSetGradient(Extends Image as Picture, StartColor as Color, EndColor as Color) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return TemplateSetGradient(Image, StartColor, EndColor)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TemplateSetGradient(Image as Picture, StartColor as Color, EndColor as Color) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  dim pic, mask as Picture
		  pic  = new Picture(Image.Width, Image.Height, 32)
		  mask = new Picture(Image.Width, Image.Height, 8)
		  
		  mask.Graphics.DrawPicture Image, 0, 0
		  
		  pic.Graphics.DrawGradient( StartColor, EndColor, 0, 0, pic.Width, pic.Height )
		  'pic.Mask(true).Graphics.DrawPicture mask, 0, 0
		  pic.ApplyMask( mask )
		  
		  Return pic
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tile(extends p As Picture, w As Integer, h As Integer) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function takes a smaller Picture "p" and tiles it into a larger area "w" x "h".
		  '    Returns a Picture.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Return Tile( p, w, h )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tile(p As Picture, w As Integer, h As Integer) As Picture
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  '
		  '    This function takes a smaller Picture "p" and tiles it into a larger area "w" x "h".
		  '    Returns a Picture.
		  '
		  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		  
		  Dim tiled As Picture = New Picture(w, h, 32)
		  Dim g As Graphics = tiled.Graphics
		  Dim x, xMax, y, yMax As Integer
		  
		  If (p Is Nil) Then Return tiled      // nothing to do, so return the blank picture
		  
		  xMax = w - 1
		  yMax = h - 1
		  
		  For y = 0 To yMax Step p.Height
		    #pragma BackgroundTasks False
		    For x = 0 To xMax Step p.Width
		      g.DrawPicture(p, x, y)
		    Next
		    #pragma BackgroundTasks True
		  Next
		  
		  Return tiled
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToData(extends p as Picture) As String
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  if p <> Nil and p.Width > 0 and p.Height > 0 then
		    Return "data:img/png;base64," + EncodeBase64( p.GetData( Picture.FormatPNG ) )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHTML(extends p as Picture, ClassName as String = "", SetDimensions as Boolean = True, AltText as String = "") As String
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  If p = Nil Then Return ""
		  
		  If ClassName <> "" Then ClassName = " class='" + ClassName + "'"
		  If AltText <> "" Then AltText = " alt='" + AltText + "'"
		  
		  Dim s as String = p.GetData( Picture.FormatPNG )
		  s = "<img src='data:img/png;base64," + EncodeBase64(s)' + "' width=" + Str(MyPic.Width) + " height=" + Str(MyPic.Height) + " />"
		  
		  If SetDimensions Then
		    s = s + "' width=" + Str(p.Width) + " height=" + Str(p.Height) + AltText + ClassName + " />"
		  Else
		    s = s + "'" + AltText + ClassName + " />"
		  End If
		  
		  Return s
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
