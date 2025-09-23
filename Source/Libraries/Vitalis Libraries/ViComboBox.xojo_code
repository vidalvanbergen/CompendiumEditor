#tag Module
Protected Module ViComboBox
	#tag Method, Flags = &h0
		Function Contains(extends cb as ComboBox, Value as String) As Boolean
		  
		  if cb.LastRowIndex > -1 then
		    for index as Integer = 0 to cb.LastRowIndex
		      if cb.RowValueAt( index ) = Value then
		        Return True
		      end if
		    next
		  end if
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexOfRowWithValue(extends cb as ComboBox, Value as String) As Integer
		  
		  if cb.LastRowIndex > -1 then
		    for index as Integer = 0 to cb.LastRowIndex
		      if cb.RowValueAt( index ) = Value then
		        Return index
		      end if
		    next
		  end if
		  
		  Return -1
		End Function
	#tag EndMethod


End Module
#tag EndModule
