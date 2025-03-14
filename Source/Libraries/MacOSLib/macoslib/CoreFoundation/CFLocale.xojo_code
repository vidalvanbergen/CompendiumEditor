#tag Class
Class CFLocale
Inherits CFType
	#tag Event
		Function ClassID() As UInteger
		  return me.ClassID
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Shared Function AvailableIdentifiers() As String()
		  #if targetMacOS
		    //added in 10.4
		    soft declare function CFLocaleCopyAvailableLocaleIdentifiers lib CarbonLib () as Ptr
		    
		    dim theArray as new CFArray(CFLocaleCopyAvailableLocaleIdentifiers(), CFType.hasOwnership)
		    return theArray.StringValues
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ClassID() As UInteger
		  #if targetMacOS
		    soft declare function TypeID lib CarbonLib alias "CFLocaleGetTypeID" () as UInteger
		    static id as UInteger = TypeID
		    return id
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(locale as CFLocale)
		  #if targetMacOS
		    soft declare function CFLocaleCreateCopy lib CarbonLib (allocator as Ptr, locale as Ptr) as Ptr
		    super.Constructor (CFLocaleCreateCopy(nil, locale.Reference), false)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Create(localeIdentifier as String) As CFLocale
		  #if targetMacOS
		    soft declare function CFLocaleCreate lib CarbonLib (allocator as Ptr, localeIdentifier as CFStringRef) as Ptr
		    
		    dim p as Ptr = CFLocaleCreate(nil, localeIdentifier)
		    return new CFLocale(p, true)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateCanonicalLanguageIdentifierFromString(langIdentifier as String) As String
		  #if targetMacOS
		    soft declare function CFLocaleCreateCanonicalLanguageIdentifierFromString lib CarbonLib (allocator as Ptr, langIdentifier as CFStringRef) as CFStringRef
		    
		    return CFLocaleCreateCanonicalLanguageIdentifierFromString(nil, langIdentifier)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateCanonicalLocaleIdentifierFromString(localeIdentifier as String) As String
		  #if targetMacOS
		    soft declare function CFLocaleCreateCanonicalLocaleIdentifierFromString lib CarbonLib (allocator as Ptr, localeIdentifier as CFStringRef) as CFStringRef
		    
		    return CFLocaleCreateCanonicalLocaleIdentifierFromString(nil, localeIdentifier)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function DataPointer(key as String) As Ptr
		  dim b as CFBundle = Carbon.Bundle
		  if b = nil then
		    return nil
		  end if
		  return b.DataPointerNotRetained(key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DisplayName(key as String, value as String = "") As String
		  #if targetMacOS
		    soft declare function CFLocaleCopyDisplayNameForPropertyValue lib CarbonLib (displayLocale as Ptr, key as Ptr, value as CFStringRef) as CFStringRef
		    
		    if value = "" then
		      value = CFString(me.Value(key))
		    end if
		    
		    dim keyPtr as Ptr = Carbon.Bundle.DataPointerNotRetained(key)
		    
		    return CFLocaleCopyDisplayNameForPropertyValue(me, keyPtr.Ptr(0), value)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ISOCommonCurrencyCodes() As String()
		  #if targetMacOS
		    //added in 10.5
		    soft declare function CFLocaleCopyCommonISOCurrencyCodes lib CarbonLib () as Ptr
		    
		    dim theArray as new CFArray(CFLocaleCopyCommonISOCurrencyCodes(), CFType.hasOwnership)
		    return theArray.StringValues
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ISOCountryCodes() As String()
		  #if targetMacOS
		    //added in 10.4
		    soft declare function CFLocaleCopyISOCountryCodes lib CarbonLib () as Ptr
		    
		    dim theArray as new CFArray(CFLocaleCopyISOCountryCodes(), CFType.hasOwnership)
		    return theArray.StringValues
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ISOCurrencyCodes() As String()
		  #if targetMacOS
		    //added in 10.4
		    soft declare function CFLocaleCopyISOCurrencyCodes lib CarbonLib () as Ptr
		    
		    dim theArray as new CFArray(CFLocaleCopyISOCurrencyCodes(), CFType.hasOwnership)
		    return theArray.StringValues
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function PreferredLanguages() As String()
		  #if targetMacOS
		    //added in 10.5
		    soft declare function CFLocaleCopyPreferredLanguages lib CarbonLib () as Ptr
		    
		    dim theArray as new CFArray(CFLocaleCopyPreferredLanguages(), CFType.hasOwnership)
		    return theArray.StringValues
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function SystemLocale() As CFLocale
		  #if targetMacOS
		    soft declare function CFLocaleGetSystem lib CarbonLib () as Ptr
		    return new CFLocale(CFLocaleGetSystem(), false)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function UserLocale() As CFLocale
		  #if targetMacOS
		    soft declare function CFLocaleCopyCurrent lib CarbonLib () as Ptr
		    return new CFLocale(CFLocaleCopyCurrent(), true)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Value(key as String) As CFType
		  #if targetMacOS
		    soft declare function CFLocaleGetValue lib CarbonLib (locale as Ptr, key as Ptr) as Ptr
		    
		    dim p as Ptr = DataPointer(key)
		    if p <> nil then
		      return CFType.NewObject(CFLocaleGetValue(me.Reference, p.Ptr(0)), false, kCFPropertyListImmutable)
		    else
		      return nil
		    end if
		  #endif
		End Function
	#tag EndMethod


	#tag Note, Name = Notes
		
		CFLocale was added to Core Foundation in 10.3.
		CFLocale is toll-free bridged with NSLocale.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleCalendar)
			  if obj is nil then
			    break
			  end if
			  if obj isA CFCalendar then
			    return CFCalendar(obj)
			  else
			    return nil
			  end if
			End Get
		#tag EndGetter
		Calendar As CFCalendar
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleCalendarIdentifier)
			  if obj is nil then
			    break
			  end if
			  if obj isA CFString then
			    return CFString(obj)
			  else
			    //system locale returns a null object.
			    return ""
			  end if
			End Get
		#tag EndGetter
		CalendarIdentifier As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleCollationIdentifier)
			  if obj is nil then
			    break
			  end if
			  if obj isA CFString then
			    return CFString(obj)
			  else
			    //system locale returns a null object.
			    return ""
			  end if
			End Get
		#tag EndGetter
		CollationIdentifier As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleCountryCode)
			  if obj isA CFString then
			    return CFString(obj)
			  else
			    //system locale returns a null object.
			    return ""
			  end if
			End Get
		#tag EndGetter
		CountryCode As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleCurrencyCode)
			  if obj is nil then
			    break
			  end if
			  if obj isA CFString then
			    return CFString(obj)
			  else
			    //system locale returns a null object.
			    return ""
			  end if
			End Get
		#tag EndGetter
		CurrencyCode As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleCurrencySymbol)
			  if obj is nil then
			    break
			  end if
			  if obj isA CFString then
			    return CFString(obj)
			  else
			    return ""
			  end if
			End Get
		#tag EndGetter
		CurrencySymbol As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleDecimalSeparator)
			  if obj is nil then
			    break
			  end if
			  if obj isA CFString then
			    return CFString(obj)
			  else
			    return ""
			  end if
			End Get
		#tag EndGetter
		DecimalSeparator As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleExemplarCharacterSet)
			  if obj isA CFCharacterSet then
			    return CFCharacterSet(obj)
			  else
			    return nil
			  end if
			End Get
		#tag EndGetter
		ExemplarCharacterSet As CFCharacterSet
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleGroupingSeparator)
			  if obj isA CFString then
			    return CFString(obj)
			  else
			    return ""
			  end if
			End Get
		#tag EndGetter
		GroupingSeparator As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetMacOS
			    soft declare function CFLocaleGetIdentifier lib CarbonLib (locale as Ptr) as Ptr
			    
			    if self <> nil then
			      return RetainedStringValue(CFLocaleGetIdentifier(self))
			    else
			      return ""
			    end if
			  #endif
			  
			End Get
		#tag EndGetter
		Identifier As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleLanguageCode)
			  if obj isA CFString then
			    return CFString(obj)
			  else
			    //system locale returns a null object.
			    return ""
			  end if
			End Get
		#tag EndGetter
		LanguageCode As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleMeasurementSystem)
			  if obj isA CFString then
			    return CFString(obj)
			  else
			    return ""
			  end if
			End Get
		#tag EndGetter
		MeasurementSystem As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleScriptCode)
			  if obj isA CFString then
			    return CFString(obj)
			  else
			    return ""
			  end if
			End Get
		#tag EndGetter
		ScriptCode As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleUsesMetricSystem)
			  if obj is nil then
			    break
			  end if
			  if obj isA CFBoolean then
			    return CFBoolean(obj)
			  else
			    //system locale returns a null object.
			    return false
			  end if
			End Get
		#tag EndGetter
		UsesMetricSystem As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim obj as CFType = me.Value(kCFLocaleVariantCode)
			  if obj isA CFString then
			    return CFString(obj)
			  else
			    return ""
			  end if
			End Get
		#tag EndGetter
		VariantCode As String
	#tag EndComputedProperty


	#tag Constant, Name = kCFLocaleCalendar, Type = String, Dynamic = False, Default = \"kCFLocaleCalendar", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleCalendarIdentifier, Type = String, Dynamic = False, Default = \"kCFLocaleCalendarIdentifier", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleCollationIdentifier, Type = String, Dynamic = False, Default = \"kCFLocaleCollationIdentifier", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleCountryCode, Type = String, Dynamic = False, Default = \"kCFLocaleCountryCode", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleCurrencyCode, Type = String, Dynamic = False, Default = \"kCFLocaleCurrencyCode", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleCurrencySymbol, Type = String, Dynamic = False, Default = \"kCFLocaleCurrencySymbol", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleDecimalSeparator, Type = String, Dynamic = False, Default = \"kCFLocaleDecimalSeparator", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleExemplarCharacterSet, Type = String, Dynamic = False, Default = \"kCFLocaleExemplarCharacterSet", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleGroupingSeparator, Type = String, Dynamic = False, Default = \"kCFLocaleGroupingSeparator", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleIdentifier, Type = String, Dynamic = False, Default = \"kCFLocaleIdentifier", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleLanguageCode, Type = String, Dynamic = False, Default = \"kCFLocaleLanguageCode", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleMeasurementSystem, Type = String, Dynamic = False, Default = \"kCFLocaleMeasurementSystem", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleScriptCode, Type = String, Dynamic = False, Default = \"kCFLocaleScriptCode", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleUsesMetricSystem, Type = String, Dynamic = False, Default = \"kCFLocaleUsesMetricSystem", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCFLocaleVariantCode, Type = String, Dynamic = False, Default = \"kCFLocaleVariantCode", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CalendarIdentifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollationIdentifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CountryCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrencyCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrencySymbol"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DecimalSeparator"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GroupingSeparator"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Identifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="LanguageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="MeasurementSystem"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="ScriptCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="UsesMetricSystem"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="VariantCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
