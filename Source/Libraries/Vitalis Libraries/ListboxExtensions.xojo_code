#tag Module
Protected Module ListboxExtensions
	#tag Method, Flags = &h0
		Function CellValueAt(Extends lb as Listbox, row as Integer, column as Integer) As String
		  // Prepare for API 2.0
		  Return lb.Cell(row, column)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CellValueAt(Extends lb as Listbox, row as Integer, column as Integer, Assigns value as String)
		  // Prepare for API 2.0
		  lb.Cell(row, column) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ColumnAtPoint(Extends lb as Listbox, X as Integer, Y as Integer) As Integer
		  // Prepare for API 2.0
		  Return lb.ColumnFromXY(X,Y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasHeader(extends lb as Listbox) As Boolean
		  // Prepare for API 2.0
		  Return lb.HasHeading
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HasHeader(extends lb as Listbox, assigns value as boolean)
		  // Prepare for API 2.0
		  lb.HasHeading = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HeaderAt(extends lb as Listbox, column as Integer) As String
		  // Prepare for API 2.0
		  Return lb.Heading(column)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HeaderAt(extends lb as Listbox, column as Integer, assigns value as String)
		  // Prepare for API 2.0
		  lb.Heading(column) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PopUpCellChoices(extends lb As Listbox, row As Integer, column As Integer, choices() As String, celltags() As String) As Boolean
		  // Pop up the menu of choices for this cell.  If the user picks one,
		  // store it in that cell and return True.  Otherwise, return False.
		  
		  Dim menu As New MenuItem
		  For Each choice As String In choices
		    If choice = "-" Then
		      menu.Append New MenuItem(MenuItem.TextSeparator)
		    Else
		      Dim item As New MenuItem(choice)
		      menu.Append item
		      If choice = lb.Cell(row, column) Then
		        item.Checked = True
		      End If
		      
		    End If
		  Next
		  
		  Dim choice As MenuItem = menu.PopUp
		  if choice <> Nil then
		    lb.Cell(row, column) = choice.Text
		    lb.CellTag(row, column) = celltags(choices.IndexOf(choice.Text))
		    Return True
		  End If
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllRows(extends lb as Listbox)
		  // Prepare for API 2.0
		  lb.DeleteAllRows
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveRowAt(extends lb as Listbox, row as Integer)
		  // Prepare for API 2.0
		  lb.RemoveRow(row)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowCount(Extends lb as Listbox) As Integer
		  // Prepare for API 2.0
		  Return lb.ListIndex
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedIndex(Extends lb as Listbox) As Integer
		  // Prepare for API 2.0
		  Return lb.ListIndex
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
