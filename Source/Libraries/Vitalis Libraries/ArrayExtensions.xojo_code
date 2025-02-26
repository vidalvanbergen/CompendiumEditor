#tag Module
Protected Module ArrayExtensions
	#tag Method, Flags = &h0
		Sub Append(extends arr() As Double, arr2() As Double)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  For i As Integer = 0 To UBound(arr2)
		    arr.Append arr2(i)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Append(extends arr() as FolderItem, arr2() as FolderItem)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  For i As Integer = 0 To UBound(arr2)
		    arr.Append arr2(i)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Append(extends arr() As Integer, arr2() As Integer)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  For i As Integer = 0 To UBound(arr2)
		    arr.Append arr2(i)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Append(extends arr() as String, arr2() as String)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  For i As Integer = 0 To UBound(arr2)
		    arr.Append arr2(i)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Average(extends arr() As Double) As Double
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return the arithmetic mean of the values in the array.
		  Dim item, sum As Double
		  for each item in arr
		    sum = sum + item
		  next
		  return sum / (UBound(arr) + 1)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Average(extends arr() As Integer) As Double
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return the arithmetic mean of the values in the array.
		  Dim item, sum As Integer
		  for each item in arr
		    sum = sum + item
		  next
		  return sum / (UBound(arr) + 1)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Clone(extends arr() As Double) As Double()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return an independent copy of this array.
		  
		  Dim out() As Double
		  Dim ub As Integer = UBound( arr )
		  if ub >= 0 then
		    Redim out( ub )
		    Dim index As Integer
		    for index = 0 to ub
		      out( index ) = arr( index )
		    next
		  end if
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Clone(extends arr() As Integer) As Integer()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return an independent copy of this array.
		  
		  Dim out() As Integer
		  Dim ub As Integer = UBound( arr )
		  if ub >= 0 then
		    Redim out( ub )
		    Dim index As Integer
		    for index = 0 to ub
		      out( index ) = arr( index )
		    next
		  end if
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Clone(extends arr() As String) As String()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return an independent copy of this array.
		  
		  Dim out() As String
		  Dim ub As Integer = UBound( arr )
		  if ub >= 0 then
		    Redim out( ub )
		    Dim index As Integer
		    for index = 0 to ub
		      out( index ) = arr( index )
		    next
		  end if
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Concat(extends arr1() As Double, arr2() As Double) As Double()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Concatenate arr2 to arr1 and return the result as a new array.
		  Dim out() As Double
		  Dim ub1 As Integer = UBound( arr1 )
		  Dim ub2 As Integer = UBound( arr2 )
		  Redim out( ub1 + ub2 + 1 )
		  Dim index, base As Integer
		  for index = 0 to ub1
		    out( index ) = arr1( index )
		  next
		  base = ub1 + 1
		  for index = 0 to ub2
		    out( base + index ) = arr2( index )
		  next
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Concat(extends arr1() As Integer, arr2() As Integer) As Integer()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Concatenate arr2 to arr1 and return the result as a new array.
		  Dim out() As Integer
		  Dim ub1 As Integer = UBound( arr1 )
		  Dim ub2 As Integer = UBound( arr2 )
		  Redim out( ub1 + ub2 + 1 )
		  Dim index, base As Integer
		  for index = 0 to ub1
		    out( index ) = arr1( index )
		  next
		  base = ub1 + 1
		  for index = 0 to ub2
		    out( base + index ) = arr2( index )
		  next
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Concat(extends arr1() As String, arr2() As String) As String()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Concatenate arr2 to arr1 and return the result as a new array.
		  Dim out() As String
		  Dim ub1 As Integer = UBound( arr1 )
		  Dim ub2 As Integer = UBound( arr2 )
		  Redim out( ub1 + ub2 + 1 )
		  Dim index, base As Integer
		  for index = 0 to ub1
		    out( index ) = arr1( index )
		  next
		  base = ub1 + 1
		  for index = 0 to ub2
		    out( base + index ) = arr2( index )
		  next
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Contains(extends arr() as Double, value as Double) As Boolean
		  Return arr.IndexOf( value ) > -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Contains(extends arr() as Integer, value as Integer) As Boolean
		  Return arr.IndexOf( value ) > -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Contains(extends arr() as string, value as String) As Boolean
		  Return arr.IndexOf( value ) > -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsFuzzy(Extends TheArray() as String, SearchKey as String) As Boolean
		  Return ContainsFuzzy(TheArray, SearchKey)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsFuzzy(TheArray() as String, SearchKey as String, SplitChar as String = " ") As Boolean
		  if TheArray <> Nil and TheArray.Ubound > 0 and SearchKey <> "" then
		    dim Match as Boolean = True
		    
		    for index as Integer = 0 to TheArray.Ubound
		      dim splitKey() as string = SearchKey.Split(SplitChar)
		      dim splitValue() as string = TheArray(index).Split(SplitChar)
		      
		      if splitKey <> Nil and splitKey.Ubound > -1 then
		        for keyIndex as Integer = 0 to splitKey.Ubound
		          if splitValue.IndexOf(splitKey(keyIndex)) > -1 then
		            Continue
		          else
		            Match = False
		            Exit
		          end if // @END splitValue.Contains(splitKey
		        next // @NEXT keyindex
		      end if // @END splitKey <> Nil
		      
		    next // @NEXT index
		    
		    Return Match
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count(Extends arr() as FolderItem) As Integer
		  Return arr.Ubound + 1
		  // Trickery!
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count(Extends arr() as Integer) As Integer
		  Return arr.Ubound + 1
		  // Trickery!
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count(Extends arr() as String) As Integer
		  Return arr.Ubound + 1
		  // Trickery!
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Max(extends arr() As Double) As Double
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return the greatest of the items in the array, or 0 for an empty array.
		  Dim index, ub As Integer
		  Dim out As Double
		  ub = UBound(arr)
		  if ub >= 0 then
		    out = arr(0)
		    for index = 1 to ub
		      if arr(index) > out then out = arr(index)
		    next
		  end if
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Max(extends arr() As Integer) As Integer
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return the greatest of the items in the array, or 0 for an empty array.
		  Dim index, ub As Integer
		  Dim out As Integer
		  ub = UBound(arr)
		  if ub >= 0 then
		    out = arr(0)
		    for index = 1 to ub
		      if arr(index) > out then out = arr(index)
		    next
		  end if
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Min(extends arr() As Double) As Double
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return the least of the items in the array, or 0 for an empty array.
		  Dim index, ub As Integer
		  Dim out As Double
		  ub = UBound(arr)
		  if ub >= 0 then
		    out = arr(0)
		    for index = 1 to ub
		      if arr(index) < out then out = arr(index)
		    next
		  end if
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Min(extends arr() As Integer) As Integer
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return the least of the items in the array, or 0 for an empty array.
		  Dim index, ub As Integer
		  Dim out As Integer
		  ub = UBound(arr)
		  if ub >= 0 then
		    out = arr(0)
		    for index = 1 to ub
		      if arr(index) < out then out = arr(index)
		    next
		  end if
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveDuplicates(Extends ByRef aList() as String)
		  aList = aList.RemoveDuplicates
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveDuplicates(Extends aList() as String) As String()
		  Return RemoveDuplicates( aList )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveDuplicates(aList() as String) As String()
		  dim newList() as String
		  
		  for each listItem as String in aList
		    if newList.IndexOf( listItem ) = -1 then
		      newList.Append listItem
		    end if
		  next
		  
		  Return newList
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveSlice(extends arr() As Double, fromIndex As Integer = 0, toIndex As Integer = 0)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Deletes a portion of the array.
		  // See "Slice Indexing" note.
		  
		  Dim ub As Integer = UBound( arr )
		  if fromIndex < 0 then fromIndex = ub + 1 + fromIndex
		  if toIndex <= 0 then toIndex = ub + 1 + toIndex
		  
		  if fromIndex > toIndex - 1 then return  // empty (or invalid) range
		  
		  // easy case: deleting the end of the array, we can just redim and be done
		  if toIndex - 1 = ub then
		    Redim arr( fromIndex - 1 )
		    return
		  end if
		  
		  // another easy case: deleting just one element (equivalent to Arary.Remove)
		  if fromIndex = toIndex - 1 then
		    arr.Remove fromIndex
		    return
		  end if
		  
		  // harder case: copy the data down, and THEN redim
		  Dim dest, src As Integer
		  dest = fromIndex
		  for src = toIndex to ub
		    arr(dest) = arr(src)
		    dest = dest + 1
		  next
		  Redim arr( dest - 1 )
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveSlice(extends arr() As Integer, fromIndex As Integer = 0, toIndex As Integer = 0)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Deletes a portion of the array.
		  // See "Slice Indexing" note.
		  
		  Dim ub As Integer = UBound( arr )
		  if fromIndex < 0 then fromIndex = ub + 1 + fromIndex
		  if toIndex <= 0 then toIndex = ub + 1 + toIndex
		  
		  if fromIndex >= toIndex then return  // empty (or invalid) range
		  
		  // easy case: deleting the end of the array, we can just redim and be done
		  if toIndex - 1 = ub then
		    Redim arr( fromIndex - 1 )
		    return
		  end if
		  
		  // another easy case: deleting just one element (equivalent to Array.Remove)
		  if fromIndex = toIndex - 1 then
		    arr.Remove fromIndex
		    return
		  end if
		  
		  // harder case: copy the data down, and THEN redim
		  Dim dest, src As Integer
		  dest = fromIndex
		  for src = toIndex to ub
		    arr(dest) = arr(src)
		    dest = dest + 1
		  next
		  Redim arr( dest - 1 )
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveSlice(extends arr() As String, fromIndex As Integer = 0, toIndex As Integer = 0)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Deletes a portion of the array.
		  // See "Slice Indexing" note.
		  
		  Dim ub As Integer = UBound( arr )
		  if fromIndex < 0 then fromIndex = ub + 1 + fromIndex
		  if toIndex <= 0 then toIndex = ub + 1 + toIndex
		  
		  if fromIndex > toIndex - 1 then return  // empty (or invalid) range
		  
		  // easy case: deleting the end of the array, we can just redim and be done
		  if toIndex -1 = ub then
		    Redim arr( fromIndex - 1 )
		    return
		  end if
		  
		  // another easy case: deleting just one element (equivalent to Arary.Remove)
		  if fromIndex = toIndex - 1 then
		    arr.Remove fromIndex
		    return
		  end if
		  
		  // harder case: copy the data down, and THEN redim
		  Dim dest, src As Integer
		  dest = fromIndex
		  for src = toIndex to ub
		    arr(dest) = arr(src)
		    dest = dest + 1
		  next
		  Redim arr( dest - 1 )
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reverse(extends arr() As Double)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Reverse the order of the elements in the array, in place.
		  
		  Dim low, high, midpoint As Integer
		  high = UBound( arr )
		  if high < 1 then return
		  
		  midpoint = (high + 1) \ 2
		  while low < midpoint
		    Dim temp As Double = arr(low)
		    arr(low) = arr(high)
		    arr(high) = temp
		    low = low + 1
		    high = high - 1
		  wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reverse(extends arr() As Integer)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Reverse the order of the elements in the array, in place.
		  
		  Dim low, high, midpoint As Integer
		  high = UBound( arr )
		  if high < 1 then return
		  
		  midpoint = (high + 1) \ 2
		  while low < midpoint
		    Dim temp As Integer = arr(low)
		    arr(low) = arr(high)
		    arr(high) = temp
		    low = low + 1
		    high = high - 1
		  wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reverse(extends arr() As String)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Reverse the order of the elements in the array, in place.
		  
		  Dim low, high, midpoint As Integer
		  high = UBound( arr )
		  if high < 1 then return
		  
		  midpoint = (high + 1) \ 2
		  while low < midpoint
		    Dim temp As String = arr(low)
		    arr(low) = arr(high)
		    arr(high) = temp
		    low = low + 1
		    high = high - 1
		  wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Slice(extends arr() As Double, fromIndex As Integer = 0, toIndex As Integer = 0) As Double()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return a subset of the given array.
		  // See "Slice Indexing" note.
		  
		  // Note that if fromIndex and toIndex span the entire array, then
		  // this function is equivalent to Clone.
		  
		  Dim ub As Integer = UBound( arr )
		  if fromIndex < 0 then fromIndex = ub + 1 + fromIndex
		  if toIndex <= 0 then toIndex = ub + 1 + toIndex
		  Dim out() As Double
		  Dim outbound As Integer = toIndex - fromIndex - 1
		  Redim out( outbound )
		  Dim index As Integer
		  for index = 0 to outbound
		    out( index ) = arr( fromIndex + index )
		  next
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Slice(extends arr() As Integer, fromIndex As Integer = 0, toIndex As Integer = 0) As Integer()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return a subset of the given array.
		  // See "Slice Indexing" note.
		  
		  // Note that if fromIndex and toIndex span the entire array, then
		  // this function is equivalent to Clone.
		  
		  Dim ub As Integer = UBound( arr )
		  if fromIndex < 0 then fromIndex = ub + 1 + fromIndex
		  if toIndex <= 0 then toIndex = ub + 1 + toIndex
		  Dim out() As Integer
		  Dim outbound As Integer = toIndex - fromIndex - 1
		  Redim out( outbound )
		  Dim index As Integer
		  for index = 0 to outbound
		    out( index ) = arr( fromIndex + index )
		  next
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Slice(extends arr() As String, fromIndex As Integer = 0, toIndex As Integer = 0) As String()
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return a subset of the given array.
		  // See "Slice Indexing" note.
		  
		  // Note that if fromIndex and toIndex span the entire array, then
		  // this function is equivalent to Clone.
		  
		  Dim ub As Integer = UBound( arr )
		  if fromIndex < 0 then fromIndex = ub + 1 + fromIndex
		  if toIndex <= 0 then toIndex = ub + 1 + toIndex
		  Dim out() As String
		  Dim outbound As Integer = toIndex - fromIndex - 1
		  Redim out( outbound )
		  Dim index As Integer
		  for index = 0 to outbound
		    out( index ) = arr( fromIndex + index )
		  next
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Splice(extends arr() As Double, fromIndex As Integer, toIndex As Integer, arrayToInsert() As Double, srcFrom As Integer = 0, srcTo As Integer = 0)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // This function replaces a section (or slice) of the base array with the contents
		  // of another array.  The range replaced is specified with from/to indices, which
		  // may be negative, in which case they count from the end of the array (just as
		  // with the Slice method).  The data to insert comes from arrayToInsert, and is
		  // specified in the same way -- by default, this is the entire source array.
		  
		  Dim ub As Integer = UBound( arr )
		  if fromIndex < 0 then fromIndex = ub + 1 + fromIndex
		  if toIndex <= 0 then toIndex = ub + 1 + toIndex
		  
		  Dim srcub As Integer = UBound( arrayToInsert )
		  if srcFrom < 0 then srcFrom = srcub + 1 + srcFrom
		  if srcTo <= 0 then srcTo = srcub + 1 + srcTo
		  
		  // First, see whether we need to insert or remove items to make room.
		  Dim qtyRemoving As Integer = toIndex - fromIndex
		  if qtyRemoving < 0 then return
		  Dim qtyInserting As Integer = srcTo - srcFrom
		  if qtyInserting < 0 then qtyInserting = 0  // this is OK, just removes the dest slice
		  Dim roomNeeded As Integer = qtyInserting - qtyRemoving
		  
		  // Use RemoveSlice to remove any extra space.
		  if roomNeeded < 0 then
		    arr.RemoveSlice fromIndex, fromIndex - roomNeeded
		  end if
		  
		  // Replace or insert values as needed.
		  Dim srcPos, destPos As Integer
		  destPos = fromIndex
		  for srcPos = srcFrom to srcTo - 1
		    if destPos < toIndex then
		      arr(destPos) = arrayToInsert( srcPos )
		    else
		      arr.Insert destPos, arrayToInsert( srcPos )
		    end if
		    destPos = destPos + 1
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Splice(extends arr() As Integer, fromIndex As Integer, toIndex As Integer, arrayToInsert() As Integer, srcFrom As Integer = 0, srcTo As Integer = 0)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // This function replaces a section (or slice) of the base array with the contents
		  // of another array.  The range replaced is specified with from/to indices, which
		  // may be negative, in which case they count from the end of the array (just as
		  // with the Slice method).  The data to insert comes from arrayToInsert, and is
		  // specified in the same way -- by default, this is the entire source array.
		  
		  Dim ub As Integer = UBound( arr )
		  if fromIndex < 0 then fromIndex = ub + 1 + fromIndex
		  if toIndex <= 0 then toIndex = ub + 1 + toIndex
		  
		  Dim srcub As Integer = UBound( arrayToInsert )
		  if srcFrom < 0 then srcFrom = srcub + 1 + srcFrom
		  if srcTo <= 0 then srcTo = srcub + 1 + srcTo
		  
		  // First, see whether we need to insert or remove items to make room.
		  Dim qtyRemoving As Integer = toIndex - fromIndex
		  if qtyRemoving < 0 then return
		  Dim qtyInserting As Integer = srcTo - srcFrom
		  if qtyInserting < 0 then qtyInserting = 0  // this is OK, just removes the dest slice
		  Dim roomNeeded As Integer = qtyInserting - qtyRemoving
		  
		  // Use RemoveSlice to remove any extra space.
		  if roomNeeded < 0 then
		    arr.RemoveSlice fromIndex, fromIndex - roomNeeded
		  end if
		  
		  // Replace or insert values as needed.
		  Dim srcPos, destPos As Integer
		  destPos = fromIndex
		  for srcPos = srcFrom to srcTo - 1
		    if destPos < toIndex then
		      arr(destPos) = arrayToInsert( srcPos )
		    else
		      arr.Insert destPos, arrayToInsert( srcPos )
		    end if
		    destPos = destPos + 1
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Splice(extends arr() As String, fromIndex As Integer, toIndex As Integer, arrayToInsert() As String, srcFrom As Integer = 0, srcTo As Integer = 0)
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // This function replaces a section (or slice) of the base array with the contents
		  // of another array.  The range replaced is specified with from/to indices, which
		  // may be negative, in which case they count from the end of the array (just as
		  // with the Slice method).  The data to insert comes from arrayToInsert, and is
		  // specified in the same way -- by default, this is the entire source array.
		  
		  Dim ub As Integer = UBound( arr )
		  if fromIndex < 0 then fromIndex = ub + 1 + fromIndex
		  if toIndex <= 0 then toIndex = ub + 1 + toIndex
		  
		  Dim srcub As Integer = UBound( arrayToInsert )
		  if srcFrom < 0 then srcFrom = srcub + 1 + srcFrom
		  if srcTo <= 0 then srcTo = srcub + 1 + srcTo
		  
		  // First, see whether we need to insert or remove items to make room.
		  Dim qtyRemoving As Integer = toIndex - fromIndex
		  if qtyRemoving < 0 then return
		  Dim qtyInserting As Integer = srcTo - srcFrom
		  if qtyInserting < 0 then qtyInserting = 0  // this is OK, just removes the dest slice
		  Dim roomNeeded As Integer = qtyInserting - qtyRemoving
		  
		  // Use RemoveSlice to remove any extra space.
		  if roomNeeded < 0 then
		    arr.RemoveSlice fromIndex, fromIndex - roomNeeded
		  end if
		  
		  // Replace or insert values as needed.
		  Dim srcPos, destPos As Integer
		  destPos = fromIndex
		  for srcPos = srcFrom to srcTo - 1
		    if destPos < toIndex then
		      arr(destPos) = arrayToInsert( srcPos )
		    else
		      arr.Insert destPos, arrayToInsert( srcPos )
		    end if
		    destPos = destPos + 1
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Total(extends arr() As Double) As Double
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return the total sum of the items in the array.
		  Dim item, out As Double
		  for each item in arr
		    out = out + item
		  next
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Total(extends arr() As Integer) As Integer
		  #pragma DisableBackgroundTasks
		  #If NOT DebugBuild Then
		    #pragma DisableBoundsChecking
		    #pragma NilObjectChecking False
		    #pragma StackOverflowChecking False
		  #EndIf
		  
		  // Return the total sum of the items in the array.
		  Dim item, out As Integer
		  for each item in arr
		    out = out + item
		  next
		  return out
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Slice Indexing
		Several of the methods in this module take two indexes to specify a subset
		off an array.  Such a subset is called a "slice" and is involved in methods
		such as RemoveSlice, Slice, and Splice.
		
		In such cases, the first index specifies the first element in the slice.  It may
		be either an ordinary, non-negative index, in which case 0 means the first
		element of the array, 1 means the second element, and so on.  Or it may be
		a negative number, in which case we count from the end of the array; -1 is
		the last element, -2 is the next-to-last, and so on.
		
		The second index specifies the element AFTER the last one to be included
		in the slice.  Again this may be positive or negative, but 0 in this case means
		one past the end of the array.
		
		This indexing scheme seems a bit odd at first (unless you are familiar with
		Python), but it has a lot of advantages.  Suppose you have an array 'a' with
		five elements.  Then you have:
		
		  a.Slice(0,0) is the entire array
		  a.Slice(0,-1) is all but the last element
		  a.Slice(1,0) is all but the first element
		  a.Slice(0,2) is the first two elements
		  a.Slice(2,0) is everything except the first two elements
		
		Indeed, you can generalize and note that a.Slice(0,n).Concat( a.Slice(n,0) )
		always comes out equal to n.  Another advantage is that if you have a loop,
		where either the first index is counting down to 0 or the last index is 
		counting up (from negative numbers) to 0, it will do the right thing in the
		boundary cases (i.e. when the counter hits 0).
	#tag EndNote


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
End Module
#tag EndModule
