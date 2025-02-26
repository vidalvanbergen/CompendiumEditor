#tag Module
Protected Module Globals
	#tag Method, Flags = &h0
		Function CharacterLimitations(t as String) As String
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  't = DefineEncoding( t, Encodings.UTF8 )
		  Dim TheSource as String = t
		  
		  Dim TheText as String
		  Dim CurChr as Integer = 1
		  
		  Do Until CurChr -1 = TheSource.Len'gth
		    
		    'dim t as string = Mid( s, CurChr, 1 )
		    'dim i as Integer = Asc( Mid( s, CurChr, 1 ) )
		    'dim n as Integer = Asc( Mid( s, CurChr, 2 ) )
		    'dim e as string = "0" + Hex( Asc( Mid( s, CurChr, 1 ) ) )
		    
		    Select Case Asc( TheSource.Mid( CurChr, 1 ) )
		    Case Is < 10000 '32, 48 To 57, 65 To 90, 97 To 122', Is > 255 // Allowed characters
		      TheText = TheText + TheSource.Mid( CurChr, 1 )
		    Else
		      'TheText = TheText + "%" + Right( "0" + Hex( Asc( t.Mid( CurChr, 1 ) ) ), 2 ).ToText
		    End Select
		    
		    CurChr = CurChr + 1
		  Loop
		  
		  Return TheText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DecodeHTML(Extends HTMLString as String) As String
		  Return DecodeHTML(  HTMLString )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DecodeHTML(HTMLString as String) As String
		  
		  // Simplify quotes
		  HTMLString = HTMLString.ReplaceAll( "“", """" )
		  HTMLString = HTMLString.ReplaceAll( "”", """" )
		  HTMLString = HTMLString.ReplaceAll( "‘", "'" )
		  HTMLString = HTMLString.ReplaceAll( "’", "'" )
		  HTMLString = HTMLString.ReplaceAll( "â€™", "'" )
		  'HTMLString = HTMLString.ReplaceAll( "‚Äî", "—" )
		  
		  HTMLString = HTMLString.ReplaceAll( "<br />", EndOfLine )
		  HTMLString = HTMLString.ReplaceAll( "<br/>", EndOfLine )
		  HTMLString = HTMLString.ReplaceAll( "<br>", EndOfLine )
		  
		  Return HTMLString.UnescapeHTML
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FontAvailable(FontName as String) As Boolean
		  for i as Integer = 0 to FontCount -1
		    if Font(i) = FontName then
		      Return True
		    else
		      Continue
		    end if
		  next
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FrameSaveGet(Extends w as DesktopWindow, Name as String)
		  dim Frame as String = AppSettings.Prefs.Value( "FramePosition " + Name, "" )
		  
		  if Frame <> "" then
		    dim framePoints() as string = Frame.Split( " " )
		    
		    if framePoints.Ubound = 3 then
		      w.Left = Val( framePoints( 0 ) )
		      w.Top = Val( framePoints( 1 ) )
		      w.Width = Val( framePoints( 2 ) )
		      w.Height = Val( framePoints( 3 ) )
		    end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FrameSaveGet(Extends w as Window, Name as String)
		  dim Frame as String = AppSettings.Prefs.Value( "FramePosition " + Name, "" )
		  
		  if Frame <> "" then
		    dim framePoints() as string = Frame.Split( " " )
		    
		    if framePoints.Ubound = 3 then
		      w.Left = Val( framePoints( 0 ) )
		      w.Top = Val( framePoints( 1 ) )
		      w.Width = Val( framePoints( 2 ) )
		      w.Height = Val( framePoints( 3 ) )
		    end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FrameSaveSet(Extends w as DesktopWindow, Name as String)
		  AppSettings.Prefs.Value( "FramePosition " + Name ) = Str( w.Left ) + " " + Str( w.Top ) + " " + Str( w.Width ) + " " + Str( w.Height )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FrameSaveSet(Extends w as Window, Name as String)
		  AppSettings.Prefs.Value( "FramePosition " + Name ) = Str( w.Left ) + " " + Str( w.Top ) + " " + Str( w.Width ) + " " + Str( w.Height )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSafeFileName(name as String) As String
		  dim newName as string = Trim( name )
		  
		  newName = newName.ReplaceAll( ":", " - " )
		  
		  // Remove double spaces
		  if newName.Contains( "  " ) then
		    while newName.Contains( "  " )
		      newName = newName.ReplaceAll( "  ", " " )
		    wend
		  end if
		  
		  // Remove dots from start
		  if newName.StartsWith( "." ) then
		    while newName.StartsWith( "." )
		      newName = newName.Right( newName.Len - 1 )
		    wend
		  end if
		  
		  return newName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsDarkMode() As Boolean
		  #if TargetMacOS
		    #if XojoVersion >= 2018.03 then
		      Return IsDarkMode
		    #else
		      // See https://developer.apple.com/documentation/appkit/nsappearance
		      Declare Function NSClassFromString Lib "Foundation" (classname As CFStringRef) As Ptr
		      Declare Function NSAppearanceCurrentApperance Lib "Foundation" Selector "currentAppearance" (classname As Ptr) As Ptr
		      Declare Function NSAppearanceName Lib "Foundation" Selector "name" (obj As Ptr) As CFStringRef
		      
		      dim nsa as Ptr = NSClassFromString("NSAppearance")
		      dim currentAppearance as Ptr = NSAppearanceCurrentApperance(nsa)
		      if currentAppearance <> nil then
		        dim name as string = NSAppearanceName(currentAppearance)
		        if name = "NSAppearanceNameDarkAqua" then
		          return true
		        end if
		      end if
		      return false
		    #endif
		  #else
		    return false
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MemoryBlockToString(content as Xojo.Core.MemoryBlock) As String
		  if content <> Nil and content.Size > 0 then
		    Return CType(content.Data, MemoryBlock).StringValue(0, content.Size)
		  else
		    Return ""
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MemoryBlockToText(content as Xojo.Core.MemoryBlock) As Text
		  if content <> Nil and content.Size > 0 then
		    Return Xojo.Core.TextEncoding.UTF8.ConvertDataToText( Content )
		  else
		    Return ""
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SavePictureTo(Extends image as Picture, Destination as FolderItem, Type as FileType, Quality as Integer = 65) As Boolean
		  
		  if image <> Nil and Destination <> Nil and Destination.IsWriteable then
		    
		    if Type = FileTypeImages.Jpeg then
		      Destination.Name = Destination.NameNoExtension + ".jpg"
		      image.Save( Destination, Picture.SaveAsJPEG, Quality )
		      Return True
		    elseif type = FileTypeImages.Png then
		      Destination.Name = Destination.NameNoExtension + ".png"
		      image.Save( Destination, Picture.SaveAsPNG, Quality )
		      Return True
		    end if
		    
		  end if
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URLGet(URL as String) As String
		  dim uconnection as new URLConnection
		  Return uconnection.SendSync("GET", URL, 30)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URLGetImage(URL as String) As Picture
		  dim data as String = URLGet(URL)
		  if data <> "" then
		    dim image as Picture = Picture.FromData(data)
		    
		    if image <> Nil then
		      Return image
		    end if
		  end if
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VariantArrayToStrings(theObjects as Variant) As String()
		  
		  if theObjects <> Nil then
		    dim theStringArray() as string
		    
		    if theObjects.IsArray and theObjects.ArrayElementType = Variant.TypeString then
		      theStringArray = theObjects
		      
		    elseif theObjects.IsArray then
		      
		      Try
		        dim theVariantArray() as Variant = theObjects
		        for each obj as Variant in theVariantArray
		          theStringArray.Append obj.StringValue
		        next
		      catch e as TypeMismatchException
		        'MessageBox e.Message
		        Log "TypeMismatchException in VariantArrayToStrings(), theObjects were not made of strings."
		      End Try
		      
		    else
		      //
		    end if
		    
		    Return theStringArray
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteBinaryFile(Content as Variant, Destination as FolderItem)
		  
		  if Destination <> Nil and Destination.Parent.Exists and Destination.Parent.IsWriteable then
		    dim bs as BinaryStream
		    bs = BinaryStream.Create( Destination, True )
		    
		    if bs <> Nil then
		      bs.Write( Content )
		      bs.Close
		    end if
		    
		  else
		    log "Couldn't write binary stream"
		  end if
		  
		  
		  Exception err as IOException
		    log "Cannot write binary file: " + str( err.ErrorNumber ) + " :: " + err.Message
		    
		  Exception err as NilObjectException
		    log "Cannot write binary file: " + str( err.ErrorNumber ) + " :: " + err.Message
		End Sub
	#tag EndMethod


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
