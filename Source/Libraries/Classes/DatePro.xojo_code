#tag Class
Protected Class DatePro
Inherits Date
	#tag Method, Flags = &h0
		Sub AddDays(Days as Integer)
		  TotalSeconds = TotalSeconds + ((60*60*24)*Days)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Chop(s As String, charsToCut As Integer) As String
		  // Return s with the rightmost 'charsToCut' chars removed.
		  
		  Dim charsLeft As Integer = s.Len - charsToCut
		  if charsLeft <= 0 then return ""
		  return s.Left( s.Len - charsToCut )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DaysFromNow() As Integer
		  dim Now as new DatePro
		  dim difference as Integer =  me.TotalSeconds - Now.TotalSeconds
		  
		  if difference < 0 then
		    difference = Floor( difference/60/60/24 )
		  else
		    difference = Ceil( difference/60/60/24 )
		  end if
		  
		  Return difference
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FromDate(d as Date)
		  me.GMTOffset = d.GMTOffset
		  me.TotalSeconds = d.TotalSeconds
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FromString(dateValue as String)
		  if dateValue.Contains("T") then
		    me.ISO8601 = dateValue
		  else
		    me.SQLDateTime = dateValue
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SubtractDays(Days as Integer)
		  TotalSeconds = TotalSeconds - ((60*60*24)*Days)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return me.ISO8601
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Str( self.Day ) + " " + self.ShortMonth + " " + Str( self.Year, "0000" )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Dim parts() As String
			  
			  parts = Split(value, " ")
			  
			  
			  // 5 sep/september(,) 1986
			  if parts.Ubound = 2 then
			    Self.Day = val(parts(0))
			    Self.Year = val(parts(2))
			    
			    parts(1) = parts(1).Replace(",", "")
			    if len(parts(1)) = 3 then
			      self.ShortMonth = parts(1)
			    else
			      self.LongMonth = parts(1)
			    end if
			    
			    // sep/september(,) 1986
			  elseif parts.Ubound = 1 then
			    Self.Year = val(parts(1))
			    
			    parts(1) = parts(0).Replace(",", "")
			    if len(parts(0)) = 3 then
			      self.ShortMonth = parts(0)
			    else
			      self.LongMonth = parts(0)
			    end if
			    
			    // 1986
			  elseif parts.Ubound = 0 then
			    Self.Year = val(parts(0))
			    
			  else
			    Break
			  end if
			End Set
		#tag EndSetter
		AbbreviatedDate As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Format(Self.Year,"0000")+"-"+Format(Self.Month,"00")+"-"+Format(Self.Day,"00")+"_"+Format(Self.Hour,"00")+"-"+Format(Self.Minute,"00")+"-"+Format(Self.Second,"00")
			End Get
		#tag EndGetter
		FileTimeStamp As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			1986-02-12T01:19:21+02:00
			2004-02-12T15:59:21Z
			2010-02-12T23:19:00-03:30
			
			The formats are as follows. Exactly the components shown here must be present, with exactly this punctuation. Note that the "T" appears literally in the string, to indicate the beginning of the time element, as specified in ISO 8601.
			
			Year:
			YYYY (eg 1997)
			Year and month:
			YYYY-MM (eg 1997-07)
			Complete date:
			YYYY-MM-DD (eg 1997-07-16)
			Complete date plus hours and minutes:
			YYYY-MM-DDThh:mmTZD (eg 1997-07-16T19:20+01:00)
			Complete date plus hours, minutes and seconds:
			YYYY-MM-DDThh:mm:ssTZD (eg 1997-07-16T19:20:30+01:00)
			Complete date plus hours, minutes, seconds and a decimal fraction of a
			second
			YYYY-MM-DDThh:mm:ss.sTZD (eg 1997-07-16T19:20:30.45+01:00)
			where:
			
			YYYY = four-digit year
			MM   = two-digit month (01=January, etc.)
			DD   = two-digit day of month (01 through 31)
			hh   = two digits of hour (00 through 23) (am/pm NOT allowed)
			mm   = two digits of minute (00 through 59)
			ss   = two digits of second (00 through 59)
			s    = one or more digits representing a decimal fraction of a second
			TZD  = time zone designator (Z or +hh:mm or -hh:mm)
		#tag EndNote
		#tag Getter
			Get
			  '1986-02-12T01:19:21+02:00
			  '2004-02-12T15:59:21Z
			  '2010-02-12T23:19:00-03:30
			  dim gmtHour as Integer = Floor(self.GMTOffset)
			  dim gmtMinutes as Integer = (self.GMTOffset-gmtHour)*60
			  
			  Return Replace(Self.SQLDateTime, " ", "T")+Format(gmtHour, "+00\:;+00\:;\Z")+Format(gmtMinutes,"00")
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Dim valuelen As Integer
			  '1986-02-12T01:19:21+02:00
			  '2004-02-12T15:59:21Z
			  '2010-02-12T23:19:00-03:30
			  value = Uppercase(value)
			  value = ReplaceAll(value, "Z", "+00:00")
			  
			  valuelen = Len(value)
			  
			  if valuelen < 22 Then
			    Select Case valuelen
			    Case 4 'YYYY
			      Self.Year = Val(value)
			      
			    Case 7 'YYYY-MM
			      Self.Year = Val(Left(value, 4))
			      Self.Month = Val(Right(value, 2))
			      
			    Case 8 to 10 'YYYY-MM-DD
			      'Self.SQLDate = value
			      Self.Year = Val(value.NthField("-",1))
			      Self.Month = Val(value.NthField("-",2))
			      Self.Day = Val(value.NthField("-",3))
			      
			    Else
			      Raise New UnsupportedFormatException
			      
			    End Select
			  Else
			    ' YYYY-MM-DDThh:mm+00:00
			    value = ReplaceAll(value, "T", " ")
			    value = Chop(value, 3)
			    
			    ' Set Time Zone
			    Self.GMTOffset = val(Right(value, 3))
			    'val(Left(Right(value, 6), 3))
			    
			    ' Remove Time Zone
			    value = Chop(value, 3)
			    
			    value = Left(value, Len(value)-InStr(value, "."))
			    
			    Self.SQLDateTime = value
			    
			  End if
			End Set
		#tag EndSetter
		ISO8601 As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Localisation As String = "default"
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim Day_Name_Long(7) as string = Array(" ", _
			  Keywords.TimesAndDates.daySunday(self.Localisation), _
			  Keywords.TimesAndDates.dayMonday(self.Localisation),_
			  Keywords.TimesAndDates.dayTuesday(self.Localisation),_
			  Keywords.TimesAndDates.dayWednesday(self.Localisation),_
			  Keywords.TimesAndDates.dayThursday(self.Localisation),_
			  Keywords.TimesAndDates.dayFriday(self.Localisation),_
			  Keywords.TimesAndDates.daySaturday(self.Localisation) )
			  
			  Return Day_Name_Long( self.DayOfWeek )
			End Get
		#tag EndGetter
		LongDayOfWeek As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim Month_Name_Short(12) as string = Array(" ", _
			  Keywords.TimesAndDates.monthJanuaryShort(self.Localisation), _
			  Keywords.TimesAndDates.monthFebruaryShort(self.Localisation),_
			  Keywords.TimesAndDates.monthMarchShort(self.Localisation),_
			  Keywords.TimesAndDates.monthAprilShort(self.Localisation),_
			  Keywords.TimesAndDates.monthMayShort(self.Localisation),_
			  Keywords.TimesAndDates.monthJuneShort(self.Localisation),_
			  Keywords.TimesAndDates.monthJulyShort(self.Localisation),_
			  Keywords.TimesAndDates.monthAugustShort(self.Localisation),_
			  Keywords.TimesAndDates.monthSeptemberShort(self.Localisation),_
			  Keywords.TimesAndDates.monthOctoberShort(self.Localisation),_
			  Keywords.TimesAndDates.monthNovemberShort(self.Localisation),_
			  Keywords.TimesAndDates.monthDecemberShort(self.Localisation) )
			  
			  Return Month_Name_Short( self.Month )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim Month_Name_Long(12) as String = array( " ", _
			  Keywords.TimesAndDates.monthJanuaryLong("en"), _
			  Keywords.TimesAndDates.monthFebruaryLong("en"), _
			  Keywords.TimesAndDates.monthMarchLong("en"), _
			  Keywords.TimesAndDates.monthAprilLong("en"), _
			  Keywords.TimesAndDates.monthMayLong("en"), _
			  Keywords.TimesAndDates.monthJuneLong("en"), _
			  Keywords.TimesAndDates.monthJulyLong("en"), _
			  Keywords.TimesAndDates.monthAugustLong("en"), _
			  Keywords.TimesAndDates.monthSeptemberLong("en"), _
			  Keywords.TimesAndDates.monthOctoberLong("en"), _
			  Keywords.TimesAndDates.monthNovemberLong("en"), _
			  Keywords.TimesAndDates.monthDecemberLong("en") )
			  
			  dim Month_Name_Long_Localized(12) as String = array( " ", _
			  Keywords.TimesAndDates.monthJanuaryLong, _
			  Keywords.TimesAndDates.monthFebruaryLong, _
			  Keywords.TimesAndDates.monthMarchLong, _
			  Keywords.TimesAndDates.monthAprilLong, _
			  Keywords.TimesAndDates.monthMayLong, _
			  Keywords.TimesAndDates.monthJuneLong, _
			  Keywords.TimesAndDates.monthJulyLong, _
			  Keywords.TimesAndDates.monthAugustLong, _
			  Keywords.TimesAndDates.monthSeptemberLong, _
			  Keywords.TimesAndDates.monthOctoberLong, _
			  Keywords.TimesAndDates.monthNovemberLong, _
			  Keywords.TimesAndDates.monthDecemberLong )
			  
			  
			  if Month_Name_Long_Localized.IndexOf( value ) > 0 then
			    self.Month = Month_Name_Long_Localized.IndexOf( value )
			  elseif Month_Name_Long.IndexOf( value ) > 0 then
			    self.Month = Month_Name_Long.IndexOf( value )
			  else
			    break
			  end if
			End Set
		#tag EndSetter
		LongMonth As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return me.ShortDayOfWeek + ", " + Format( me.Day, "00" ) + " " + me.ShortMonth + " " + Format( me.Year, "0000" )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  value = value.NthField(", ",2) // Remove short day of week ('Mon, ')
			  
			  dim splitValues() as string = value.Split(" ")
			  me.Year = splitValues(2).IntegerValue
			  me.ShortMonth = splitValues(1)
			  me.Day = splitValues(0).IntegerValue
			End Set
		#tag EndSetter
		MediumDate As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			Thu, 21 Dec 2000 16:01:07 +0200
			
			3.3. Date and Time Specification
			
			Date and time occur in several header fields.  This section specifies
			the syntax for a full date and time specification.  Though folding
			white space is permitted throughout the date-time specification, it
			is RECOMMENDED that a single space be used in each place that FWS
			appears (whether it is required or optional); some older
			implementations may not interpret other occurrences of folding white
			space correctly.
			
			date-time   = [ day-of-week "," ] date FWS time [CFWS]
			day-of-week = ([FWS] day-name) / obs-day-of-week
			day-name    = "Mon" / "Tue" / "Wed" / "Thu" / "Fri" / "Sat" / "Sun"
			date        = day month year
			year        = 4*DIGIT / obs-year
			month       = (FWS month-name FWS) / obs-month
			month-name  = "Jan" / "Feb" / "Mar" / "Apr" / "May" / "Jun" / "Jul" / "Aug" / "Sep" / "Oct" / "Nov" / "Dec"
			day         = ([FWS] 1*2DIGIT) / obs-day
			time        = time-of-day FWS zone
			time-of-day = hour ":" minute [ ":" second ]
			hour        = 2DIGIT / obs-hour
			minute      = 2DIGIT / obs-minute
			second      = 2DIGIT / obs-second
			zone        = (( "+" / "-" ) 4DIGIT) / obs-zone
		#tag EndNote
		#tag Getter
			Get
			  Dim Day_Name(7) As String
			  Dim Month_Name(12) As String
			  
			  Day_Name = Array(" ","Sun","Mon","Tue","Wed","Thu","Fri","Sat")
			  Month_Name = Array(" ", "Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
			  
			  dim gmtHour as Integer = Floor(self.GMTOffset)
			  dim gmtMinutes as Integer = (self.GMTOffset-gmtHour)*60
			  
			  'Thu, 21 Dec 2000 16:01:07 +0200
			  Return Day_Name(Self.DayOfWeek)+", "+str(Self.Day)+" "+Month_Name(Self.Month)+" "+str(Self.Year)+" "+Self.SQLTime+" "+Format(gmtHour, "+00")+Format(gmtMinutes,"00")
			  
			End Get
		#tag EndGetter
		RFC2822 As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim Day_Name_Short(7) as string = Array(" ", _
			  Keywords.TimesAndDates.daySundayShort(self.Localisation), _
			  Keywords.TimesAndDates.dayMondayShort(self.Localisation),_
			  Keywords.TimesAndDates.dayTuesdayShort(self.Localisation),_
			  Keywords.TimesAndDates.dayWednesdayShort(self.Localisation),_
			  Keywords.TimesAndDates.dayThursdayShort(self.Localisation),_
			  Keywords.TimesAndDates.dayFridayShort(self.Localisation),_
			  Keywords.TimesAndDates.daySaturdayShort(self.Localisation) )
			  
			  Return Day_Name_Short( self.DayOfWeek )
			End Get
		#tag EndGetter
		ShortDayOfWeek As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim Month_Name_Short(12) as string = Array(" ", _
			  Keywords.TimesAndDates.monthJanuaryShort(self.Localisation), _
			  Keywords.TimesAndDates.monthFebruaryShort(self.Localisation),_
			  Keywords.TimesAndDates.monthMarchShort(self.Localisation),_
			  Keywords.TimesAndDates.monthAprilShort(self.Localisation),_
			  Keywords.TimesAndDates.monthMayShort(self.Localisation),_
			  Keywords.TimesAndDates.monthJuneShort(self.Localisation),_
			  Keywords.TimesAndDates.monthJulyShort(self.Localisation),_
			  Keywords.TimesAndDates.monthAugustShort(self.Localisation),_
			  Keywords.TimesAndDates.monthSeptemberShort(self.Localisation),_
			  Keywords.TimesAndDates.monthOctoberShort(self.Localisation),_
			  Keywords.TimesAndDates.monthNovemberShort(self.Localisation),_
			  Keywords.TimesAndDates.monthDecemberShort(self.Localisation) )
			  
			  Return Month_Name_Short( self.Month )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim Month_Name_Short(12) as String = Array(" ", _
			  Keywords.TimesAndDates.monthJanuaryShort("en"),_
			  Keywords.TimesAndDates.monthFebruaryShort("en"),_
			  Keywords.TimesAndDates.monthMarchShort("en"),_
			  Keywords.TimesAndDates.monthAprilShort("en"),_
			  Keywords.TimesAndDates.monthMayShort("en"),_
			  Keywords.TimesAndDates.monthJuneShort("en"),_
			  Keywords.TimesAndDates.monthJulyShort("en"),_
			  Keywords.TimesAndDates.monthAugustShort("en"),_
			  Keywords.TimesAndDates.monthSeptemberShort("en"),_
			  Keywords.TimesAndDates.monthOctoberShort("en"),_
			  Keywords.TimesAndDates.monthNovemberShort("en"),_
			  Keywords.TimesAndDates.monthDecemberShort("en") )
			  
			  dim Month_Name_Short_Localized(12) as String = Array(" ", _
			  Keywords.TimesAndDates.monthJanuaryShort,_
			  Keywords.TimesAndDates.monthFebruaryShort,_
			  Keywords.TimesAndDates.monthMarchShort,_
			  Keywords.TimesAndDates.monthAprilShort,_
			  Keywords.TimesAndDates.monthMayShort,_
			  Keywords.TimesAndDates.monthJuneShort,_
			  Keywords.TimesAndDates.monthJulyShort,_
			  Keywords.TimesAndDates.monthAugustShort,_
			  Keywords.TimesAndDates.monthSeptemberShort,_
			  Keywords.TimesAndDates.monthOctoberShort,_
			  Keywords.TimesAndDates.monthNovemberShort,_
			  Keywords.TimesAndDates.monthDecemberShort )
			  
			  
			  if Month_Name_Short_Localized.IndexOf( value ) > 0 then
			    self.Month = Month_Name_Short_Localized.IndexOf( value )
			  elseif Month_Name_Short.IndexOf( value ) > 0 then
			    self.Month = Month_Name_Short.IndexOf( value )
			  else
			    Break
			  end if
			End Set
		#tag EndSetter
		ShortMonth As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Format(Self.Hour, "00")+":"+Format(Self.Minute, "00")+":"+Format(Self.Second, "00")
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Dim parts() As String
			  
			  parts = Split(value, ":")
			  
			  Self.Hour = val(parts(0))
			  Self.Minute = val(parts(1))
			  Self.Second = val(parts(2))
			End Set
		#tag EndSetter
		SQLTime As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.TotalSeconds - 2082844800
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.TotalSeconds = value + 2082844800
			  
			End Set
		#tag EndSetter
		UnixEpoch As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  '20191231
			  Return Format(Self.Year,"0000")+Format(Self.Month,"00")+Format(Self.Day,"00")
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.Year = Val(value.Mid(1,4))
			  Self.Month = Val(value.Mid(5,2))
			  Self.Day = Val(value.Mid(7,2))
			End Set
		#tag EndSetter
		YMD As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  '20191231144005
			  Return Format(Self.Year,"0000")+Format(Self.Month,"00")+Format(Self.Day,"00")+Format(Self.Hour,"00")+Format(Self.Minute,"00")+Format(Self.Second,"00")
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.Year = Val(value.Mid(1,4))
			  Self.Month = Val(value.Mid(5,2))
			  Self.Day = Val(value.Mid(7,2))
			  Self.Hour = Val(value.Mid(9,2))
			  Self.Minute = Val(value.Mid(11,2))
			  Self.Second = Val(value.Mid(13,2))
			End Set
		#tag EndSetter
		YMDHMS As String
	#tag EndComputedProperty


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
		#tag ViewProperty
			Name="Year"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Month"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Day"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hour"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Minute"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Second"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DayOfWeek"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DayOfYear"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="WeekOfYear"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShortDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LongDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShortTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LongTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TotalSeconds"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SQLDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SQLDateTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GMTOffset"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FileTimeStamp"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ISO8601"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RFC2822"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SQLTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UnixEpoch"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="YMD"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YMDHMS"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AbbreviatedDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShortMonth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LongMonth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShortDayOfWeek"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LongDayOfWeek"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localisation"
			Visible=false
			Group="Behavior"
			InitialValue="default"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MediumDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
