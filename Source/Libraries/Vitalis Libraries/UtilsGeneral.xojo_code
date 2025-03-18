#tag Module
Protected Module UtilsGeneral
	#tag Method, Flags = &h0
		Sub AlwaysOnTop(Extends Win As DesktopWindow, Set As Boolean)
		  #If TargetWin32 Then
		    Const SWP_NOSIZE = &H1
		    Const SWP_NOMOVE = &H2
		    Const HWND_TOPMOST = -1
		    Const HWND_NOTOPMOST = -2
		    
		    Declare Function SetWindowPos Lib "User32.dll" Alias "SetWindowPos" ( _
		    hWnd As Ptr, _
		    hWndInsertAfter As Integer, _
		    X As Int32, _
		    Y As Int32, _
		    cx As Int32, _
		    cy As Int32, _
		    uFlags As UInt32 _
		    ) As Int32
		    
		    If set Then
		      Call SetWindowPos(Win.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE + SWP_NOSIZE)
		    Else
		      Call SetWindowPos(Win.Handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE + SWP_NOSIZE)
		    End
		    
		  #ElseIf TargetCarbon
		    Const kAlertWindowClass = 1
		    Const kMovableAlertWindowClass = 2
		    Const kModalWindowClass = 3
		    Const kMovableModalWindowClass = 4
		    Const kFloatingWindowClass = 5
		    Const kDocumentWindowClass = 6
		    Const kUtilityWindowClass = 8
		    Const kHelpWindowClass = 10
		    Const kSheetWindowClass = 11
		    Const kToolbarWindowClass = 12
		    Const kPlainWindowClass = 13
		    Const kOverlayWindowClass = 14
		    Const kSheetAlertWindowClass = 15
		    Const kAltPlainWindowClass = 16
		    Const kDrawerWindowClass = 20
		    
		    'Declare Function SetWindowClass Lib "Carbon" (WindowHandle as Integer, inWindowClass as Integer) as Integer
		    'Call SetWindowClass(Win.Handle, kFloatingWindowClass)
		    
		    'Declare Function SetWindowClass Lib "Carbon" (inWindow as WindowPtr, inWindowClass as Integer) as Integer
		    'Call SetWindowClass(Win, kFloatingWindowClass)
		    
		  #ElseIf TargetCocoa
		    Const NSNormalWindowLevel = 0
		    Const NSFloatingWindowLevel = 3
		    Const NSModalPanelWindowLevel = 8
		    Const NSDockWindowLevel = 20
		    Const NSMainMenuWindowLevel = 24
		    Const NSPopUpMenuWindowLevel = 101
		    Const NSScreenSaverWindowLevel = 1001
		    
		    Soft Declare Sub NSWindowSetLevel Lib "Cocoa" selector "setLevel:" (windowRef As Ptr, level As Integer)
		    If set Then
		      NSWindowSetLevel(Win.Handle, NSFloatingWindowLevel)
		    Else
		      NSWindowSetLevel(Win.Handle, NSNormalWindowLevel)
		    End
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Bool2Int(b As Boolean) As Integer
		  If b Then
		    Return 1
		  Else
		    Return 0
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BringToFront(Extends Win As DesktopWindow)
		  If Not Win.visible Then
		    Win.visible = True
		  End If
		  
		  #If TargetMacOS
		    Dim psn As UInt64
		    
		    Declare Function GetCurrentProcess Lib "Carbon" (ByRef psn As UInt64) As Integer
		    Declare Function SetFrontProcess Lib "Carbon" (ByRef psn As UInt64) As Integer
		    
		    Call GetCurrentProcess (psn)
		    Call SetFrontProcess (psn)
		    
		  #ElseIf TargetWin32
		    Dim h As Ptr
		    Dim i As Integer
		    
		    Declare Function ShowWindow Lib "User32" (hWnd As Ptr, nCmdShow As Integer) As Integer
		    Declare Function BringWindowToTop Lib "User32" (hWnd As Ptr) As Integer
		    Declare Function SetForegroundWindow Lib "User32" (hWnd As Ptr) As Integer
		    
		    ' Get the Window Handle
		    h = Win.Handle
		    
		    ' Activate the Window
		    i = ShowWindow(h, 1)
		    i = BringWindowToTop(h)
		    i = SetForegroundWindow(h)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Color2Str(c As color, Alpha As Boolean = False) As string
		  Dim s As String
		  s = ""
		  
		  If c.Red < 16 Then s = s + "0"
		  s = s + Hex(c.Red)
		  
		  If c.Green < 16 Then s = s + "0"
		  s = s + Hex(c.Green)
		  
		  If c.Blue < 16 Then s = s + "0"
		  s = s + Hex(c.Blue)
		  
		  If Alpha Then
		    #If RBVersion > 2011.03 Then 'Only Works in 2011.4 or Higher
		      // Color String - AARRGGBB
		      If c.Alpha < 16 Then s = s + "0"
		      s = Hex(c.Alpha) + s
		    #EndIf
		  End If
		  
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FontAvailable(FontName As String) As Boolean
		  Dim i, n As Integer
		  
		  n = System.FontCount - 1
		  For i = 0 to n
		    If System.FontAt(i) = FontName Then
		      Return True
		      
		    End If
		  Next
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatTime(d As date, Pad As Boolean = False, Zero As Boolean = True) As String
		  Dim S As String
		  
		  If d.Hour <= 12 Then
		    If Pad And d.hour > 0 And d.Hour < 10 Then
		      S = " " + Str(d.Hour) + ":"
		    Elseif d.Hour = 0 Then
		      S = "12:"
		    Else
		      S = Str(d.Hour) + ":"
		    End If
		    
		    S = S + Format(d.Minute, "00")
		    
		    If d.Hour <> 12 Then
		      S = S + " AM"
		    Else
		      S = S + " PM"
		    End If
		  Else
		    If Pad And d.Hour < 22 Then
		      S = " " + Str(d.Hour-12) + ":"
		    Else
		      S = Str(d.Hour-12) + ":"
		    End If
		    
		    S = S + Format(d.Minute, "00")
		    
		    S = S + " PM"
		  End If
		  
		  ' Dependig on the font you only need to do this if you dont want a line though the zero
		  If Zero Then
		    S = ReplaceAll(S, "0", "O")
		  End If
		  
		  Return S
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FromStringYMDHMS(Extends dt As Datetime, strdate As String) As Datetime
		  return New DateTime(_
		  strdate.middle(0, 4).ToInteger, _  'Year
		  strdate.middle(4, 2).ToInteger, _  'Month
		  strdate.middle(6, 2).ToInteger, _  'Day
		  strdate.middle(8, 2).ToInteger, _  'Hour
		  strdate.middle(10, 2).ToInteger, _ 'Minute
		  strdate.middle(12, 2).ToInteger)   'Second
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HardwareUUID() As String
		  Var sh As New Shell
		  Var command As String
		  
		  #If TargetMacOS Then
		    command = "ioreg -d2 -c IOPlatformExpertDevice | awk -F\"" '/IOPlatformUUID/{print $(NF-1)}'"
		    sh.Execute(command)
		    
		    Return sh.Result
		    
		  #ElseIf TargetWindows Then
		    command = "wmic csproduct get UUID"
		    
		    sh.Execute(command)
		    Return sh.Result
		  #Else
		    Return "-1"
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init0_DataFolderSetup(sharedLibrary As Boolean = false)
		  Dim tmpfolder As FolderItem
		  Dim logfile As FolderItem
		  
		  ' TapeCalc(v1.0.0_Build_4)[RB_Ver2011.01]: <Notice> ### App Started ###
		  DebugLogPrefix = AppSettings.kAppName
		  DebugLogPrefix = DebugLogPrefix + "(v"+Str(App.MajorVersion)+"."+Str(App.MinorVersion)+"."+Str(App.BugVersion)+"."+Str(App.NonReleaseVersion)+")"
		  DebugLogPrefix = DebugLogPrefix + "[Xojo"+Right(Str(RBVersion), Len(Str(RBVersion))-2)+"]: "
		  
		  // Data Folders
		  If sharedLibrary Then
		    tmpfolder = SpecialFolder.SharedApplicationData
		  Else
		    tmpfolder = SpecialFolder.ApplicationData
		  End If
		  
		  If Not tmpfolder.Exists Then
		    If tmpfolder.IsWriteable Then
		      tmpfolder.CreateAsFolder
		      tmpfolder.Permissions = &o777
		    Else
		      MsgBox("Unable to create Data folder. Closing App.")
		      Quit
		    End If
		  End If
		  
		  DataFolder = tmpfolder.Child(AppSettings.kAppName)
		  If Not DataFolder.Exists Then
		    DataFolder.CreateAsFolder
		    DataFolder.Permissions = &o777
		  End If
		  
		  // Setup Logfile if needed
		  If App.StageCode = 3 Then
		    logfile = DataFolder.Child("debug.log")
		    
		    Try
		      If logfile <> Nil And logfile.Exists Then
		        DebugLogFile = BinaryStream.Open(logfile, True)
		      Else
		        DebugLogFile = BinaryStream.Create(logfile, True)
		      End If
		      DebugLogFile.Position = DebugLogFile.Length
		    End Try
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Int2IP(num As Int64) As String
		  Dim i As Int32 = 1
		  Dim s(3) As Int32
		  
		  While i <= 4
		    s(i-1) = floor(num/(256^(4-i)))
		    num = num - (s(i-1)*(256^(4-i)))
		    
		    i = i + 1
		  Wend
		  
		  Return str(s(0))+"."+str(s(1))+"."+str(s(2))+"."+str(s(3))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IP2Int(s As String) As Int64
		  Dim i As Int32 = 1
		  Dim num As Int64 = 0
		  
		  While i <= 4
		    num = num + (Val(s.NthField(".", i))*(256^(4-i)))
		    
		    i = i + 1
		  Wend
		  
		  Return num
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LogMsg(Type As Integer, err As RuntimeException, s As String)
		  s = "("+str(err.ErrorNumber)+") "+err.Message+" ::: "+s
		  
		  LogMsg(Type, s)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LogMsg(Type As Integer, s As String)
		  Dim d As New Date
		  Dim i As Integer
		  
		  #If RepeatedMsgReduction Then
		    If s = LastLogString Then
		      LastLogCount = LastLogCount + 1
		    Else
		      LastLogString = s
		      LastLogCount = 0
		    End If
		    
		    If LastLogCount > 0 Then
		      s = "Last Message Repeated "+Str(LastLogCount)+" Times"
		      If LastLogCount Mod 2 = 1 Then s = s + " "
		      
		      If LastLogCount > 1 Then
		        i = Len(DebugLogPrefix+"Last Message Repeated "+Str(LastLogCount-1)+" Times"+EndOfLine)+32+((LastLogCount-1) Mod 2)
		        
		        If DebugLogFile <> Nil Then
		          DebugLogFile.Length = DebugLogFile.Length - i
		          DebugLogFile.Position = DebugLogFile.Length
		          DebugLogFile.Flush
		        End If
		      End If
		    End If
		  #EndIf
		  
		  Select Case Type
		    ' Only Show on Development Build
		  Case LogType0_Debug
		    If App.StageCode = 0 Or DebugBuild Then
		      s = DebugLogPrefix+"<Debug>   ["+d.SQLDateTime+"] "+s
		    Else
		      s = ""
		    End If
		    
		    ' Only Show on Alpha Build and below
		  Case LogType1_Notice
		    If App.StageCode < 2 Or DebugBuild Then
		      s = DebugLogPrefix+"<Notice>  ["+d.SQLDateTime+"] "+s
		    Else
		      s = ""
		    End If
		    
		    ' Beta Build
		  Case LogType2_Error
		    s = DebugLogPrefix+"<Error>   ["+d.SQLDateTime+"] "+s
		    
		    
		  Case LogType3_RunTime
		    s = DebugLogPrefix+"<RunTime> ["+d.SQLDateTime+"] "+s
		    
		  End Select
		  
		  If s <> "" Then
		    If DebugLogFile <> Nil Then
		      DebugLogFile.Write(EndOfLine+s)
		      DebugLogFile.Flush
		    End If
		    System.DebugLog(s)
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function NewFSRefOLD(f as FolderItem) As MemoryBlock
		  'If f Is Nil Then
		  'Return Nil
		  'End If
		  '
		  'Const sizeOfFSRef = 80
		  'Dim theFSRef As New MemoryBlock(sizeOfFSRef)
		  '
		  'Dim OSErr As Integer
		  'If f.Parent <> Nil Then
		  'Soft Declare Function FSMakeFSRefUnicode Lib "/System/Library/Frameworks/Carbon.framework/Versions/Current/Carbon"_
		  '(parentPtr As Ptr, nameLength As Integer, name As CString, enc As Integer, outRef As Ptr) As Short
		  '
		  'Dim parentFSRef As MemoryBlock = NewFSRef(f.Parent)
		  'Dim itemName As String = ConvertEncoding(f.Name, Encodings.UTF16)
		  'Const kTextEncodingUnknown = &hffff
		  'OSErr = FSMakeFSRefUnicode(parentFSRef, Len(itemName), itemName, kTextEncodingUnknown, theFSRef)
		  'Else
		  'Soft Declare Function FSGetVolumeInfo Lib "/System/Library/Frameworks/Carbon.framework/Versions/Current/Carbon"_
		  '(Volume As Short, volumeIndex As Integer, actualVolume As Ptr, whichInfo As Integer, info As Ptr, volumeName As Ptr, rootDirectory As Ptr) As Short
		  '
		  'Const kFSVolInfoNone = &h0000
		  'OSErr = FSGetVolumeInfo(f.MacVRefNum, 0, Nil, kFSVolInfoNone, Nil, Nil, theFSRef)
		  'End If
		  'If OSErr <> 0 Then
		  'Return Nil
		  'End If
		  'Return theFSRef
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PictureToString(p as picture) As string
		  // Convert a picture to a string by saving the picture
		  // out to a file on disk and then reading in the binary
		  // data from that file.
		  Dim f As folderItem
		  Dim bs As binaryStream
		  Dim data As String
		  
		  Try
		    
		    // save picture to a temporary file
		    f = GetTemporaryFolderItem
		    f.saveAsPicture(p)
		    
		    // read the data in from the temp file
		    'bs = f.openAsBinaryFile( false )
		    bs = BinaryStream.Open(f, False)
		    data = bs.read(bs.length)
		    bs.close
		    
		    // remove temporary file
		    f.delete
		    
		    // return the binary data
		    
		    Return data
		    
		  Exception// an exception occurred preventing the conversion
		    Return ""
		    
		  End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PopUpCellChoices(extends lb As DesktopListBox, row As Integer, column As Integer, choices() As String, celltags() As String) As Boolean
		  // Pop up the menu of choices for this cell.  If the user picks one,
		  // store it in that cell and return True.  Otherwise, return False.
		  
		  Dim menu As New MenuItem
		  For Each choice As String In choices
		    If choice = "-" Then
		      menu.Append New MenuItem(MenuItem.TextSeparator)
		    Else
		      Dim item As New MenuItem(choice)
		      menu.Append item
		      If choice = lb.CellTextAt(row, column) Then item.Checked = True
		    End If
		  Next
		  
		  Dim choice As MenuItem = menu.PopUp
		  If choice Is Nil Then Return False
		  
		  lb.CellTextAt(row, column) = choice.Text
		  lb.CellTagAt(row, column) = celltags(choices.IndexOf(choice.Text))
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function POSIXPath(extends f as FolderItem) As String
		  If f Is Nil Then
		    Return ""
		  End If
		  
		  #If targetMacOS
		    #If RBVersion >= 2013.03 Then
		      Return f.NativePath
		    #Else
		      If f.Exists Then
		        Dim fsRef As MemoryBlock = NewFSRef(f)
		        If fsRef Is Nil Then
		          Return ""
		        End If
		        
		        Dim path As New MemoryBlock(1024)
		        Do
		          Soft Declare Function FSRefMakePath Lib "/System/Library/Frameworks/Carbon.framework/Versions/Current/Carbon"_
		          (ref As Ptr, path As Ptr, maxPathSize As Integer) As  Integer
		          
		          Dim OSStatus As Integer = FSRefMakePath(fsRef, path, path.Size)
		          Const pathTooLongErr = -2110
		          If OSStatus = 0 Then
		            Return DefineEncoding(path.CString(0), Encodings.UTF8)
		            
		          Elseif OSStatus = pathTooLongErr Then
		            path = New MemoryBlock(path.Size + path.Size)
		            
		          Else
		            Return ""
		          End If
		        Loop
		        
		      Else
		        If f.Parent <> Nil Then
		          Return f.Parent.POSIXPath + "/" + f.Name
		        Else
		          Return "/" + f.Name
		        End If
		      End If
		    #EndIf
		  #EndIf
		  
		  #If targetLinux
		    Return f.AbsolutePath
		  #EndIf
		  
		  #If targetWin32
		    //does such a thing exist for Windows?
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub QuerySQL(Extends db As Database, sql As String)
		  db.ExecuteSQL(sql)
		  
		  If db.Error Then
		    Dim errormsg As String
		    errormsg = "DB Error ("+Str(db.ErrorCode)+"): "+db.ErrorMessage+" in sql query ["+sql+"]"
		    LogMsg(LogType2_Error, errormsg)
		    Break
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function QuerySQL(Extends db As Database, sql As String) As RowSet
		  Dim rs As RowSet
		  
		  rs = db.SelectSQL(sql)
		  
		  If Not db.Error Then
		    Return rs
		  Else
		    Dim errormsg As String
		    errormsg = "DB Error ("+Str(db.ErrorCode)+"): "+db.ErrorMessage+" in sql query ["+sql+"]"
		    LogMsg(LogType2_Error, errormsg)
		    Break
		    Return Nil
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Read7BitEncodedInt(Extends bs As BinaryStream) As Int64
		  Dim output As Int64
		  Dim i As Int64
		  Dim b,c, cleanint As UInt8
		  Dim more, clean As UInt8
		  
		  '#if TargetBigEndian
		  'more = &b00000001
		  'clean = &b11111110
		  '#else
		  more = &b10000000
		  clean = &b01111111
		  '#endif
		  
		  i = 0
		  Do
		    b = bs.ReadUInt8
		    
		    cleanint = Bitwise.BitAnd(b, clean)
		    
		    output = output + (cleanint*(128^i))
		    
		    c = Bitwise.BitAnd(b, more)
		    i = i + 1
		  Loop Until c <> more
		  
		  Return output
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadVBnetString(Extends bs As BinaryStream, Encoding as TextEncoding) As String
		  Return bs.Read(bs.Read7BitEncodedInt, Encoding)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScreenFromXY(X As Integer, Y As Integer) As Integer
		  Dim rect As New REALbasic.Rect
		  Dim pt As New REALbasic.Point
		  pt.X = X
		  pt.Y = Y
		  For i As Integer = 0 To ScreenCount - 1
		    rect.Top = Screen(i).Top
		    rect.Left = Screen(i).Left
		    rect.Width = Screen(i).Width
		    rect.Height = Screen(i).Height
		    If rect.Contains(pt) Then
		      Return i
		    End If
		  Next
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SplitFilePath(path As String, type As Integer = 0) As String
		  Dim j As Integer
		  Dim file_path, file_separator, file_name As String
		  
		  file_separator = "/"
		  file_path = file_separator
		  file_name = ""
		  j = CountFields(path, file_separator) - 1
		  While j > 1
		    file_path = file_separator + NthField(path, file_separator, j) + file_path
		    j = j - 1
		  Wend
		  file_name = NthField(path, file_separator, CountFields(path, file_separator))
		  
		  If Type = 0 Then
		    Return file_path
		  Else
		    Return file_name
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SQLEsc(Extends db As Database, sql As String) As String
		  // Return a version of s ready for use in an SQL statement.
		  
		  // In other words, we just need to double the apostrophes:
		  sql = ReplaceAll(sql, "'", "''" )
		  sql = ReplaceAll(sql, "\", "\\" )
		  Return sql
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SQLEscape(Extends db As Database, sql As String) As String
		  Return db.SQLEsc(sql)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SQLQuery(Extends db As Database, sql As String)
		  db.SQLExecute(sql)
		  
		  If db.Error Then
		    Dim errormsg As String
		    errormsg = "DB Error ("+Str(db.ErrorCode)+"): "+db.ErrorMessage+" in sql query ["+sql+"]"
		    LogMsg(LogType2_Error, errormsg)
		    Break
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SQLQuery(Extends db As Database, sql As String) As RecordSet
		  Dim rs As RecordSet
		  
		  rs = db.SQLSelect(sql)
		  
		  If Not db.Error Then
		    Return rs
		  Else
		    Dim errormsg As String
		    errormsg = "DB Error ("+Str(db.ErrorCode)+"): "+db.ErrorMessage+" in sql query ["+sql+"]"
		    LogMsg(LogType2_Error, errormsg)
		    Break
		    Return Nil
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Str2Bool(s As String) As Boolean
		  s = Lowercase(s)
		  If s = "true" Or s = "1" Then
		    Return True
		  End If
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Str2Color(s as string) As color
		  If Len(s) = 8 Then
		    #If RBVersion > 2011.03 Then 'Only Works in 2011.4 or Higher
		      // Color String - AARRGGBB
		      Return RGB(Val("&H" + s.Mid(3,2)), Val("&H" + s.Mid(5,2)), Val("&H" + s.Mid(7,2)), Val("&H" + s.Mid(1,2)))
		      
		    #Else
		      Return RGB(Val("&H" + s.Mid(1,2)), Val("&H" + s.Mid(3,2)), Val("&H" + s.Mid(5,2)))
		      
		    #EndIf
		  Elseif Len(s) = 6 Then
		    Return RGB(Val("&H" + s.Mid(1,2)), Val("&H" + s.Mid(3,2)), Val("&H" + s.Mid(5,2)))
		    
		  Else
		    Return RGB(0, 0, 0)
		    
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StringToPicture(data as string) As picture
		  // Convert a string to a picture by saving the binary data
		  // to a file on disk and then reading the file as a picture.
		  Dim f As folderItem
		  Dim bs As binaryStream
		  Dim p As picture
		  
		  // write binary data to temporary file
		  f = GetTemporaryFolderItem
		  'bs = f.createBinaryFile( "any" )
		  bs = BinaryStream.Create(f, True)
		  bs.write(data)
		  bs.close
		  
		  // open the file as a picture
		  p = f.openAsPicture
		  
		  // remove temporary file
		  f.delete
		  
		  // return the binary data
		  Return p
		  
		  Exception// an exception occurred preventing the conversion
		    Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToInt32(Extends i As Double) As int32
		  Return CType(i, Int32)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToInt32(Extends i As Int32) As Int32
		  return i
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToInt32(Extends i As Int64) As Int32
		  Return CType(i, Int32)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToPrettyString(Extends xml as XMLDocument) As String
		  Dim pXML As String = ""
		  
		  pXML = pXML + "<?xml version=""1.0"" encoding=""UTF-8""?>"+EndOfLine
		  pXML = pXML + "<xsl:transform version=""1.0"" xmlns:xsl=""http://www.w3.org/1999/XSL/Transform"">"+EndOfLine
		  pXML = pXML + "<xsl:output method=""xml"" indent=""yes"" />"+EndOfLine
		  pXML = pXML + "<xsl:template match=""/"">"+EndOfLine
		  pXML = pXML + "<xsl:copy-of select=""/"" />"+EndOfLine
		  pXML = pXML + "</xsl:template>"+EndOfLine
		  pXML = pXML + "</xsl:transform>"+EndOfLine
		  
		  Return xml.Transform(pXML)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToUInt64(Extends i As Int64) As UInt64
		  Return CType(i, UInt64)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VBInt2Color(i As Integer) As color
		  Dim Mid(2) As Integer
		  Dim s As String
		  
		  s = Hex(I)
		  
		  While Len(s) < 6
		    s = "0" + s
		  Wend
		  Mid(0) = Val("&H" + s.Mid(1,2))
		  Mid(1) = Val("&H" + s.Mid(3,2))
		  Mid(2) = Val("&H" + s.Mid(5,2))
		  
		  Return RGB(Mid(2), Mid(1), Mid(0))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VersionInfoStringApp(MultiLine As Boolean = False) As String
		  Dim s As String
		  s = "App: " + AppSettings.kAppName
		  s = s + " v"+App.Version+" ("+Str(app.NonReleaseVersion)+")"
		  
		  If MultiLine Then
		    s = s + EndOfLine
		  End If
		  s = s + " Build Date: "+app.BuildDate.SQLDateTime
		  
		  Return S
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VersionInfoStringRB(MultiLine As Boolean = False) As String
		  Dim s As String
		  
		  #if RBVersion < 2013 Then
		    s = "Built with: Realbasic " + RBVersionString
		  #else
		    s = "Built with: Xojo " + XojoVersionString
		  #endif
		  
		  if MultiLine Then
		    s = s + EndOfLine
		  else
		    s = s + " "
		  End if
		  s = s + "Built for: "
		  
		  #if TargetMacOS Then
		    s = s + "Mac"
		  #elseif TargetWindows Then
		    s = s + "Windows"
		  #elseif TargetLinux Then
		    s = s + "Linux"
		  #elseif TargetiOS Then
		    s = s + "iOS"
		  #elseif TargetAndroid Then
		    s = s + "Android"
		  #elseif TargetXojoCloud Then
		    s = s + "XojoCloud"
		  #endif
		  s = s + " "
		  
		  #if TargetARM Then
		    s = s + "ARM"
		  #Elseif TargetX86
		    s = s + "x86"
		  #elseif TargetPowerPC then
		    s = s + "PowerPC"
		  #endif
		  s = s + " "
		  
		  #if Target64Bit Then
		    s = s + "64bit"
		  #Elseif Target32Bit Then
		    s = s + "32bit"
		  #Endif
		  
		  Return S
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VersionInfoStringTitle() As String
		  Dim s As String
		  
		  s = AppSettings.kAppName
		  
		  #If DebugBuild Then
		    s = s + " DEBUG"
		  #EndIf
		  
		  s = s + " v"+App.Version
		  
		  #If DebugBuild Then
		    s = s +" ("+Str(app.NonReleaseVersion)+")"
		    #If TargetCocoa Then
		      s = s + " Cocoa"
		    #ElseIf TargetCarbon Then
		      s = s + " Carbon"
		    #EndIf
		    
		  #EndIf
		  
		  Return S
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VersionInterger(v As Integer = 4) As Integer
		  ' Only Show Some of the Version
		  ' 1 - Major Only
		  ' 2 - Minor & Up
		  ' 3 - BugVersion & up
		  ' 4 - All
		  
		  Dim v1, v2, v3, v4 As Integer
		  
		  v1 = Val(NthField(app.Version, ".", 1))
		  If v >= 2 Then
		    v2 = Val(NthField(app.Version, ".", 2))
		  Else
		    v2 = 0
		  End If
		  If v >= 3 Then
		    v3 = Val(NthField(app.Version, ".", 3))
		  Else
		    v3 = 0
		  End If
		  If v >= 4 Then
		    v4 = App.NonReleaseVersion
		  Else
		    v4 = 0
		  End If
		  
		  'v1 = App.MajorVersion
		  'v2 = App.MinorVersion
		  'v3 = App.BugVersion
		  
		  Return Val(Str(v1)+Format(v2, "00")+Format(v3, "00")+Format(v4, "0000"))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function YMDHMS(Extends dt as Datetime) As String
		  return dt.ToString("yyyyMMddhhmmss")
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		DataFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		DebugLogFile As BinaryStream
	#tag EndProperty

	#tag Property, Flags = &h0
		DebugLogPrefix As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastLogCount As UInt64 = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastLogString As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RepeatedSpaces As Integer = 0
	#tag EndProperty


	#tag Constant, Name = LogType0_Debug, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = LogType1_Notice, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = LogType2_Error, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = LogType3_RunTime, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PIE, Type = Double, Dynamic = False, Default = \"3.14159265358979323846264338327950", Scope = Public
	#tag EndConstant

	#tag Constant, Name = RepeatedMsgReduction, Type = Boolean, Dynamic = False, Default = \"True", Scope = Private
	#tag EndConstant


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
		#tag ViewProperty
			Name="RepeatedSpaces"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugLogPrefix"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
