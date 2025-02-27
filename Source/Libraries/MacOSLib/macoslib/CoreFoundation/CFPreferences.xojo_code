#tag Class
Class CFPreferences
	#tag Method, Flags = &h21
		Private Shared Function AnyHost() As Ptr
		  static v as Ptr = GetAnyHost // the app's host can't change while running this app, can it?
		  return v
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function CurrentApplication() As Ptr
		  static v as Ptr = GetCurrentApplication
		  return v
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function CurrentUser() As Ptr
		  static v as Ptr  = GetCurrentUser// the app's user can't change while running this app, can he?
		  return v
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GetAnyHost() As Ptr
		  dim p as Ptr = Carbon.Bundle.DataPointerNotRetained("kCFPreferencesAnyHost")
		  if p <> nil then
		    return p.Ptr(0)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GetCurrentApplication() As Ptr
		  dim p as Ptr = Carbon.Bundle.DataPointerNotRetained("kCFPreferencesCurrentApplication")
		  if p <> nil then
		    return p.Ptr(0)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GetCurrentUser() As Ptr
		  dim p as Ptr = Carbon.Bundle.DataPointerNotRetained("kCFPreferencesCurrentUser")
		  if p <> nil then
		    return p.Ptr(0)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Keys() As String()
		  dim theList() as String
		  
		  #if targetMacOS
		    
		    dim appID as Ptr = CurrentApplication
		    dim user as Ptr = CurrentUser
		    dim host as Ptr = AnyHost
		    if appID = nil or user = nil or host = nil then
		      return theList
		    end if
		    
		    soft declare function CFPreferencesCopyKeyList lib CarbonLib (applicationID as Ptr, userName as Ptr, hostName as Ptr) as Ptr
		    
		    dim p as Ptr = CFPreferencesCopyKeyList(appID, user, host)
		    dim keyArray as new CFArray(p, CFType.hasOwnership) // CFArray can deal with p=nil, so there's no need to check for it here
		    for i as Integer = 0 to keyArray.Count - 1
		      theList.Append keyArray.CFStringRefValue(i)
		    next
		    
		  #endif
		  
		  return theList
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function KeysForApp(appID As String) As String()
		  dim theList() as String
		  
		  #if targetMacOS
		    
		    dim user as Ptr = CurrentUser
		    dim host as Ptr = AnyHost
		    if user = nil or host = nil then
		      return theList
		    end if
		    
		    declare function CFPreferencesCopyKeyList lib CarbonLib (applicationID as CFStringRef, userName as Ptr, hostName as Ptr) as Ptr
		    
		    dim p as Ptr = CFPreferencesCopyKeyList(appID, user, host)
		    dim keyArray as new CFArray(p, true) // CFArray can deal with p=nil, so there's no need to check for it here
		    for i as Integer = 0 to keyArray.Count - 1
		      dim theValue as CFType = keyArray.CFValue(i)
		      theList.Append CFString(theValue)
		    next
		    
		  #endif
		  
		  return theList
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Sync() As Boolean
		  #if targetMacOS
		    soft declare function CFPreferencesAppSynchronize lib CarbonLib (applicationID as Ptr) as Boolean
		    
		    dim appID as Ptr = CurrentApplication
		    if appID <> nil then
		      dim syncSucceeded as Boolean = CFPreferencesAppSynchronize(appID)
		      if syncSucceeded then
		        mDirty = false
		        return true
		      end
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function SyncForApp(appID As String) As Boolean
		  #if targetMacOS
		    soft declare function CFPreferencesAppSynchronize lib CarbonLib (applicationID as CFStringRef) as Boolean
		    
		    dim syncSucceeded as Boolean = CFPreferencesAppSynchronize(appID)
		    return syncSucceeded
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Value(key as String) As CFPropertyList
		  // Note: this function may actually return nil - that's if the key does not exist in the prefs
		  
		  #if targetMacOS
		    declare function CFPreferencesCopyAppValue lib CarbonLib (key as CFStringRef, applicationID as Ptr) as Ptr
		    
		    dim appID as Ptr = CurrentApplication
		    if appID <> nil then
		      dim p as Ptr = CFPreferencesCopyAppValue(key, appID)
		      if p <> nil then
		        dim theValue as CFType = CFType.NewObject(p, CFType.hasOwnership, kCFPropertyListImmutable)
		        if theValue isA CFPropertyList then
		          return CFPropertyList(theValue)
		        else
		          break // oops, this is unexpected, because it should never happen.
		          return nil
		        end if
		      end if
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub Value(key as String, assigns theValue as CFPropertyList)
		  #if targetMacOS
		    dim ref as Ptr
		    if theValue is nil then
		      // we'll pass nil so that the preference entry gets deleted
		      ref = nil
		    else
		      ref = theValue.Reference
		    end if
		    declare sub CFPreferencesSetAppValue lib CarbonLib (key as CFStringRef, value as Ptr, applicationID as Ptr)
		    dim appID as Ptr = CurrentApplication
		    if appID <> nil then
		      CFPreferencesSetAppValue key, ref, appID
		      mDirty = true
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Value(key as String, default as CFPropertyList) As CFPropertyList
		  //Overloads Function Value(key as String) as CFPropertyList to add a parameter for a default value.
		  dim v as CFPropertyList = Value(key)
		  if v <> nil then
		    return v
		  else
		    return default
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ValueForApp(key as String, appID as String) As CFPropertyList
		  // Like Value(), but with access to other app's preferences by specifying their ID
		  // Note: this function may actually return nil - that's if the key does not exist in the prefs
		  
		  #if targetMacOS
		    declare function CFPreferencesCopyAppValue lib CarbonLib (key as CFStringRef, applicationID as CFStringRef) as Ptr
		    
		    dim p as Ptr = CFPreferencesCopyAppValue(key, appID)
		    if p <> nil then
		      dim theValue as CFType = CFType.NewObject(p, CFType.hasOwnership, kCFPropertyListImmutable)
		      if theValue isA CFPropertyList then
		        return CFPropertyList(theValue)
		      else
		        break // oops, this is unexpected, because it should never happen.
		        return nil
		      end if
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub ValueForApp(key as String, appID as String, assigns theValue as CFPropertyList)
		  // Like Value(), but with access to other app's preferences by specifying their ID
		  
		  #if targetMacOS
		    dim ref as Ptr
		    if theValue is nil then
		      // we'll pass nil so that the preference entry gets deleted
		      ref = nil
		    else
		      ref = theValue.Reference
		    end if
		    declare sub CFPreferencesSetAppValue lib CarbonLib (key as CFStringRef, value as Ptr, applicationID as CFStringRef)
		    CFPreferencesSetAppValue key, ref, appID
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function VariantValue(key as String, default as Variant) As Variant
		  // "smart" version that returns a fitting type as a variant or returns the default if no such key exists in the prefs
		  
		  dim v as CFType = CFType(Value(key))
		  if v = nil then
		    return default
		  end if
		  
		  return v.VariantValue
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mDirty
			End Get
		#tag EndGetter
		Shared Dirty As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared mDirty As Boolean
	#tag EndProperty


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
	#tag EndViewBehavior
End Class
#tag EndClass
