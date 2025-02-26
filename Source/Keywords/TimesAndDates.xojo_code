#tag Module
Protected Module TimesAndDates
	#tag Constant, Name = dayFriday, Type = String, Dynamic = True, Default = \"Friday", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Friday"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Vrijdag"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Freitag"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Vendredi"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Fredag"
	#tag EndConstant

	#tag Constant, Name = dayFridayShort, Type = String, Dynamic = True, Default = \"Fri", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Fri"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Vrij"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Frei"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Ven"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Fre"
	#tag EndConstant

	#tag Constant, Name = dayMonday, Type = String, Dynamic = True, Default = \"Monday", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Monday"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Maandag"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Montag"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Lundi"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"M\xC3\xA5ndag"
	#tag EndConstant

	#tag Constant, Name = dayMondayShort, Type = String, Dynamic = True, Default = \"Mon", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Mon"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Ma"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mon"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Lun"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"M\xC3\xA5n"
	#tag EndConstant

	#tag Constant, Name = daySaturday, Type = String, Dynamic = True, Default = \"Saturday", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Saturday"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Zaterdag"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Samstag"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Samedi"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"L\xC3\xB6rdag"
	#tag EndConstant

	#tag Constant, Name = daySaturdayShort, Type = String, Dynamic = True, Default = \"Sat", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Sat"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Za"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Sam"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Sa"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"L\xC3\xB6r"
	#tag EndConstant

	#tag Constant, Name = daySunday, Type = String, Dynamic = True, Default = \"Sunday", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Sunday"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Zondag"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Sonntag"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Dimanche"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"S\xC3\xB6ndag"
	#tag EndConstant

	#tag Constant, Name = daySundayShort, Type = String, Dynamic = True, Default = \"Sun", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Sun"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Zo"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Sonn"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Di"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"S\xC3\xB6n"
	#tag EndConstant

	#tag Constant, Name = dayThursday, Type = String, Dynamic = True, Default = \"Thursday", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Thursday"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Donderdag"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Donnerstag"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Jeudi"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Torsdag"
	#tag EndConstant

	#tag Constant, Name = dayThursdayShort, Type = String, Dynamic = True, Default = \"Thu", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Thu"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Do"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Don"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Je"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Tors"
	#tag EndConstant

	#tag Constant, Name = dayTuesday, Type = String, Dynamic = True, Default = \"Tuesday", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Tuesday"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Dinsdag"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Dienstag"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Mardi"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Tisdag"
	#tag EndConstant

	#tag Constant, Name = dayTuesdayShort, Type = String, Dynamic = True, Default = \"Tue", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Tue"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Di"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Dien"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Mar"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Tis"
	#tag EndConstant

	#tag Constant, Name = dayWednesday, Type = String, Dynamic = True, Default = \"Wednesday", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Wednesday"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Woensdag"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mittwoch"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Mercredi"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Onsdag"
	#tag EndConstant

	#tag Constant, Name = dayWednesdayShort, Type = String, Dynamic = True, Default = \"Wed", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Wed"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Wo"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mitt"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Merc"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Ons"
	#tag EndConstant

	#tag Constant, Name = monthAprilLong, Type = String, Dynamic = True, Default = \"April", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"April"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"April"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"April"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"April"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Avril"
	#tag EndConstant

	#tag Constant, Name = monthAprilShort, Type = String, Dynamic = True, Default = \"Apr", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Apr"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Apr"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Apr"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Apr"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Avr"
	#tag EndConstant

	#tag Constant, Name = monthAugustLong, Type = String, Dynamic = True, Default = \"August", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"August"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Augustus"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Augusti"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"August"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Ao\xC3\xBBt"
	#tag EndConstant

	#tag Constant, Name = monthAugustShort, Type = String, Dynamic = True, Default = \"Aug", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Aug"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Aug"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Aug"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Aug"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Ao\xC3\xBBt"
	#tag EndConstant

	#tag Constant, Name = monthDecemberLong, Type = String, Dynamic = True, Default = \"December", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"December"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"December"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"December"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Dezember"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"D\xC3\xA9cembre"
	#tag EndConstant

	#tag Constant, Name = monthDecemberShort, Type = String, Dynamic = True, Default = \"Dec", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Dec"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Dec"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Dec"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Dez"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Dec"
	#tag EndConstant

	#tag Constant, Name = monthFebruaryLong, Type = String, Dynamic = True, Default = \"February", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"February"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Februari"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Februari"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Februar"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"F\xC3\xA9vrier"
	#tag EndConstant

	#tag Constant, Name = monthFebruaryShort, Type = String, Dynamic = True, Default = \"Feb", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Feb"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Feb"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Feb"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Feb"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Fev"
	#tag EndConstant

	#tag Constant, Name = monthJanuaryLong, Type = String, Dynamic = True, Default = \"January", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"January"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Januari"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Januari"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Januar"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Janvier"
	#tag EndConstant

	#tag Constant, Name = monthJanuaryShort, Type = String, Dynamic = True, Default = \"Jan", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Jan"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Jan"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Jan"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jan"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Jan"
	#tag EndConstant

	#tag Constant, Name = monthJulyLong, Type = String, Dynamic = True, Default = \"July", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"July"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Juli"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Juli"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Juli"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Juillet"
	#tag EndConstant

	#tag Constant, Name = monthJulyShort, Type = String, Dynamic = True, Default = \"Jul", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Jul"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Jul"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Juli"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jul"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Juil"
	#tag EndConstant

	#tag Constant, Name = monthJuneLong, Type = String, Dynamic = True, Default = \"June", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"June"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Juni"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Juni"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Juni"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Juin"
	#tag EndConstant

	#tag Constant, Name = monthJuneShort, Type = String, Dynamic = True, Default = \"Jun", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Jun"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Jun"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Juni"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jun"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Juin"
	#tag EndConstant

	#tag Constant, Name = monthMarchLong, Type = String, Dynamic = True, Default = \"March", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"March"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Maart"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Mars"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"M\xC3\xA4rz"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Mars"
	#tag EndConstant

	#tag Constant, Name = monthMarchShort, Type = String, Dynamic = True, Default = \"Mar", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Mar"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Mar"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Mar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mar"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Mar"
	#tag EndConstant

	#tag Constant, Name = monthMayLong, Type = String, Dynamic = True, Default = \"May", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"May"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Mei"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Maj"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mai"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Mai"
	#tag EndConstant

	#tag Constant, Name = monthMayShort, Type = String, Dynamic = True, Default = \"May", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"May"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Mei"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Maj"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mai"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Mai"
	#tag EndConstant

	#tag Constant, Name = monthNovemberLong, Type = String, Dynamic = True, Default = \"November", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"November"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"November"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"November"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"November"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Novembre"
	#tag EndConstant

	#tag Constant, Name = monthNovemberShort, Type = String, Dynamic = True, Default = \"Nov", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Nov"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Nov"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Nov"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nov"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Nov"
	#tag EndConstant

	#tag Constant, Name = monthOctoberLong, Type = String, Dynamic = True, Default = \"October", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"October"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Oktober"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Oktober"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Oktober"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Octobre"
	#tag EndConstant

	#tag Constant, Name = monthOctoberShort, Type = String, Dynamic = True, Default = \"Oct", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Oct"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Okt"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Okt"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Oct"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Oct"
	#tag EndConstant

	#tag Constant, Name = monthSeptemberLong, Type = String, Dynamic = True, Default = \"September", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"September"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"September"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"September"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"September"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Septembre"
	#tag EndConstant

	#tag Constant, Name = monthSeptemberShort, Type = String, Dynamic = True, Default = \"Sep", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Sep"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Sep"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Sept"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Sep"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Sept"
	#tag EndConstant

	#tag Constant, Name = timeEnded, Type = String, Dynamic = True, Default = \"Ended", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Ended"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Be\xC3\xABindigd"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Beendet"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Termin\xC3\xA9"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Avslutad"
	#tag EndConstant

	#tag Constant, Name = timeThisMonth, Type = String, Dynamic = True, Default = \"This Month", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"This Month"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Deze maand"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Dieser Monat"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Den h\xC3\xA4r m\xC3\xA5naden"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Ce mois-ci"
	#tag EndConstant

	#tag Constant, Name = timeThisWeek, Type = String, Dynamic = True, Default = \"This Week", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"This Week"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Deze week"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Diese Woche"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Den h\xC3\xA4r veckan"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Cette semaine"
	#tag EndConstant

	#tag Constant, Name = timeToBeAnnounced, Type = String, Dynamic = True, Default = \"To Be Announced", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"To Be Announced"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Onaangekondigd"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Wird angek\xC3\xBCndigt"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Bient\xC3\xB4t"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Oannonserad"
	#tag EndConstant

	#tag Constant, Name = timeToday, Type = String, Dynamic = True, Default = \"Today", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Today"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Vandaag"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Heute"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Idag"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Aujourd\'hui"
	#tag EndConstant

	#tag Constant, Name = timeTomorrow, Type = String, Dynamic = True, Default = \"Tomorrow", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Tomorrow"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Morgen"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Morgen"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"I morgon"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Demain"
	#tag EndConstant

	#tag Constant, Name = timeUpcoming, Type = String, Dynamic = True, Default = \"Upcoming", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Upcoming"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Aankomende"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Demn\xC3\xA4chst"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Kommande"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Prochainement"
	#tag EndConstant

	#tag Constant, Name = timeYesterday, Type = String, Dynamic = True, Default = \"Yesterday", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Yesterday"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Gisteren"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Gestern"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Ig\xC3\xA5r"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Hier"
	#tag EndConstant

	#tag Constant, Name = time_Day, Type = String, Dynamic = True, Default = \"Day", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Day"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Dag"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Tag"
	#tag EndConstant

	#tag Constant, Name = time_Days, Type = String, Dynamic = True, Default = \"Days", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Days"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Dagen"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Tage"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Dagar"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Jours"
	#tag EndConstant

	#tag Constant, Name = time_DaysAgo, Type = String, Dynamic = True, Default = \"Days ago", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Days ago"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Dagen geleden"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Tage zuvor"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Dagar sedan"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Jours depuis"
	#tag EndConstant

	#tag Constant, Name = time_Hour, Type = String, Dynamic = True, Default = \"Hour", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Hour"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Uur"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Stunde"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Timme"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Heure"
	#tag EndConstant

	#tag Constant, Name = time_HourAgo, Type = String, Dynamic = True, Default = \"Hour Ago", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Hour Ago"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Uur geleden"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Stunde zuvor"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Timma sedan"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Heure depuis"
	#tag EndConstant

	#tag Constant, Name = time_Hours, Type = String, Dynamic = True, Default = \"Hours", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Hours"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Uren"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Stunden"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Timmar"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Heures"
	#tag EndConstant

	#tag Constant, Name = time_HoursAgo, Type = String, Dynamic = True, Default = \"Hours Ago", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Hours Ago"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Uren geleden"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Stunden zuvor"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Timmar sedan"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Heures depuis"
	#tag EndConstant

	#tag Constant, Name = time_Minute, Type = String, Dynamic = True, Default = \" Minute", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \" Minute"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \" Minuut"
	#tag EndConstant

	#tag Constant, Name = time_Minutes, Type = String, Dynamic = True, Default = \"Minutes", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Minutes"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Minuten"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Minuten"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Minuter"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Minutes"
	#tag EndConstant

	#tag Constant, Name = time_MinutesFuture, Type = String, Dynamic = True, Default = \"Minutes from now", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"min from now"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"min van nu"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"min ab jetzt"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"min fr\xC3\xA5n och med nu"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"min \xC3\xA0 partir de maintenant"
	#tag EndConstant

	#tag Constant, Name = time_MinutesLeft, Type = String, Dynamic = True, Default = \"min left", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"min left"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"min over"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"min verbleiben"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"min v\xC3\xA4nster"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"min Gauche"
	#tag EndConstant

	#tag Constant, Name = time_MinutesPast, Type = String, Dynamic = True, Default = \"Minutes ago", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"min ago"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"min geleden"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"min zuvor"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"min sedan"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"min depuis"
	#tag EndConstant

	#tag Constant, Name = time_Now, Type = String, Dynamic = True, Default = \"Now", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Now"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Nu"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jetzt"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Nu"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Maintenant"
	#tag EndConstant

	#tag Constant, Name = time_Seconds, Type = String, Dynamic = True, Default = \"Seconds", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Seconds"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Seconden"
	#tag EndConstant

	#tag Constant, Name = time_Year, Type = String, Dynamic = True, Default = \"Year", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Year"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Jaar"
		#Tag Instance, Platform = Any, Language = sv, Definition  = \"\xC3\x85r"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jahr"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Ann\xC3\xA9e"
	#tag EndConstant

	#tag Constant, Name = time_Years, Type = String, Dynamic = True, Default = \"Years", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Years"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Jaren"
	#tag EndConstant


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
