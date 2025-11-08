#tag Window
Begin ContainerControl ccEditorTextArea
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   True
   HasBackgroundColor=   False
   Height          =   179
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   300
   Begin DesktopLabel lblName
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Description:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin DesktopBevelButton btnDropdown
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   7
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   "≡"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   278
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopTextArea txtField
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   False
      AllowTabs       =   True
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   157
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   22
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   300
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AddListGap()
		  value = value.ReplaceAllRegEx( "\t•(.*?)\n\t•", "\t•$1\n\n\t•" )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CloseListGap()
		  
		  'value = value.ReplaceAllRegEx( chr(9) + "• (.*?)\n\n" + chr(9) + "•", chr(9) + "• $1\n" + chr(9) + "•" )
		  value = value.ReplaceAllRegEx( "\t• (.*?)\n\n\t•", "\t• $1\n\t•" )
		  
		  'value = value.ReplaceAll( "\n", EndOfLine ) // restore line endings
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DecreaseIndentFromSelectedLines(txtArea as DesktopTextArea)
		  
		  var selText as String = txtArea.SelectedText
		  var selStart, selLength as Integer
		  selStart = txtArea.SelectionStart
		  selLength = txtArea.SelectionLength
		  
		  var lines() as String = txtArea.Text.Split( EndOfLine )
		  'var selectedLines() as String
		  
		  var LinesUpToSelectionStart() as String = txtArea.Text.Mid(0, selStart+1).Split( EndOfLine )
		  var selectedTextLines() as String = txtArea.SelectedText.Split( EndOfLine )
		  
		  
		  var IndexOfSelectedLineStart as Integer = LinesUpToSelectionStart.LastIndex
		  var IndexOfSelectedLineEnd as Integer
		  
		  
		  var LineSelStart as Integer = selStart
		  var startOfLine as Integer
		  for index as Integer = 0 to IndexOfSelectedLineStart-1
		    LineSelStart = LineSelStart - (lines(Index).Length +1)
		    startOfLine = startOfLine + (lines(Index).Length+1)
		  next
		  
		  
		  
		  if selText <> "" then
		    IndexOfSelectedLineEnd = IndexOfSelectedLineStart + Max( selectedTextLines.LastIndex, 0 )
		  else
		    IndexOfSelectedLineEnd = IndexOfSelectedLineStart
		  end if
		  
		  var removedCharacterLength as Integer
		  
		  var removedIndentCharacter as String
		  for index as Integer = IndexOfSelectedLineStart to IndexOfSelectedLineEnd
		    
		    var indentCharacters() as String = Array( "  ", " ", chr(9) )
		    
		    for each indentCharacter as String in indentCharacters
		      
		      if lines(index).IndexOf( 0, indentCharacter ) = 0 then
		        lines(index) = lines(index).Replace( indentCharacter, "" )
		        
		        
		        if index = IndexOfSelectedLineStart then
		          selStart = selStart-indentCharacter.Length
		          
		          // Adjust selection length if selection starts inside indent character
		          if LineSelStart <= indentCharacter.Length then
		            selLength = selLength - (indentCharacter.Length - LineSelStart)
		          end if
		          
		        else
		          selLength = selLength-indentCharacter.Length
		        end if
		        
		        removedIndentCharacter = indentCharacter
		        Exit
		      end if
		    next
		    
		    
		    
		  next
		  
		  selStart = Max( selStart, startOfLine )
		  
		  
		  txtArea.Text = String.FromArray( lines, EndOfLine )
		  txtArea.SelectionStart = selStart
		  txtArea.SelectionLength = selLength
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FormatLists(ByRef selectedText as String, UseSelection as Boolean = True)
		  
		  selectedText = NormalizeLineEndings( selectedText )
		  
		  var listitemmarks() as string = Array( "*", "•", "0", "-" )
		  for each liMark as string in listitemmarks
		    selectedText = selectedText.ReplaceAll( EndOfLine + liMark + " ", EndOfLine + chr(9) + "• " )
		    selectedText = selectedText.ReplaceAll( EndOfLine + chr(9) + liMark + " ", EndOfLine + chr(9) + "• " )
		  next
		  
		  selectedText = selectedText.ReplaceAll( ":" + EndOfLine + chr(9) + "•", ":" + EndOfLine + EndOfLine + Chr(9) + "•" )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FormatParagraphs(ByRef selectedText as string, Indent as Boolean = True)
		  
		  selectedText = NormalizeLineEndings( selectedText )
		  
		  // Save tables
		  var tableLines() as String = selectedText.Split( EndOfLine )
		  for index as Integer = tableLines.LastIndex DownTo 0
		    if tableLines(index).Contains("|") then
		      if Index < tableLines.LastIndex and tableLines(index+1).Contains("|") then
		        tableLines(index) = tableLines(index) + "\1n"
		      end if
		      if index > 0 and tableLines(index-1) = "" then
		        tableLines(index-1) = tableLines(index-1) + "\1n"
		      end if
		    end if
		  next
		  selectedText = string.FromArray( tableLines, EndOfLine ) 
		  
		  
		  selectedText = selectedText.ReplaceAllRegEx( "(\.|\:)\n(\w+|\(\w+)", "$1\\n$2" ) // Mark common end of line markers.
		  
		  selectedText = selectedText.ReplaceAllRegEx( "(\w+)\-\n(\w+)", "$1$2" ) // Join hypenated new line words.
		  selectedText = selectedText.ReplaceAllRegEx( "(\w+)\n\((\w+)", "$1 ($2" ) // Join lines with '(' on new line words.
		  
		  // Dumb down quotes
		  selectedText = selectedText.ReplaceAll("‘", "'")
		  selectedText = selectedText.ReplaceAll("’", "'")
		  selectedText = selectedText.ReplaceAll("“", """")
		  selectedText = selectedText.ReplaceAll("”", """")
		  
		  // Fix common typos
		  selectedText = selectedText.ReplaceAll(" .", "." )
		  
		  // Save lists
		  selectedText = selectedText.ReplaceAll( EndOfLine + chr(9) + "•", "\n\t•" )
		  // Save paragraphs
		  selectedText = selectedText.ReplaceAll( EndOfLine + chr(9), "\n" )
		  selectedText = selectedText.ReplaceAll( EndOfLine + EndOfLine, "\n" )
		  // Save source
		  selectedText = selectedText.ReplaceAll( EndOfLine + "Source:", "\nSource:" )
		  
		  
		  // Remove lineendings
		  'value = value.ReplaceAll( EndOfLine, " " )
		  'value = value.ReplaceAllRegEx( "(\w+)\n(\w+)", "$1 $2" )
		  'selectedText = selectedText.ReplaceAll("\n" + EndOfLine, "\n")
		  selectedText = selectedText.ReplaceAllRegEx( "(\w+)(,|)\n(\w+)", "$1$2 $3" )
		  
		  // Remove double spaces
		  while selectedText.Contains("  ")
		    selectedText = selectedText.ReplaceAll( "  ", " " )
		  wend
		  while selectedText.Contains( chr(9) + " ")
		    selectedText = selectedText.ReplaceAll( chr(9) + " ", chr(9) )
		  wend
		  
		  
		  // Restore lists
		  'selectedText = selectedText.ReplaceAll( "\n ", "\n" )
		  
		  selectedText = selectedText.ReplaceAll( "\n\t", EndOfLine + chr(9) )
		  // Restore necessairy line endings
		  if Indent then
		    selectedText = selectedText.ReplaceAll( "\n", EndOfLine + chr(9) )
		  else
		    selectedText = selectedText.ReplaceAll( "\n", EndOfLine + EndOfLine )
		  end if
		  selectedText = selectedText.ReplaceAll( "\1n", EndOfLine )
		  selectedText = selectedText.ReplaceAll( EndOfLine + " ", EndOfLine )
		  
		  // Remove trailing spaces
		  while selectedText.Contains( " " + EndOfLine )
		    selectedText = selectedText.ReplaceAll( " " + EndOfLine, EndOfLine )
		  wend
		  selectedText = Trim( selectedText )
		  
		  // Sort out |tables| and headers:
		  var lines() as String = selectedText.Split( EndOfLine )
		  for index as Integer = lines.LastIndex DownTo 0
		    
		    if lines(index).StartsWith( chr(9) ) then
		      
		      if lines(index).Contains("|") or lines(index).Contains(":") then
		        lines(index) = lines(index).Replace( chr(9), "" )
		      end if
		      
		    end if
		    
		    if index > 0 and _
		      lines(index).EndsWith(":") and _
		      lines(index-1) <> "" and NOT lines(index-1).Contains(":") then
		      
		      lines.AddAt( index, "" )
		      if Index < lines.LastIndex then
		        if lines(index+1).StartsWith(chr(9)) then
		          lines(index+1) = lines(index+1).Replace(chr(9), "")
		        end if
		      end if
		    end if
		    
		    'if index < lines.LastIndex and lines(index).Contains("|") and NOT lines(index+1).Contains("|") and lines(index+1) <> "" then
		    'if lines(index+1).StartsWith( chr(9) ) then
		    'lines(index+1) = lines(index+1).Replace( chr(9), "" )
		    'end if
		    'lines.AddAt(index+1, "")
		    'end if
		  next
		  selectedText = String.FromArray( lines, EndOfLine )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IncreaseIndentFromSelectedLines(txtArea as DesktopTextArea)
		  
		  
		  var selText as String = txtArea.SelectedText
		  var selStart, selLength as Integer
		  selStart = txtArea.SelectionStart
		  selLength = txtArea.SelectionLength
		  
		  
		  txtArea.Text = NormalizeLineEndings( txtArea.Text )
		  
		  var lines() as String = txtArea.Text.Split( EndOfLine )
		  'var selectedLines() as String
		  
		  var LinesUpToSelectionStart() as String = txtArea.Text.Mid(0, selStart+1).Split( EndOfLine )
		  var selectedTextLines() as String = txtArea.SelectedText.Split( EndOfLine )
		  
		  
		  var IndexOfSelectedLineStart as Integer = LinesUpToSelectionStart.LastIndex
		  var IndexOfSelectedLineEnd as Integer
		  
		  
		  
		  if selText <> "" then
		    IndexOfSelectedLineEnd = IndexOfSelectedLineStart + Max( selectedTextLines.LastIndex, 0 )
		  else
		    IndexOfSelectedLineEnd = IndexOfSelectedLineStart
		  end if
		  
		  
		  for index as Integer = IndexOfSelectedLineStart to IndexOfSelectedLineEnd
		    
		    if lines(index).Trim <> "" then
		      lines(index) = chr(9) + lines(Index)
		      if index = IndexOfSelectedLineStart then
		        selStart = selStart +1
		      else
		        selLength = selLength +1
		      end if
		    end if
		    
		  next
		  
		  
		  
		  txtArea.Text = String.FromArray( lines, EndOfLine )
		  txtArea.SelectionStart = selStart
		  txtArea.SelectionLength = selLength
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  me.Value = ""
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event BuildTemplateMenu()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return lblName.Text'.Left( lblName.Text.Length-1 )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  lblName.Text = Value' + ":"
			End Set
		#tag EndSetter
		FieldName As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		TemplateMenu As MenuItem
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return txtField.Text.StupifyQuotes
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  txtField.Text = value
			End Set
		#tag EndSetter
		Value As String
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events btnDropdown
	#tag Event
		Sub Pressed()
		  
		  
		  var basemenu as new MenuItem
		  
		  // Build templates menu
		  RaiseEvent BuildTemplateMenu()
		  
		  
		  if TemplateMenu <> Nil and TemplateMenu.Count > 0 then
		    var subTemplateMenu as new MenuItem( "Templates" )
		    
		    if TemplateMenu <> Nil and TemplateMenu.LastRowIndex > -1 then
		      for index as Integer = 0 to TemplateMenu.LastRowIndex
		        var mi as MenuItem = TemplateMenu.MenuAt( index )
		        if mi <> Nil and mi.Tag <> "" then
		          subTemplateMenu.AddMenu new MenuItem( mi.Text, mi.Tag )
		        end if
		      next
		    end if
		    
		    if subTemplateMenu.Count > 0 then
		      basemenu.AddMenu subTemplateMenu
		      basemenu.AddMenu new MenuItem("-")
		    end if
		  end if
		  
		  '#if DebugBuild then
		  'basemenu.Append new MenuItem("Experimental Feature")
		  'basemenu.Append new MenuItem("-")
		  '#endif
		  basemenu.Append new MenuItem("Format lists")
		  basemenu.Append new MenuItem("-")
		  
		  var formatwithspacing as new MenuItem("Format paragraphs with spacing")
		  'formatwithspacing.KeyboardShortcut = "CMD-ALT"
		  formatwithspacing.Shortcut = "K"
		  
		  var formatwithindent as new MenuItem("Format paragraphs with indent")
		  'formatwithindent.KeyboardShortcut = "Cmd-Alt"
		  formatwithindent.Shortcut = "L"
		  
		  
		  basemenu.Append formatwithspacing
		  basemenu.append formatwithindent
		  
		  basemenu.Append new MenuItem("-")
		  
		  var fixcommontypos as new MenuItem("Fix Common OCR Typos")
		  basemenu.Append fixcommontypos
		  
		  if txtField.SelectedText <> "" then
		    basemenu.Append new MenuItem("-")
		    basemenu.Append new MenuItem("Format selected text's lists")
		    basemenu.Append new MenuItem("-")
		    basemenu.Append new MenuItem("Format selected text's paragraphs with spacing")
		    basemenu.Append new MenuItem("Format selected text's paragraphs with indent")
		    basemenu.Append new MenuItem("-")
		    
		    var miIncreaseIndentation as MenuItem = new MenuItem("Increase indentation of selected lines")
		    miIncreaseIndentation.Shortcut = "]"
		    var miDecreaseIndentation as MenuItem = new MenuItem("Decrease indentation of selected lines")
		    miDecreaseIndentation.Shortcut = "["
		    
		    basemenu.Append miIncreaseIndentation 'new MenuItem("Increase indentation of selected lines")
		    basemenu.Append miDecreaseIndentation 'new MenuItem("Decrease indentation of selected lines")
		  end if
		  
		  
		  var hititem as MenuItem = BaseMenu.PopUp
		  if hititem <> Nil then
		    
		    if hititem.Tag.StringValue.StartsWith("template:") then
		      var templateValue as String = hititem.Tag.StringValue.Replace("template:", "").Trim
		      
		      if txtField.Text = "" then
		        txtField.Text = templateValue
		      else
		        txtField.Text = txtField.Text + EndOfLine + EndOfLine + templateValue
		      end if
		      
		    else
		      
		      var originalText,selectedText as String
		      
		      var UseSelection as Boolean = hititem.Text.Contains(" selected ")
		      if UseSelection and txtField.SelectedText <> "" then
		        selectedText = txtField.SelectedText
		        originalText = txtField.SelectedText
		      else
		        selectedText = txtField.Text
		      end if
		      
		      
		      Select case hititem.Text
		        
		      case "Experimental Feature"
		        selectedText = selectedText.Match("Source:\s(.*?)\Z", 1).ReplaceAll( EndOfLine, " " ).ReplaceAll( chr(9), "" )
		        
		      case "Format paragraphs with spacing", "Format selected text's paragraphs with spacing"
		        FormatParagraphs( selectedText, False )
		      case "Format paragraphs with indent", "Format selected text's paragraphs with indent"
		        FormatParagraphs( selectedText, True )
		        
		      Case "Format lists", "Format selected text's lists"
		        FormatLists( selectedText )
		        
		      case "Close list gaps"
		        CloseListGap
		        
		      case "Add list gaps"
		        
		      case "Increase indentation of selected lines"
		        IncreaseIndentFromSelectedLines( txtField )
		      case "Decrease indentation of selected lines"
		        DecreaseIndentFromSelectedLines( txtField )
		        
		      case "Fix Common OCR Typos"
		        selectedText = FixTypos( selectedText )
		        
		      End Select
		      
		      if UseSelection and txtField.SelectedText <> "" then
		        txtField.Text = txtField.Text.Replace( originalText, selectedText )
		        
		        txtField.SelectionStart = txtField.Text.IndexOf( selectedText )
		        txtField.SelectionLength = selectedText.Length
		      else
		        txtField.Text = selectedText
		      end if
		      
		    end if
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtField
	#tag Event
		Function KeyDown(key As String) As Boolean
		  dim AscKey as Integer = Asc( key )
		  
		  
		  if (TargetMacOS and Keyboard.AsyncCommandKey) OR (TargetWindows and Keyboard.AsyncControlKey) then
		    
		    Select case AscKey
		      
		    case 91 ' [
		      DecreaseIndentFromSelectedLines( me )
		      Return True
		      
		    case 93 ' ]
		      IncreaseIndentFromSelectedLines ( me )
		      Return True
		      
		    case 107, 108 ' K or L
		      
		      var selectedText, originalText as String
		      if txtField.SelectedText <> "" then
		        selectedText = txtField.SelectedText
		        originalText = txtField.SelectedText
		      else
		        selectedText = txtField.Text
		      end if
		      
		      
		      
		      FormatParagraphs( selectedText, AscKey = 108 )
		      
		      if txtField.SelectedText <> "" then
		        txtField.Text = txtField.Text.Replace( originalText, selectedText )
		        
		        txtField.SelectionStart = txtField.Text.IndexOf( selectedText )
		        txtField.SelectionLength = selectedText.Length
		      else
		        txtField.Text = selectedText
		      end if
		      
		      Return True
		      
		    End Select
		    
		  end if
		  
		  
		  Return False
		End Function
	#tag EndEvent
	#tag Event
		Sub KeyUp(key As String)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="EraseBackground"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
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
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
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
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowAutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Tooltip"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FieldName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Value"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
