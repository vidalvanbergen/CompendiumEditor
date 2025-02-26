#tag Module
Protected Module DateManipulation
	#tag Method, Flags = &h0
		Function DaysFromNow(TheDate as Date) As Integer
		  Return TheDate.DaysFromNow
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DaysFromNow(Extends TheDate as Date) As Integer
		  
		  dim Now as new Date
		  dim difference as Integer =  TheDate.TotalSeconds - Now.TotalSeconds
		  
		  if difference < 0 then
		    difference = Floor( difference/60/60/24 )
		  else
		    difference = Ceil( difference/60/60/24 )
		  end if
		  
		  Return difference
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isWithinDays(Extends TheDate as Date, WithinDays as Integer) As Boolean
		  
		  dim Today as New DatePro
		  Today.Hour = 0
		  Today.Minute = 0
		  Today.Second = 0
		  
		  dim DaysDifference as Double = Round( ( TheDate.TotalSeconds - Today.TotalSeconds ) / 60 / 60 / 24 )
		  
		  Return DaysDifference > -WithinDays
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MonthToInt(Month as String) As Integer
		  
		  dim Month_Name_Short(12) as string = Array(" ", "Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
		  dim Month_Name_Long(12)  as string = Array(" ", "January","February","March","April","May","June","July","August","September","October","November","December")
		  
		  if Month.Len = 3 then
		    Return Month_Name_Short.IndexOf( Month )
		  else
		    Return Month_Name_Long.IndexOf( Month )
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PrettifyDuration(duration as Integer) As String
		  
		  if duration > 0 then
		    dim days as Integer = Floor( duration/60/24 )
		    dim hours as Integer = Floor( duration/60 - (days*24*60) )
		    dim minutes as Integer = duration - (hours*60) - (days*24*60)
		    
		    if days > 0 then
		      'Return Str( days ) + Keywords.TimesAndDates.time_Days.Left(1).Lowercase + " " + _
		      'Str( hours ) + Keywords.TimesAndDates.time_Hour.Left(1).Lowercase + " " + _
		      'str( minutes ) + Keywords.TimesAndDates.time_Minutes.Left(1).Lowercase
		      
		    elseif hours > 0 then
		      'Return Str( hours ) + Keywords.TimesAndDates.time_Hour.Left(1).Lowercase + " " + _
		      'str( minutes ) + Keywords.TimesAndDates.time_Minutes.Left(1).Lowercase
		      
		    else
		      'Return str( minutes ) + Keywords.TimesAndDates.time_Minutes.Left(1).Lowercase
		    end if
		    
		  else
		    Return ""
		  end if
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
