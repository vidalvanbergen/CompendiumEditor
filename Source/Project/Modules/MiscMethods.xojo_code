#tag Module
Protected Module MiscMethods
	#tag Method, Flags = &h0
		Function Articulator(ItemName as string) As String
		  // English
		  if ItemName.StartsWith( "The " ) then
		    ItemName = ItemName.Right( ItemName.Len - 4 ) + ", The"
		  elseif ItemName.StartsWith( "A " ) then
		    ItemName = ItemName.Right( ItemName.Len - 2 ) + ", A"
		  elseif ItemName.StartsWith( "An " ) then
		    ItemName = ItemName.Right( ItemName.Len - 3 ) + ", An"
		    
		    // Nederlands
		  elseif ItemName.StartsWith( "Het " ) then
		    ItemName = ItemName.Right( ItemName.Len - 4 ) + ", Het"
		  elseif ItemName.StartsWith( "De " ) then
		    ItemName = ItemName.Right( ItemName.len - 3 ) + ", De"
		  elseif ItemName.StartsWith( "Een " ) then
		    ItemName = ItemName.Right( ItemName.Len - 4 ) + ", Een"
		  end if
		  
		  return ItemName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CountryCodeToFlagEmoji(Code as String) As String
		  Select case Code
		  case "au"
		    return "🇦🇺"
		  case "ar"
		    return "🇸🇦"
		  case "be"
		    return "🇧🇪"
		  case "br"
		    return "🇧🇷"
		  case "ca"
		    return "🇨🇦"
		  case "cs"
		    return "🇨🇿"
		  case "da"
		    return "🇩🇰"
		  case "de"
		    return "🇩🇪"
		  case "es"
		    return "🇪🇸"
		  case "fi"
		    return "🇫🇮"
		  case "fr"
		    return "🇫🇷"
		  case "gb", "uk", "en"
		    return "🇬🇧"
		  case "gr"
		    return "🇬🇷"
		  case "hr"
		    return "🇭🇷"
		  case "hu"
		    return "🇭🇺"
		  case "ie"
		    return "🇮🇪"
		  case "il"
		    return "🇮🇱"
		  case "it"
		    return "🇮🇹"
		  case "ja"
		    return "🇯🇵"
		  case "ko"
		    return "🇰🇷"
		  case "mx"
		    return "🇲🇽"
		  case "nl"
		    return "🇳🇱"
		  case "no"
		    return "🇳🇴"
		  case "pl"
		    return "🇵🇱"
		  case "pt"
		    return "🇵🇹"
		  case "ro"
		    return "🇷🇴"
		  case "ru"
		    return "🇷🇺"
		  case "se"
		    return "🇸🇪"
		  case "sl"
		    return "🇸🇱"
		  case "sv"
		    return "🇸🇪"
		  case "tr"
		    return "🇹🇷"
		  case "us"
		    return "🇺🇸"
		  case "vn"
		    Return "🇻🇳"
		  case "zh"
		    return "🇨🇳"
		    
		  else
		    return ""
		  end Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CountryToCode(Name as String) As String
		  
		  Select case name
		    
		  case "Arabic", "عربي"
		    return "ar"
		  case "Chinese", "中文"
		    return "zh"
		  case "English"
		    return "en"
		  case "French", "Français"
		    return "fr"
		  case "Hungarian", "Magyar"
		    return "hu"
		  case "Italian", "Italiano"
		    return "it"
		  case "Polish", "Polski"
		    return "pl"
		  case "Portuguese", "Português"
		    return "pt"
		  case "Romanian", "Română"
		    return "ro"
		  case "Russian", "русский"
		    return "ru"
		  case "Spanish", "Español"
		    return "es"
		  case "Vietnamese", "Tiếng Việt"
		    return "vn"
		  case "Japanese", "日本語"
		    return "ja"
		  case "Korean", "한국어"
		    return "ko"
		  case "Netherlands", "Nederland"
		    Return "nl"
		    
		  else
		    return "en"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URLFileName(URL as String) As String
		  if URL <> "" then
		    dim FileName as string
		    if URL.EndsWith( "/" ) then
		      FileName = URL.NthField( "/", URL.CountFields( "/" ) -1 )
		    else
		      FileName = URL.NthField( "/", URL.CountFields( "/" ) )
		    end if
		    return FileName
		    
		  else
		    return ""
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URLHost(URL as String) As String
		  #if TargetMacOS then
		    dim nsu as new NSURL(URL)
		    if nsu <> Nil then
		      Return nsu.Host
		    end if
		  #else
		    URL = URL.Replace( "http://", "" )
		    URL = URL.Replace( "https://", "" )
		    URL = URL.Replace( "www.", "" )
		    
		    dim host as string = URL.NthField( "/", 1 )
		    Return host
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URLHost(URL as String, WholeHost as Boolean) As String
		  if URL <> "" then
		    #if TargetMacOS then
		      dim nsu as new NSURL(URL)
		      if nsu <> Nil then
		        dim host as string = nsu.Host
		        
		        if WholeHost then // "http(s)://" + host
		          Return URL.NthField( host, 1 ) + host
		        else
		          Return host
		        end if
		        
		      else
		        
		      end if
		      
		    #else
		      dim originalURL as string = URL
		      URL = URL.Replace( "http://", "" )
		      URL = URL.Replace( "https://", "" )
		      URL = URL.Replace( "www.", "" )
		      
		      dim host as string = URL.NthField( "/", 1 )
		      if WholeHost then
		        host = originalURL.NthField( host, 1 ) + host
		        return host
		      else
		        return host
		      end if
		    #endif
		    
		  end if
		  
		  return ""
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
