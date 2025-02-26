#tag Class
Protected Class Vi_clsBugReporter
	#tag Method, Flags = &h21
		Private Function ErrorMessage(Title as string, message as string) As Integer
		  dim TheDialog as new MessageDialog // Declare the MessageDialog object.
		  dim TheResult as MessageDialogButton // For handling the result
		  
		  TheDialog.Icon = MessageDialog.GraphicCaution // Warning Icon
		  TheDialog.ActionButton.Caption = Keywords.Dialog.Buttons.kOK
		  
		  TheDialog.CancelButton.Visible = False
		  
		  TheDialog.AlternateActionButton.Visible = True // Show the "Report it" button.
		  TheDialog.AlternateActionButton.Caption = ErrorReportIt
		  
		  TheDialog.Message = Title
		  TheDialog.Explanation = message
		  
		  TheResult = TheDialog.ShowModal // Display the dialog and store the result
		  Select case TheResult
		  case TheDialog.ActionButton
		    Return 1
		  case TheDialog.AlternateActionButton
		    Return 3
		  case TheDialog.CancelButton // Shouldn't return since we don't have a cancel button.
		    Return 2
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Report(err as RuntimeException, location as string = "", otherErr as string = "")
		  
		  // Throw assertions if these are not set.
		  BKS_Debug.Assert(AppSettings.kAppName <> "")
		  BKS_Debug.Assert(AppSettings.kCompanyName <> "")
		  BKS_Debug.Assert(AppSettings.kEmailAddress <> "")
		  
		  if err IsA EndException or err IsA ThreadEndException then
		    // Not really a bug
		    Return
		  end if
		  
		  dim ars() as String = Helpers.CleanStack(err)
		  dim sStack as String = Join(ars, EndOfLine)
		  
		  if location = "" then
		    // If location wasn't passed in then figure it out from the stack.
		    if ars.Ubound > -1 then
		      location = ars(0).Replace("Sub ", "") // Remove the Sub so it makes more sense.
		    end if
		  end if
		  
		  dim msgStr as String = TypeOfException(err) + " occurred in " + location
		  if otherErr <> "" then
		    msgStr = msgStr + ". " + otherErr
		  end if
		  
		  dim iResponse as Integer = ErrorMessage(ErrorTitle, ErrorMsg)
		  
		  dim sOtherMsg as String
		  if err IsA BKS_Debug.BKS_AssertFailedException then
		    sOtherMsg = err.Message
		  end if
		  
		  if iResponse = 3 then // If user choose to show the bug reporter.
		    dim w as new wndBugReporter
		    w.AskToSend "RuntimeException: " + TypeOfException(err), location, sOtherMsg, sStack, err
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Report(sErrorType as String, sMessage as String, sErrorDetails as String)
		  
		  // Throw assertions if these are not set.
		  BKS_Debug.Assert(AppSettings.kAppName <> "")
		  BKS_Debug.Assert(AppSettings.kCompanyName <> "")
		  BKS_Debug.Assert(AppSettings.kEmailAddress <> "")
		  
		  dim result as Integer = ErrorMessage(sErrorType, sMessage)
		  
		  if result = 3 then
		    dim w as new wndBugReporter
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function TypeOfException(err as runtimeexception) As string
		  if err <> nil Then
		    Return Introspection.GetType(err).FullName
		  else
		    Return Keywords.kNotAvailable
		  end if
		End Function
	#tag EndMethod


	#tag Constant, Name = ErrorMsg, Type = String, Dynamic = True, Default = \"An error occurred that may cause the application to be unstable. You may want to restart the application.\n\nPlease help us fix this bug by reporting it.", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ErrorReportIt, Type = String, Dynamic = True, Default = \"Report Error", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ErrorTitle, Type = String, Dynamic = True, Default = \"An Error Occurred", Scope = Private
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
End Class
#tag EndClass
