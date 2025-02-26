#tag Class
Protected Class DateTimePro
Inherits DateTime
	#tag Method, Flags = &h0
		Function DaysFromDate(CompareDate as DateTimePro = Nil) As Integer
		  if CompareDate = Nil then
		    CompareDate = DateTimePro.Now
		  end if
		  
		  dim diff as Integer = self.SecondsFrom1970 - CompareDate.SecondsFrom1970
		  if diff < 0 then
		    Return Floor( diff/60/60/24 )
		  else
		    Return Ceil( diff/60/60/24 )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromDate(TheDate as Date) As DateTime
		  dim gmt as new TimeZone(TheDate.GMTOffset*60*60)
		  
		  Return new DateTime(TheDate.Year, TheDate.Month, TheDate.Day, TheDate.Hour, TheDate.Minute, TheDate.Second, 0, gmt)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromISO8601(value as String) As DateTime
		  // YYYY-MM-DDTHH:MM:SS.NNNNZ (0GMT)
		  // YYYY-MM-DDTHH:MM:SS.NNNN+hhmm
		  // YYYY-MM-DDTHH:MM:SS.NNNN-hhmm
		  
		  // 1986-02-12T01:19:21+02:00
		  // 2004-02-12T15:59:21Z
		  // 2010-02-12T23:19:00-03:30
		  
		  dim year, month, day as Integer = 0
		  dim hour, minutes, seconds, nanos as Integer = 0
		  dim gmthrs, gmtmins as integer = 0
		  
		  dim YMDSplit() as String = value.NthField("T", 1).Split("-") // YYYY-MM-DD
		  if value.Contains("T") and YMDSplit <> Nil and YMDSplit.Ubound = 2 then
		    year = YMDSplit(0).IntegerValue
		    month = YMDSplit(1).IntegerValue
		    day = YMDSplit(2).IntegerValue
		  else
		    raise new UnsupportedFormatException
		  end if
		  
		  dim HMSString as String = value.NthField("T",2).NthField("Z",1).NthField("-",1).NthField("+",1) // Right of T, left of Z/-/+
		  dim HMSSplit() as String = HMSString.Split(":") // HH:MM:SS.nnnn
		  if HMSSplit <> Nil and HMSSplit.Ubound = 2 then
		    hour = HMSSplit(0).IntegerValue
		    minutes = HMSSplit(1).IntegerValue
		    seconds = HMSSplit(2).NthField(".",1).IntegerValue
		    nanos = HMSSplit(2).NthField(".",2).IntegerValue
		    
		    if seconds <= -1 then
		      Break
		      seconds = 0
		    end if
		    if nanos <= -1 then
		      Break
		      nanos = 0
		    end if
		    
		  else
		    raise new UnsupportedFormatException
		  end if
		  
		  dim temp as String = value.NthField(HMSString,2) // Everything after HH:MM:SS.nnnn
		  dim multi as Integer = 1 // Multiplier
		  
		  if temp <> "" then
		    // Positive or Negative offset
		    if temp.Contains("-") then
		      multi = -1
		      temp = temp.Replace("-","")
		    elseif temp.Contains("+") then
		      multi = 1
		      temp = temp.Replace("+","")
		    end if
		    
		    
		    if temp = "Z" or temp = "" then
		      gmthrs = 0
		      gmtmins = 0
		    elseif temp.Contains(":") then // +01:30
		      gmthrs = temp.NthField(":",1).IntegerValue
		      gmtmins = temp.NthField(":",2).IntegerValue
		    elseif NOT temp.Contains(":") then
		      if temp.Length = 4 then // +0130
		        gmthrs = temp.Left(2).IntegerValue
		        gmtmins = temp.Right(2).IntegerValue
		      elseif temp.Length = 3 then // +130 ?
		        gmthrs = temp.Left(1).IntegerValue
		        gmtmins = temp.Right(2).IntegerValue
		      elseif temp.Length = 1 or temp.Length = 2 then // +1 or +01
		        gmthrs = temp.IntegerValue
		        gmtmins = 0
		      end if
		    else
		      raise new UnsupportedFormatException
		    end if
		    
		  else
		    raise new UnsupportedFormatException
		  end if
		  
		  dim gmtOffset as Integer = multi * (gmthrs * 3600) + (gmtmins * 60)
		  dim tz as new TimeZone(gmtOffset)
		  
		  Return new DateTime(year, month, day, hour, minutes, seconds, nanos, tz)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LocalizedDateTime(aTimeZone as TimeZone = Nil) As DateTimePro
		  Return new DateTime(self.SecondsFrom1970, aTimeZone)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SumDays(Days as Integer) As DateTimePro
		  dim di as new DateInterval
		  di.Days = Days
		  dim d1 as DateTimePro = self + di
		  Return d1
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return self.ToString(Locale.Current, DateTime.FormatStyles.Medium, DateTime.FormatStyles.None)
			End Get
		#tag EndGetter
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
		#tag Getter
			Get
			  // YYYY-MM-DDTHH:MM:SS.NNNNZ (0GMT)
			  // YYYY-MM-DDTHH:MM:SS.NNNN+hhmm
			  // YYYY-MM-DDTHH:MM:SS.NNNN-hhmm
			  // 1986-02-12T01:19:21+02:00
			  // 2004-02-12T15:59:21Z
			  // 2010-02-12T23:19:00-03:30
			  
			  dim gmtHour as Integer = Floor(self.Timezone.SecondsFromGMT/60/60)
			  dim gmtMinutes as Integer = (self.Timezone.SecondsFromGMT - (gmtHour*60*60))/60
			  
			  dim gmtString as String = Format(gmtHour,"00") + Format(gmtMinutes,"00")
			  if self.Timezone.SecondsFromGMT = 0 then
			    gmtString = "Z"
			  elseif self.Timezone.SecondsFromGMT > 0 then // +
			    gmtString = "+" + gmtString
			  else // -
			    gmtString = "-" + gmtString
			  end if
			  
			  Return self.SQLDateTime.Replace(" ","T") + gmtString
			End Get
		#tag EndGetter
		ISO8601 As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Dim Day_Name(7) As String
			  Dim Month_Name(12) As String
			  
			  Day_Name = Array(" ","Sun","Mon","Tue","Wed","Thu","Fri","Sat")
			  Month_Name = Array(" ", "Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
			  
			  dim gmtHour as Integer = Floor(self.Timezone.SecondsFromGMT/60/60)
			  dim gmtMinutes as Integer = (self.Timezone.SecondsFromGMT - (gmtHour*60*60))/60
			  
			  'Thu, 21 Dec 2000 16:01:07 +0200
			  Return Day_Name(Self.DayOfWeek)+", "+str(Self.Day)+" "+Month_Name(Self.Month)+" "+str(Self.Year)+" "+Self.SQLTime+" "+Format(gmtHour, "+00")+Format(gmtMinutes,"00")
			  
			End Get
		#tag EndGetter
		RFC2822 As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Format(Self.Hour, "00")+":"+Format(Self.Minute, "00")+":"+Format(Self.Second, "00")
			End Get
		#tag EndGetter
		SQLTime As String
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Day"
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
			Name="Hour"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="Left"
			Visible=true
			Group="Position"
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
			Name="Month"
			Visible=false
			Group="Behavior"
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
			Name="Second"
			Visible=false
			Group="Behavior"
			InitialValue="0"
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
			Name="Top"
			Visible=true
			Group="Position"
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
			Name="Year"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Nanosecond"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SecondsFrom1970"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="IsDaylightSavingsTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
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
			Name="FileTimeStamp"
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
			Name="AbbreviatedDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
