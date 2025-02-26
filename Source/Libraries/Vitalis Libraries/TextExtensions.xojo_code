#tag Module
Protected Module TextExtensions
	#tag Method, Flags = &h0
		Sub Append(extends t() as Text, s() as Text)
		  //# Appends an array of strings to another array of strings
		  
		  for i as integer = 0 to UBound(s)
		    t.Append s(i)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Append(extends ByRef t as Text, s as Text) As String
		  t = t + s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Contains(extends t as Text, substring as Text) As Boolean
		  //# Return true if 'substring' is contained in 's' (comparison is case-insensitive)
		  
		  return  ( t.IndexOf( substring ) > 0 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsRegEx(extends source as Text, start as Integer, pattern as Text, caseSensitive as Boolean = True) As Boolean
		  Return ( IndexOfRegEx( start, source, pattern, caseSensitive ) > 0 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count(extends source As Text, substr As Text) As Integer
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return how many non-overlapping occurrences of 'substr' there
		  // are in 'source'.
		  
		  Return Count( source, substr )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count(source As Text, substr As Text) As Integer
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return how many non-overlapping occurrences of 'substr' there
		  // are in 'source'.
		  
		  Dim theCount As Integer
		  Dim substrLength As Integer
		  Dim start As Integer
		  
		  substrLength = substr.Length
		  If substrLength = 0 Then Return source.Length + 1
		  
		  start = 1
		  Do
		    start= source.IndexOf( start, substr )
		    If start < 1 Then Return theCount
		    theCount = theCount + 1
		    start = start + substrLength
		  Loop
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EncodeURLComponent(t as Text) As Text
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Dim URL as Text
		  Dim CurChr as Integer = 1
		  
		  Do Until CurChr -1 = t.Length
		    
		    'dim t as string = Mid( s, CurChr, 1 )
		    'dim i as Integer = Asc( Mid( s, CurChr, 1 ) )
		    'dim n as Integer = Asc( Mid( s, CurChr, 2 ) )
		    'dim e as string = "0" + Hex( Asc( Mid( s, CurChr, 1 ) ) )
		    
		    Select Case Asc( t.Mid( CurChr, 1 ) )
		    Case 48 To 57, 65 To 90, 97 To 122, Is > 255 // Allowed characters
		      URL = URL + t.Mid( CurChr, 1 )
		    Case 32
		      URL = URL + "%" + Hex(32).ToText
		    Else
		      URL = URL + "%" + Right( "0" + Hex( Asc( t.Mid( CurChr, 1 ) ) ), 2 ).ToText
		    End Select
		    
		    CurChr = CurChr + 1
		  Loop
		  
		  Return URL
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IndexOfRegEx(start as Integer, source as Text, pattern as Text, caseSensitive as Boolean = True) As Integer
		  dim rx as New RegEx
		  dim MyMatch as RegExMatch
		  
		  if pattern = "" or source = "" then
		    return 0
		  end if
		  
		  'source = source.ConvertEncoding( Encodings.UTF8 )
		  'pattern = pattern.ConvertEncoding( Encodings.UTF8 )
		  
		  // Adjust the startB
		  start = start - 1
		  if start < 0 then start = 0
		  
		  'rx.Options.Greedy = False
		  rx.Options.CaseSensitive = caseSensitive
		  
		  rx.SearchPattern = pattern
		  MyMatch = rx.Search( source, start )
		  
		  if MyMatch = nil or MyMatch.SubExpressionCount = 0 then
		    return 0
		  else
		    return ( MyMatch.SubExpressionStartB(0) + 1 )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IndexOfRegEx(source as Text, pattern as Text, caseSensitive as Boolean = True) As Integer
		  Return IndexOfRegEx( 0, source, pattern, caseSensitive )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsEmpty(Extends pText As text) As Boolean
		  If pText = "" Then
		    Return True
		  Else
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsEmpty(pText As text) As Boolean
		  return pText.IsEmpty
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsInArray(extends t as Text, L() as Text) As Boolean
		  //# Returns true if the string is contains in the string array
		  
		  //@ [Cross-platform]
		  
		  return L.IndexOf(t) > -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNotEmpty(Extends pText As text) As Boolean
		  If pText = "" Then
		    Return False
		  Else
		    Return True
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNotEmpty(pText As text) As Boolean
		  return pText.IsNotEmpty
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNotInArray(extends t as Text, L() as Text) As Boolean
		  //# Returns true if the string is NOT contained in the string array
		  
		  //@ [Cross-platform]
		  
		  return L.IndexOf(t) = -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Match(extends Source as Text, Pattern as Text, i as Integer = 0) As Text
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return Match( Source, Pattern, i )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Match(Source as Text, Pattern as Text, SubString as Integer = 0) As Text
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  dim rg as New RegEx
		  dim MyMatch as RegExMatch
		  
		  if pattern = "" or Source = "" then
		    Return ""
		  end if
		  
		  rg.Options.TreatTargetAsOneLine = True
		  rg.Options.DotMatchAll = True
		  
		  rg.SearchPattern = Pattern
		  
		  'Try
		  MyMatch = rg.Search( Source )
		  'Catch Error as RegExException
		  '#If DebugBuild Then Log( Error.message )
		  'Return ""
		  'End Try
		  '
		  '#If DebugBuild Then
		  'Dim Debug() as String
		  '
		  'If MyMatch <> Nil Then
		  'For n as Integer = 0 to MyMatch.SubExpressionCount -1
		  'Debug.Append MyMatch.SubExpressionString(n)
		  'log "RegExMatch[" + Str(n) + "] = " + MyMatch.SubExpressionString(n)
		  'Next
		  'else
		  'log "RegExMatch[Nil] = Nothing found for - " + Pattern
		  'End If
		  '
		  '#EndIf
		  
		  if MyMatch <> Nil then
		    Return Trim( MyMatch.SubExpressionString( SubString ) ).ToText
		  else
		    Return ""
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MatchAll(extends Source as Text, Pattern as Text, i as Integer = 0) As Text()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Return MatchAll( Source, Pattern, i )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MatchAll(Source as Text, Pattern as Text, SubString as Integer = 0) As Text()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  dim rg as New RegEx
		  dim MyMatch as RegExMatch
		  
		  if pattern = "" or source = "" then
		    Return Nil
		  end if
		  
		  rg.Options.TreatTargetAsOneLine = True
		  rg.Options.DotMatchAll = True
		  
		  rg.SearchPattern = Pattern
		  rg.ReplacementPattern = ""
		  
		  Dim Results() as Text
		  
		  // Pop up all matches one by one
		  'Try
		  MyMatch = rg.Search( Source )
		  'Catch Error as RegExException
		  '#If DebugBuild Then Log( Error.message )
		  'Return array("")
		  'End Try
		  
		  While MyMatch <> Nil
		    '#If DebugBuild Then
		    'Dim Debug() as String
		    '
		    'For n as Integer = 0 to MyMatch.SubExpressionCount -1
		    'Debug.Append MyMatch.SubExpressionString(n)
		    'Next
		    '
		    'Break
		    '#EndIf
		    
		    if MyMatch.SubExpressionCount-1 >= SubString then
		      Results.Append Trim( MyMatch.SubExpressionString( SubString ) ).ToText
		    else
		      Results.Append Trim( MyMatch.SubExpressionString( 0 ) ).ToText
		    end if
		    
		    Source = rg.Replace( Source ).ToText
		    MyMatch = rg.Search()
		  Wend
		  
		  rg = Nil
		  
		  Return Results
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Mid(extends source as Text, StartText as Text, EndText as Text, Start as Integer = 0, IncludeTags as Boolean = False) As Text
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Dim sx1, sx2 as Integer
		  sx1 = source.IndexOf( Start, StartText ) + StartText.Length
		  sx2 = source.IndexOf( sx1, EndText )
		  
		  If IncludeTags Then
		    Return source.Mid( sx1 - StartText.Length, sx2 - sx1 + EndText.Length )
		  Else
		    Return source.Mid( sx1, sx2 - sx1 )
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveLinks(Extends source as Text) As Text
		  Return source.ReplaceAllRegEx( "<a.*?>|<\/a>" )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveTags(Extends source as Text) As String
		  Return Trim( source.ReplaceAllRegEx( "<.*?>" ) ).ToText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReplaceAllRegEx(extends Source as Text, SearchPattern as Text, ReplacementPattern as Text = "") As Text
		  dim rg as New RegEx
		  dim MyMatch as RegExMatch
		  
		  rg.Options.TreatTargetAsOneLine = True
		  rg.Options.DotMatchAll = True
		  'rg.Options.CaseSensitive = False
		  'rg.Options.Greedy = False
		  
		  rg.SearchPattern = SearchPattern
		  rg.ReplacementPattern = ReplacementPattern
		  
		  // Pop up all matches one by one
		  MyMatch = rg.Search( Source )
		  while MyMatch <> Nil
		    Source = rg.Replace( Source ).ToText
		    MyMatch = rg.Search()
		  wend
		  
		  Return Source
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextAfter(extends t as Text, beginningText as Text, includeBeginningText as Boolean = false) As Text
		  //# Return the string after 'beginning string', except if you set 'includeBeginningString'
		  
		  //@ if the 'beginningString' is not found, the whole string is returned
		  
		  dim a as integer
		  
		  a = Instr(t, beginningText)
		  
		  if includeBeginningText then
		    return  Mid( t, a ).ToText
		  else
		    return Mid( t, beginningText.Length + a ).ToText
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextBefore(extends t as Text, beforeText as Text, returnEmptyTextIfNotFound as boolean = false) As Text
		  //#Returns the string before 'beforeString' or the whole string if the latter was not found
		  
		  //@ [Cross-platform]
		  //@ If 'beforeString' is not found, the method returns:
		  //@     • The full string if returnEmptyStringIfNotFound = false
		  //@     • An empty string is returnEmptyStringIfNotFound = true
		  
		  
		  dim a as integer = t.IndexOf( beforeText )
		  
		  if a=0 then
		    if returnEmptyTextIfNotFound then
		      return  ""
		    else
		      return  t
		    end if
		  else
		    return   t.Left( a - 1 )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextBetween(extends src as Text, startTag as Text, endTag as Text, includeStart as Boolean = false, includeEnd as Boolean = false) As Text
		  //# Return the string between startTag and endTag
		  
		  //@ If 'startTag' does not exist, 1 is assumed; if 'endTag' does not exist, the end of the source string 'src' is assumed
		  //@ If you want the result to include 'startTag' and/or 'endTag', set 'includeStart' and/or 'includeEnd' to true
		  
		  'dim s as string
		  dim a, a2, b, b2 as integer
		  
		  a = src.IndexOf( startTag )
		  if a=0 then
		    a=1
		    a2 = 1
		  else
		    a2 = a + startTag.Length
		    if NOT includeStart then
		      a = a2
		    end if
		  end if
		  
		  b = src.IndexOf( a2, endTag )
		  if b = 0 then
		    b = src.Length
		    b2 = b
		  else
		    b2 = b + endTag.Length
		    if NOT includeEnd then
		      b2 = b
		    end if
		  end if
		  
		  return   src.Mid( a, b2 - a )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextBytesFormatted(Bytes as Double) As text
		  // TextBytesFormatted
		  // Unknown Origin
		  
		  // Code
		  
		  #IF TargetDesktop OR TargetWeb OR TargetConsole THEN
		    
		    dim theSize as string
		    dim theFormatFileSize as string = "###,###,###,###,###"
		    
		    dim kb as Integer
		    #if TargetMacOS then
		      kb = 1000
		    #else
		      kb = 1024
		    #endif
		    
		    Select Case Bytes
		      
		    Case is < pow ( kb , 1 )
		      theSize = Format ( Bytes , theFormatFileSize ) + " Bytes"
		      
		    Case is < pow ( kb , 2 )
		      theSize = Format ( Bytes / pow ( kb , 1 ) , theFormatFileSize ) + " KB"
		      
		    Case is < pow ( kb , 3 )
		      theSize = Format ( Bytes / pow ( kb , 2 ) , theFormatFileSize ) + " MB"
		      
		    Case is < pow ( kb , 4 )
		      theSize = Format ( Bytes / pow ( kb , 3 ) , theFormatFileSize ) + " GB"
		      
		    Case is < pow ( kb , 5 )
		      theSize = Format ( Bytes / pow ( kb , 4 ) , theFormatFileSize ) + " TB"
		      
		    End Select
		    
		    return theSize.ToText
		    
		  #ELSEIF TargetiOS THEN
		    
		  #ENDIF
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextFilter(theText as text, theFilter as text) As text
		  // TextFilter
		  // Unknown Origin
		  
		  // Returns from theText only those characters specified in theFilter, in the order they were originally entered in theText.
		  //
		  // textFilter( theText as text, theFilter as text ) as text
		  //
		  // textFilter ( "(407) 555-1212", "0123456789"  ) = 4075551212
		  
		  dim theChar, outputText as string
		  dim i as integer = 0
		  
		  do until i > len( theText )
		    
		    i = i + 1
		    theChar = mid( theText, i, 1 )
		    
		    if InStr( theFilter, theChar ) > 0 then
		      outputText = outputText + theChar  // Found theChar so include it for output
		    end if
		    
		  loop
		  
		  return outputText.ToText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextParse(extends pText as text, pTagBegin as text, pTagEnd as text, pOccurrence as integer = 1) As text
		  // TextParse extracts text between the starting text tag and the ending text tag for a specific occurrence.
		  // Hal Gumbert, CampSoftware: http://www.CampSoftware.com
		  //
		  // TextParse( pText as text, pTagStart as text, pTagEnd as text )
		  
		  // Call with a known begin and end tags
		  // TextParse( "<name>Lewis</name><name>Nico</name><name>Sebastian</name>", "<name>", "</name>", 3 ) = Sebastian
		  //
		  // If you use an xml tag for the begin tag and leave the end tag empty, we assume that it's the closing xml tag. :)
		  // TextParse( "<name>Lewis</name><name>Nico</name><name>Sebastian</name>", "<name>", "", 3 ) =Sebastian
		  
		  // Prep
		  dim theOccurrence as Integer = 1
		  dim theTagBeginLen, theTextBegin, theTextEnd as integer
		  theTagBeginLen = Len( pTagBegin )
		  dim theText as text
		  
		  // For each Occurrence
		  while theOccurrence <= pOccurrence
		    
		    // Find the first Occurrence
		    theTextBegin = InStr ( pText, pTagBegin )
		    if theTextBegin > 0 then
		      theTextEnd = InStr ( theTextBegin + theTagBeginLen, pText, pTagEnd )
		      if ( theTextEnd > 0 ) and ( theTextEnd > theTextBegin ) then
		        // Get theText for this Occurrence
		        theText = Mid ( pText, theTextBegin + theTagBeginLen, theTextEnd - theTextBegin - theTagBeginLen ).totext
		        // Remove the Occurrence with the tag from pText so we can find the next Occurence.
		        pText = pText.Replace( pTagBegin + theText + pTagEnd, "" )
		      end if
		    else
		      theText = ""
		      Exit
		    end if
		    
		    // Keep going...
		    theOccurrence = theOccurrence + 1
		    
		  wend
		  
		  Return theText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextParse(pText as text, pTagBegin as text, pTagEnd as text, pOccurrence as integer = 1) As text
		  return pText.TextParse( pTagBegin, pTagEnd, pOccurrence )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextQuoteDouble(Extends theText as Text) As Text
		  // TextQuoteDouble wraps text in single quotes.
		  // Hal Gumbert, CampSoftware: http://www.CampSoftware.com
		  //
		  // Function TextQuoteDouble(Extends theText as Text) As Text
		  //
		  // Calling Example
		  
		  'dim theText as text = "Hal"
		  'theText = theText.TextQuoteSingle
		  
		  // Code
		  
		  return chr( 34 ).ToText + theText + chr( 34 ).ToText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextQuoteDouble(pText as Text) As Text
		  return pText.TextQuoteDouble
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextQuoteSingle(Extends theText as Text) As Text
		  // TextQuoteSingle wraps text in single quotes.
		  // Hal Gumbert, CampSoftware: http://www.CampSoftware.com
		  //
		  // Function TextQuoteSingle(Extends theText as Text) As Text
		  //
		  // Calling Example
		  
		  'dim theText as text = "Hal"
		  'theText = theText.TextQuoteSingle
		  
		  // Code
		  
		  return chr(39).ToText + theText + chr(39).ToText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextQuoteSingle(pText as Text) As Text
		  return pText.TextQuoteSingle
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextToDouble(extends theText as text) As double
		  // TextToDouble converts a number in text to a double.
		  // Hal Gumbert, CampSoftware: http://www.CampSoftware.com
		  //
		  // Function TextToDouble(extends theText as text) As double
		  //
		  // Calling Example
		  
		  'dim theText as text = "3.14"
		  'dim theDouble as Double
		  'theDouble = theText.TextToDouble
		  
		  // Code
		  
		  return Double.FromText( theText )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextToDouble(theText as text) As double
		  return theText.TextToDouble
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TrimWhitespace(extends t as Text) As Text
		  //# Trim whitespaces at both ends of the passed string.
		  
		  //@ Whitespaces include space, tab, newlines, carriage returns and all characters that do not have a visible representation
		  
		  #if TargetMacOS
		    dim cfm as new CFMutableString( t )
		    
		    cfm.TrimWhitespace
		    return   cfm.StringValue.ToText
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URLDecode(t as Text) As Text
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  Dim URL as Text
		  Dim CurChr as Integer = 1
		  
		  Do Until CurChr - 1 = t.Length
		    
		    Select Case t.Mid( CurChr, 1 )
		    Case "+"
		      URL = URL + " "
		    Case "%"
		      URL = URL + Chr( Val( "&h" + t.Mid( CurChr + 1, 2) ) ).ToText
		      CurChr = CurChr + 2
		    Else
		      URL = URL + t.Mid( CurChr, 1 )
		    End Select
		    
		    CurChr = CurChr + 1
		    
		  Loop
		  
		  Return URL
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URLEncode(extends pText as text) As text
		  // URLEncode encodes the text that will change illegal chars in a URL to a hexadecimal code.
		  // Tim Dietrich: http://www.timdietrich.me/
		  //
		  // URLEncode( pText as text )
		  //
		  // Call
		  // URLEncode( "Tim Dietrich") = Tim%20Dietrich
		  
		  // Code
		  
		  // Remove newline characters.
		  pText = pText.ReplaceAll ( &u0A, "" )
		  // Make substitutions...
		  pText = pText.ReplaceAll ( "%", "%25" )
		  pText = pText.ReplaceAll ( " ", "%20" )
		  pText = pText.ReplaceAll ( "!", "%21" )
		  pText = pText.ReplaceAll ( """", "%22" )
		  pText = pText.ReplaceAll ( "#", "%23" )
		  pText = pText.ReplaceAll ( "$", "%24" )
		  pText = pText.ReplaceAll ( "&", "%26" )
		  pText = pText.ReplaceAll ( "'", "%27" )
		  pText = pText.ReplaceAll ( "( ", "%28" )
		  pText = pText.ReplaceAll ( ")", "%29" )
		  pText = pText.ReplaceAll ( "*", "%2A" )
		  pText = pText.ReplaceAll ( "+", "%2B" )
		  pText = pText.ReplaceAll ( ",", "%2C" )
		  pText = pText.ReplaceAll ( "-", "%2D" )
		  pText = pText.ReplaceAll ( ".", "%2E" )
		  pText = pText.ReplaceAll ( "/", "%2F" )
		  pText = pText.ReplaceAll ( ":", "%3A" )
		  pText = pText.ReplaceAll ( ";", "%3B" )
		  pText = pText.ReplaceAll ( "<", "%3C" )
		  pText = pText.ReplaceAll ( "=", "%3D" )
		  pText = pText.ReplaceAll ( ">", "%3E" )
		  pText = pText.ReplaceAll ( "?", "%3F" )
		  pText = pText.ReplaceAll ( "@", "%40" )
		  pText = pText.ReplaceAll ( "[", "%5B" )
		  pText = pText.ReplaceAll ( "\\", "%5C" )
		  pText = pText.ReplaceAll ( "]", "%5D" )
		  pText = pText.ReplaceAll ( "^", "%5E" )
		  pText = pText.ReplaceAll ( "`", "%60" )
		  pText = pText.ReplaceAll ( "{", "%7B" )
		  pText = pText.ReplaceAll ( "|", "%7C" )
		  pText = pText.ReplaceAll ( "}", "%7D" )
		  return pText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URLEncode(pText as text) As text
		  return pText.URLEncode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function URLShow(pURL As Text) As Boolean
		  
		  // URLShow loads a url on the devices web browser.
		  // Hal Gumbert, CampSoftware: http://www.CampSoftware.com
		  //
		  // URLShow( pURL As Text )
		  //
		  // Call
		  
		  'URLShow( "http://www.CampSoftware.com" )
		  
		  // Code
		  
		  #IF TargetDesktop THEN
		    
		    ShowURL( pURL )
		    Return true  // doesn't return a value so assume true.
		    
		  #ENDIF
		  
		  // ==============================================
		  
		  #IF TargetWeb THEN
		    
		    dim theWebControl as WebLabel
		    theWebControl.ShowURL( pURL, true )
		    Return true  // doesn't return a value so assume true.
		    
		  #ENDIF
		  
		  // ==============================================
		  
		  #IF TargetiOS THEN
		    
		    // NSString* launchUrl = @"http://www.xojo.com/";
		    // [[UIApplication sharedApplication] openURL:[NSURL URLWithString: launchUrl]];
		    
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    Declare Function sharedApplication Lib "UIKit" Selector "sharedApplication" (obj As Ptr) As Ptr
		    Dim sharedApp As Ptr = sharedApplication(NSClassFromString("UIApplication"))
		    
		    // https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSURL_Class/#//apple_ref/occ/clm/NSURL/URLWithString:
		    Declare Function URLWithString Lib "Foundation" Selector "URLWithString:" ( id As Ptr, URLString As CFStringRef ) As Ptr
		    Dim nsURL As Ptr = URLWithString(NSClassFromString("NSURL"), pURL )
		    
		    // https://developer.apple.com/Library/ios/documentation/UIKit/Reference/UIApplication_Class/index.html#//apple_ref/occ/instm/UIApplication/openURL:
		    Declare Function openURL Lib "UIKit" Selector "openURL:" (id As Ptr, nsurl As Ptr) As Boolean
		    Return openURL(sharedApp, nsURL)
		    
		  #ENDIF
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
