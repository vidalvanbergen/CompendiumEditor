#tag Module
Protected Module modAlerts
	#tag Method, Flags = &h1
		Protected Sub Alert(Type as AlertTypes, Title as string, msg as string, btn1txt as string, btn2txt as string, btn3txt as string, w as window = nil)
		  dim i as integer =  Alert(type, title, msg, btn1txt, btn2txt, btn3txt, w)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Alert(Type as AlertTypes, Title as string, msg as string, btn1txt as string, btn2txt as string, btn3txt as string, w as window = nil) As integer
		  Dim d as New MessageDialog  //declare the MessageDialog object
		  Dim b as MessageDialogButton //for handling the result
		  
		  select case Type
		  case AlertTypes.kCaution
		    d.icon=MessageDialog.GraphicCaution   //display warning icon
		  case AlertTypes.kNote
		    d.icon = MessageDialog.GraphicNote
		  case AlertTypes.kStop
		    d.icon = MessageDialog.GraphicStop
		  case AlertTypes.kPlain
		    d.icon = MessageDialog.GraphicNone
		  case AlertTypes.kQuestion
		    d.icon = MessageDialog.GraphicQuestion
		  end
		  
		  
		  d.ActionButton.Caption= btn1txt
		  
		  if btn2txt <> "" then
		    d.CancelButton.Visible= True     //show the Cancel button
		    d.CancelButton.Caption = btn2txt
		  else
		    d.CancelButton.Visible = false
		  end
		  
		  if btn3txt <> "" then
		    d.AlternateActionButton.Visible= True   //show the "Don't Save" button
		    d.AlternateActionButton.Caption = btn3txt
		  else
		    d.AlternateActionButton.Visible = false
		  end
		  
		  d.Message = Title
		  d.Explanation = msg
		  if w = nil then
		    b=d.ShowModal    //display the dialog
		  else
		    #if TargetWindows
		      b = d.ShowModal
		    #else
		      b = d.ShowModalWithin(w)
		    #Endif
		  end
		  
		  Select Case b //determine which button was pressed.
		  Case d.ActionButton
		    return 1
		  Case d.AlternateActionButton
		    return 3
		  Case d.CancelButton
		    return 2
		  End select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub MessageBox(TitleStr as string, MsgStr as string, w as window = nil)
		  
		  Dim d as New MessageDialog  //declare the MessageDialog object
		  Dim b as MessageDialogButton //for handling the result
		  
		  d.icon = MessageDialog.GraphicNote
		  
		  d.ActionButton.Caption = Keywords.Dialog.Buttons.kOK
		  
		  
		  d.Message = TitleStr
		  d.Explanation = MsgStr
		  
		  If w = Nil Then
		    b=d.ShowModal    //display the dialog
		  Else
		    #If TargetWindows Then
		      b = d.ShowModal
		    #Else
		      b = d.ShowModalWithin(w)
		    #Endif
		  End
		End Sub
	#tag EndMethod


	#tag Enum, Name = AlertTypes, Type = Integer, Flags = &h0
		kCaution = 2
		  kNote = 1
		  kPlain = 3
		  kStop = 0
		kQuestion = 4
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="2147483648"
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
