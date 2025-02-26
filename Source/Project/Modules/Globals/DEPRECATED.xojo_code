#tag Module
Protected Module DEPRECATED
	#tag Method, Flags = &h21
		Private Function HTTPGet(URL as String, RandomIP as Boolean = False) As String
		  dim sckt as New HTTPSocket
		  sckt.Yield = True
		  
		  // Set header information IP/User-Agent
		  if RandomIP then
		    dim r as New Random
		    sckt.SetRequestHeader( "REMOTE_ADDR", Str( r.InRange(0, 255) ) + "." + Str( r.InRange(0, 255) ) + "." + Str( r.InRange(0, 255) ) + "." + Str( r.InRange(0, 255) ) )
		  end if
		  
		  'sckt.SetRequestHeader("Accept-Encoding", "gzip, deflate, sdch")
		  sckt.SetRequestHeader("Accept-Language", "en-US,en;q=0.8,nl-NL;q=0.6,nl;q=0.4")
		  sckt.SetRequestHeader("X-Requested-With", "XMLHttpRequest")
		  sckt.SetRequestHeader("X-Prototype-Version", "1.7.1")
		  sckt.SetRequestHeader("DNT", "1")
		  sckt.SetRequestHeader("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17")
		  sckt.SetRequestHeader("Connection", "keep-alive")
		  sckt.SetRequestHeader("Accept", "text/html,text/javascript,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8")
		  
		  
		  // Get content
		  dim Content as String = sckt.Get( URL, 120 )  'Trim( DefineEncoding( sckt.Get( URL, 60 ), Encodings.UTF8 ) )
		  
		  // unzip GZIPped page
		  if sckt.PageHeaders <> Nil and sckt.PageHeaders.Source <> "" and sckt.PageHeaders.Source.Contains( "Content-Encoding: gzip" ) then
		    dim gzipstring as new _gzipstring
		    Content = gzipstring.Decompress( Content )
		  end if
		  
		  Content = DefineEncoding( Content, Encodings.UTF8 )
		  Content = Trim( Content )
		  
		  
		  // Redirected
		  if sckt <> Nil and sckt.HTTPStatusCode = 301 and sckt.PageHeaders <> Nil then
		    URL = sckt.PageHeaders.Value( "Location" )
		    Content = trim( DefineEncoding( sckt.Get( URL, 60 ), Encodings.UTF8 ) )
		    
		    // unzip GZIPped page
		    if sckt.PageHeaders <> Nil and sckt.PageHeaders.Source <> "" and sckt.PageHeaders.Source.Contains( "Content-Encoding: gzip" ) then
		      dim gzipstring as new _gzipstring
		      Content = gzipstring.Decompress( Content )
		    end if
		  end if
		  
		  sckt.Close
		  sckt = Nil // Destroy socket
		  
		  Return Content
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function HTTPGetImage(URL as String) As Picture
		  dim memblock as string = HTTPGet( URL )
		  if memblock <> "" then
		    Return Picture.FromData( memblock )
		  else
		    log "HTTPGetImage( " + URL + ") :: Couldn't fetch image."
		    Return Nil
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function HTTPGetImageSecure(URL as String) As Picture
		  dim memblock as string = HTTPGetSecure( URL )
		  if memblock <> "" then
		    Return Picture.FromData( memblock )
		  else
		    log "HTTPGetImageSecure( " + URL + ") :: Couldn't fetch image."
		    Return Nil
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function HTTPGetSecure(URL as String, RandomIP as Boolean = False) As String
		  dim sckt as new HTTPSecureSocket
		  sckt.Yield = True
		  
		  // Set header information IP/User-Agent
		  if RandomIP then
		    dim r as New Random
		    sckt.SetRequestHeader( "REMOTE_ADDR", Str( r.InRange(0, 255) ) + "." + Str( r.InRange(0, 255) ) + "." + Str( r.InRange(0, 255) ) + "." + Str( r.InRange(0, 255) ) )
		  end if
		  
		  sckt.SetRequestHeader("Accept-Language", "en-US,en;q=0.8,nl-NL;q=0.6,nl;q=0.4")
		  sckt.SetRequestHeader("X-Requested-With", "XMLHttpRequest")
		  'sckt.SetRequestHeader("Accept-Encoding", "gzip, deflate, sdch")
		  sckt.SetRequestHeader("X-Prototype-Version", "1.7.1")
		  sckt.SetRequestHeader("DNT", "1")
		  sckt.SetRequestHeader("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7")
		  sckt.SetRequestHeader("Connection", "keep-alive")
		  sckt.SetRequestHeader("Accept", "text/html,text/javascript,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8")
		  
		  // Get content
		  dim Content as String = sckt.Get( URL, 120 )
		  
		  
		  // unzip GZIPped page
		  if sckt.PageHeaders <> Nil and sckt.PageHeaders.Source <> "" and sckt.PageHeaders.Source.Contains( "Content-Encoding: gzip" ) then
		    dim gzipstring as new _gzipstring
		    Content = gzipstring.Decompress( Content )
		  end if
		  
		  Content = DefineEncoding( Content, Encodings.UTF8 )
		  Content = Trim( Content )
		  
		  
		  // Redirected
		  if sckt <> Nil and sckt.HTTPStatusCode = 301 and sckt.PageHeaders <> Nil then
		    URL = sckt.PageHeaders.Value( "Location" )
		    Content = trim( DefineEncoding( sckt.Get( URL, 60 ), Encodings.UTF8 ) )
		  end if
		  
		  sckt.Close
		  sckt = Nil // Destroy socket
		  
		  Return Content
		End Function
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
