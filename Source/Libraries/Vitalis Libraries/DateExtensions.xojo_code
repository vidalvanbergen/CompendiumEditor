#tag Module
Protected Module DateExtensions
	#tag Method, Flags = &h0
		Function FileTimeStap(extends d as Date) As String
		  Return Format(d.Year,"0000")+"-"+Format(d.Month,"00")+"-"+Format(d.Day,"00")+"_"+Format(d.Hour,"00")+"-"+Format(d.Minute,"00")+"-"+Format(d.Second,"00")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ISO8601(extends d as Date) As String
		  '1986-02-12T01:19:21+02:00
		  '2004-02-12T15:59:21Z
		  '2010-02-12T23:19:00-03:30
		  dim gmtHour as Integer = Floor(d.GMTOffset)
		  dim gmtMinutes as Integer = (d.GMTOffset-gmtHour)*60
		  
		  Return Replace(d.SQLDateTime, " ", "T")+Format(gmtHour, "+00\:;+00\:;\Z")+Format(gmtMinutes,"00")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ISO8601(extends d as Date, assigns value as String)
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
		      d.Year = Val(value)
		      
		    Case 7 'YYYY-MM
		      d.Year = Val(Left(value, 4))
		      d.Month = Val(Right(value, 2))
		      
		    Case 8 to 10 'YYYY-MM-DD
		      'Self.SQLDate = value
		      d.Year = Val(value.NthField("-",1))
		      d.Month = Val(value.NthField("-",2))
		      d.Day = Val(value.NthField("-",3))
		      
		    Else
		      Raise New UnsupportedFormatException
		      
		    End Select
		  Else
		    ' YYYY-MM-DDThh:mm+00:00
		    value = ReplaceAll(value, "T", " ")
		    value = Chop(value, 3)
		    
		    ' Set Time Zone
		    d.GMTOffset = val(Right(value, 3))
		    'val(Left(Right(value, 6), 3))
		    
		    ' Remove Time Zone
		    value = Chop(value, 3)
		    
		    value = Left(value, Len(value)-InStr(value, "."))
		    
		    d.SQLDateTime = value
		    
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RFC2822(extends d as Date) As String
		  Dim Day_Name(7) As String
		  Dim Month_Name(12) As String
		  
		  Day_Name = Array(" ","Sun","Mon","Tue","Wed","Thu","Fri","Sat")
		  Month_Name = Array(" ", "Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
		  
		  dim gmtHour as Integer = Floor(d.GMTOffset)
		  dim gmtMinutes as Integer = (d.GMTOffset-gmtHour)*60
		  
		  'Thu, 21 Dec 2000 16:01:07 +0200
		  Return Day_Name(d.DayOfWeek)+", "+str(d.Day)+" "+Month_Name(d.Month)+" "+str(d.Year)+" "+d.SQLTime+" "+Format(gmtHour, "+00")+Format(gmtMinutes,"00")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SQLTime(extends d as Date) As String
		  Return Format(d.Hour, "00")+":"+Format(d.Minute, "00")+":"+Format(d.Second, "00")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SQLTime(extends d as Date, assigns value as String)
		  Dim parts() As String
		  
		  parts = Split(value, ":")
		  
		  d.Hour = val(parts(0))
		  d.Minute = val(parts(1))
		  d.Second = val(parts(2))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UnixEpoch(extends d as Date) As Double
		  Return d.TotalSeconds - 2082844800
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnixEpoch(extends d as Date, assigns value as Double)
		  d.TotalSeconds = value + 2082844800
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
