#tag Class
Protected Class WebKitViewer
Inherits HTMLViewer
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  #pragma Unused Key
		  'Return kEventNotHandled
		End Function
	#tag EndEvent

	#tag Event
		Sub KeyUp(Key As String)
		  #pragma Unused Key
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  #if TargetCocoa
		    Declare Function alloc Lib "Cocoa" Selector "alloc" (classRef As Ptr) As Ptr
		    Declare Function init Lib "Cocoa" Selector "init" (classRef As Ptr) As Ptr
		    Declare Sub setUIDelegate Lib "Cocoa" Selector "setUIDelegate:" (id As Ptr, del_id As Ptr)
		    
		    me.mInstance = init(alloc(SSWebViewClass))
		    
		    if (me.mInstance <> Nil) then
		      setUIDelegate Ptr(me.Handle), me.mInstance
		      Viewers.Append me
		    end if
		  #endif
		  
		  RaiseEvent Open
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AcceptTextDrop()
		  me.mAcceptTextDrop = TRUE
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Bold()
		  me.ExecuteJavaScript "document.execCommand('bold', false, null);"
		End Sub
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub CefFrameCutDelegate(p_cef_frame_t As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub CefFramePasteDelegate(p_cef_frame_t As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Function CefGetFocusedFrameDelegate(p_cef_browser_t As Ptr) As Integer
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Function CefOnDragEnter(drag_handler As Ptr, browser As Ptr, drag_data As Ptr, mask As Ptr) As Integer
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub CefReload(p_pointer As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub CefReloadIgnoreCache(p_pointer As Ptr)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub CefSetFocusDelegate(p_pointer As Ptr)
	#tag EndDelegateDeclaration

	#tag ExternalMethod, Flags = &h21
		Private Declare Function class_addMethod Lib "Cocoa" (classRef As Ptr, name As Ptr, imp As Ptr, types As CString) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function class_addProtocol Lib "Cocoa" (aClass As Ptr, protocol As Ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Function CocoaDictionaryFromNSDictionary(element As Ptr) As Dictionary
		  #if TargetCocoa
		    // DECLARES
		    Declare Function NSArrayCount Lib "Cocoa" Selector "count" (id As Ptr) As Integer  // NSUinteger
		    Declare Function NSArrayObjectAtIndex Lib "Cocoa" Selector "objectAtIndex:" (id As Ptr, index As Integer) As Ptr  // NSObject
		    Declare Function NSDictionaryAllKeys Lib "Cocoa" Selector "allKeys" (id As Ptr) As Ptr  // NSArray
		    Declare Function NSDictionaryObjectForKey Lib "Cocoa" Selector "objectForKey:" (id As Ptr, aKey As CFStringRef) As Ptr  // NSObject
		    Declare Function NSDictionaryValueForKey Lib "Cocoa" Selector "valueForKey:" (id As Ptr, aKey As CFStringRef) As Ptr  // NSString?
		    Declare Function NSNumberBoolValue Lib "Cocoa" Selector "boolValue" (id As Ptr) As Boolean
		    Declare Function NSURLAbsoluteString Lib "Cocoa" Selector "absoluteString" (id As Ptr) As CFStringRef  // NSString
		    Declare Function CFRetain Lib "Cocoa" (cf As Ptr) As CFStringRef
		    Declare Sub CFRelease Lib "Cocoa" (cf As CFStringRef)
		    
		    // VARIABLES
		    DIM returnValue As NEW Dictionary
		    DIM elementKeys As Ptr = NSDictionaryAllKeys(element)  // get array of NSDictionary keys
		    DIM elementKeysCount As Integer = NSArrayCount(elementKeys)  // get array count
		    
		    // loop over the NSArray and build a Xojo array
		    for i as Integer = 0 to (elementKeysCount - 1)
		      DIM keyName As CFStringRef = CFRetain(NSArrayObjectAtIndex(elementKeys, i))
		      
		      select case keyName
		      case WebElementImage  // Picture representing an image element.
		        returnValue.Value(WebElementImage) = CocoaPictureFromNSImage(NSDictionaryObjectForKey(element, keyName))
		      case WebElementImageAltString  // String of the ALT attribute of an image element.
		        returnValue.Value(WebElementImageAltString) = CFRetain(NSDictionaryValueForKey(element, keyName))
		        ' case WebElementImageRect  // An NSValue containing an NSRect, the size of an image element.
		        //
		      case WebElementImageURL  // String containing the absolute URI of an image element.
		        returnValue.Value(WebElementImageURL) = NSURLAbsoluteString(NSDictionaryObjectForKey(element, keyName))
		      case WebElementIsContentEditableKey  // BOOL value to indicate whether the element is editable or not.
		        returnValue.Value(WebElementIsContentEditableKey) = NSNumberBoolValue(NSDictionaryObjectForKey(element, keyName))
		        ' case WebElementIsInScrollBar
		        ' returnValue.Value(WebElementIsInScrollBar) = NSNumberBoolValue(NSDictionaryObjectForKey(element, keyName))
		      case WebElementIsSelected  //BOOL value to indicate whether a text element is selected or not.
		        returnValue.Value(WebElementIsSelected) = NSNumberBoolValue(NSDictionaryObjectForKey(element, keyName))
		      case WebElementLinkIsLive  // BOOL indicating whether the link is live or not.
		        returnValue.Value(WebElementLinkIsLive) = NSNumberBoolValue(NSDictionaryObjectForKey(element, keyName))
		      case WebElementLinkLabel  // String containing the text within an anchor.
		        returnValue.Value(WebElementLinkLabel) = CFRetain(NSDictionaryValueForKey(element, keyName))
		      case WebElementLinkURL  // String containing the absolute URI of a link if the element is within an anchor.
		        returnValue.Value(WebElementLinkURL) = NSURLAbsoluteString(NSDictionaryObjectForKey(element, keyName))
		        ' case WebElementTargetFrame
		        //
		      end select
		      
		      if (keyName <> "") then
		        CFRelease keyName
		      end if
		    next
		    
		    Return returnValue
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function CocoaPictureFromNSImage(nsImage As Ptr) As Picture
		  DIM returnValue As Picture
		  
		  #if TargetCocoa   // lifted from macoslib
		    // DECLARES
		    Declare Function CGImageForPropsedRectContextHints Lib "Cocoa" Selector "CGImageForProposedRect:context:hints:" (id As Ptr, ByRef proposedDestRect As NSRect, referenceContext As Ptr, hints As Ptr) As Ptr  // CGImageRef
		    Declare Function CGImageGetHeight Lib "Cocoa" (image As Ptr) As Integer
		    Declare Function CGImageGetWidth Lib "Cocoa" (image As Ptr) As Integer
		    Declare Function Size Lib "Cocoa" Selector "size" (id As Ptr) As NSSize
		    Declare Sub CGContextDrawImage Lib "Cocoa" (context As Ptr, rect As CGRect, image As Ptr)
		    
		    // VARIABLES
		    DIM proposedDestRect As NSRect
		    DIM nsImageSize As NSSize = Size(nsImage)
		    DIM context As Ptr
		    DIM cgRectRef As CGRect
		    DIM cgPointRef As CGPoint
		    DIM cgSizeRef As CGSize
		    
		    // set the default size
		    proposedDestRect.Width = nsImageSize.Width
		    proposedDestRect.Height = nsImageSize.Height
		    
		    // create the CGImage
		    DIM CGImageRef As Ptr = CGImageForPropsedRectContextHints(nsImage, proposedDestRect, Nil, Nil)
		    if (CGImageRef <> Nil) then
		      // create the xojo picture
		      returnValue = NEW Picture(CGImageGetWidth(CGImageRef), CGImageGetHeight(CGImageRef))
		      
		      cgPointRef.X = 0.0
		      cgPointRef.Y = 0.0
		      cgSizeRef.Width = returnValue.Width
		      cgSizeRef.Height = returnValue.Height
		      cgRectRef.Origin = cgPointRef
		      cgRectRef.RectSize = cgSizeRef
		      
		      context = Ptr(returnValue.Graphics.Handle(Graphics.HandleTypeCGContextRef))
		      CGContextDrawImage context, cgRectRef, CGImageRef
		    end if
		  #endif
		  
		  Return returnValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ConstructContextualMenu(base As MenuItem, x As Integer, y As Integer) As Boolean
		  Return RaiseEvent ConstructContextualMenu(base, x, y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  me.Renderer = 1  // webkit
		  
		  WebKitViewer.Init
		  
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ContextualMenuAction(hitItem As MenuItem) As Boolean
		  Return RaiseEvent ContextualMenuAction(hitItem)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Copy()
		  ' Copies the current selection inside the HTMLViewer to the clipboard.
		  
		  
		  #if TargetCocoa
		    Declare Sub copy Lib "Cocoa" Selector "copy:" (id As Integer, sender As Integer)
		    copy me.Handle, me.Handle
		    
		  #elseif TargetLinux
		    webkit_web_view_copy_clipboard(gtk_bin_get_child(me.Handle))
		    
		  #elseif TargetWin32
		    DIM t_cef_browser As MemoryBlock = Ptr(me.Handle)
		    DIM t_get_focused_frame As NEW CefGetFocusedFrameDelegate(t_cef_browser.Ptr(80))
		    DIM t_cef_frame As MemoryBlock = Ptr(t_get_focused_frame.Invoke(t_cef_browser))
		    DIM t_cef_frame_cut As NEW CefFrameCutDelegate(t_cef_frame.Ptr(28))
		    t_cef_frame_cut.Invoke(t_cef_frame)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Cut()
		  ' Cuts the current selection inside the web_view to the clipboard.
		  ' Note, this will only work if the HTMLViewer's contentEditable is set to true either
		  ' through the module method or in your HTML document
		  
		  
		  #if TargetCocoa
		    Declare Sub cut Lib "Cocoa" Selector "cut:" (id As Integer, sender As Integer)
		    cut me.Handle, me.Handle
		    
		  #elseif TargetLinux
		    webkit_web_view_cut_clipboard(gtk_bin_get_child(me.Handle))
		    
		  #elseif TargetWin32
		    DIM t_cef_browser As MemoryBlock = Ptr(me.Handle)
		    DIM t_get_focused_frame As NEW CefGetFocusedFrameDelegate(t_cef_browser.Ptr(80))
		    DIM t_cef_frame As MemoryBlock = Ptr(t_get_focused_frame.Invoke(t_cef_browser))
		    DIM t_cef_frame_cut As NEW CefFrameCutDelegate(t_cef_frame.Ptr(24))
		    t_cef_frame_cut.Invoke(t_cef_frame)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete()
		  ' Deletes the current selection inside the web_view .
		  ' Note, this will only work if the HTMLViewer's contentEditable is set to true either
		  ' through the module method or in your HTML document
		  
		  
		  #if TargetCocoa
		    Declare Sub delete Lib "Cocoa" Selector "delete:" (id As Integer, sender As Integer)
		    delete me.Handle, me.Handle
		    
		  #elseif TargetLinux
		    webkit_web_view_delete_selection(gtk_bin_get_child(me.Handle))
		    
		  #elseif TargetWin32
		    DIM t_cef_browser As MemoryBlock = Ptr(me.Handle)
		    DIM t_get_focused_frame As NEW CefGetFocusedFrameDelegate(t_cef_browser.Ptr(80))
		    DIM t_cef_frame As MemoryBlock = Ptr(t_get_focused_frame.Invoke(t_cef_browser))
		    DIM t_cef_frame_cut As NEW CefFrameCutDelegate(t_cef_frame.Ptr(36))
		    t_cef_frame_cut.Invoke(t_cef_frame)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableClick()
		  ' Disables all clicks in the HTMLViewer
		  ' Note: this stops all clicks, including hyperlinks and javascript, so use with caution
		  
		  
		  me.ExecuteJavaScript "document.addEventListener('click', function(event){event.preventDefault();}, false);"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableCopy()
		  ' Disables the copy command
		  
		  
		  me.ExecuteJavaScript "document.addEventListener('copy', function(event){event.preventDefault();}, false);"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableCut()
		  ' Disables the cut command
		  
		  
		  me.ExecuteJavaScript "document.addEventListener('cut', function(event){event.preventDefault();}, false);"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableDrop()
		  ' Disables all drops to the HTMLViewer
		  ' Note: this will disable drops in the HTML as well
		  
		  
		  me.ExecuteJavaScript "document.addEventListener('dragover', function(event){event.preventDefault();}, false);"
		  me.ExecuteJavaScript "document.addEventListener('dragenter', function(event){event.preventDefault();}, false);"
		  me.ExecuteJavaScript "document.addEventListener('drop', function(event){event.preventDefault();}, false);"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableKeyDown()
		  ' Disables all keyboard input
		  
		  
		  me.ExecuteJavaScript "document.addEventListener('keydown', function(event){event.preventDefault();}, false);"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisablePaste()
		  ' Disables the paste command
		  
		  
		  me.ExecuteJavaScript "document.addEventListener('paste', function(event){event.preventDefault();}, false);"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function DraggingEntered(id As Ptr, sel As Ptr, sender As Ptr) As Integer
		  break
		  
		  Return 32
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EvaluateJavaScript(script As String) As String
		  DIM returnValue As String = ""
		  
		  #if TargetMacOS
		    Declare Function stringByEvaluatingJavaScriptFromString Lib "Cocoa" Selector "stringByEvaluatingJavaScriptFromString:" (id As Integer, script As CFStringRef) As CFStringRef
		    returnValue = stringByEvaluatingJavaScriptFromString(Me.Handle, script)
		  #endif
		  
		  Return returnValue
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function gtk_bin_get_child Lib "libgtk" (bin As Integer) As Integer
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Sub Init()
		  #if TargetCocoa
		    if (SSWebViewClass = Nil) then
		      DIM WebView As Ptr = NSClassFromString("WebView")  // get the WebView class
		      SSWebViewClass = objc_allocateClassPair(WebView, "SSWebView", 0)  // create our subclass
		      
		      // add protocols to the subclass
		      if (not class_addProtocol(SSWebViewClass, objc_getProtocol("WebUIDelegate"))) then Break
		      ' if (not class_addProtocol(SSWebViewClass, objc_getProtocol("NSDraggingDestination"))) then Break
		      
		      // add methods to the subclass
		      if (not class_addMethod(SSWebViewClass, NSSelectorFromString("webView:contextMenuItemsForElement:defaultMenuItems:"), AddressOf WebViewContextMenuItemsForElementDefaultMenuItems, "@@:@@@")) then Break
		      ' if (not class_addMethod(SSWebViewClass, NSSelectorFromString("webView:dragDestinationActionMaskForDraggingInfo:"), AddressOf WebViewDragDestinationActionMaskForDraggingInfo, "I@:@@")) then Break
		      ' if (not class_addMethod(SSWebViewClass, NSSelectorFromString("webView:willPerformDragDestinationAction:forDraggingInfo:"), AddressOf WebViewWillPerformDragDestinationActionForDraggingInfo, "v@:@i@")) then Break
		      ' if (not class_addProtocol(SSWebViewClass, objc_getProtocol("NSDraggingDestination"))) then Break
		      ' if (not class_addProtocol(SSWebViewClass, objc_getProtocol("NSDraggingInfo"))) then Break
		      ' if (not class_addMethod(SSWebViewClass, NSSelectorFromString("draggingEntered:"), AddressOf DraggingEntered, "i@:@")) then Break
		      ' if (not class_addMethod(SSWebViewClass, NSSelectorFromString("performDragOperation:"), AddressOf PerformDragOperation, "c@:@")) then Break
		      
		      // register the new class with the runtime
		      objc_registerClassPair SSWebViewClass
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertHTML(html As String)
		  ' Inserts a chunk of HTML code at the insertion point
		  ' Note: this needs to be properly formatted HTML - ie; <b>Hi</b><i>world</i>
		  ' Note: the document/element needs to be editable for this to work
		  
		  
		  if (html <> "") then
		    html = ReplaceAll(html, "\", "\\")
		    html = ReplaceAll(html, "'", "\'")
		    html = ReplaceLineEndings(html, "\n")
		    
		    me.ExecuteJavaScript "document.execCommand('insertHTML', false, '" + html + "');"
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertImage(image As Picture)
		  ' Inserts an image in the current document
		  ' Note: this will properly encode a Xojo picture as a PNG image for display
		  ' Note: the document/element needs to be editable
		  
		  
		  if (image <> Nil) then
		    DIM aMemoryBlock As MemoryBlock = image.GetData(Picture.FormatPNG)
		    
		    DIM encodedPicture As String = aMemoryBlock
		    encodedPicture = EncodeBase64(encodedPicture, 0)  // the zero means no line breaks in the base64 encoded data
		    
		    me.ExecuteJavaScript "document.execCommand('insertImage', false, 'data:image/png;base64," + encodedPicture + "');"
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertImage(uri As String)
		  ' Inserts either a properly formatted URL to an image on a server or a properly encoded image into the current document
		  ' Note: the document must be editable
		  
		  
		  if (uri <> "") then
		    select case (NthField(uri, ":", 1))
		    case "http", "https", "data"
		      me.ExecuteJavaScript "document.execCommand('insertImage', false, '" + uri + "');"
		    end select
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertLink(p_uri As String)
		  ' Inserts a clickable link in to the document
		  ' Note: the document/element must be editable
		  
		  
		  if (p_uri <> "") then
		    me.ExecuteJavaScript "document.execCommand('createLink', false, '" + p_uri + "');"
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertText(text As String)
		  ' Inserts a chunk of text into the document as plain text
		  ' Note: the document/element must be editable
		  
		  
		  if (text <> "") then
		    text = ReplaceAll(text, "\", "\\")
		    text = ReplaceAll(text, "'", "\'")
		    text = ReplaceLineEndings(text, "\n")
		    
		    me.ExecuteJavaScript "document.execCommand('insertText', false, '" + text + "');"
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Italic()
		  me.ExecuteJavaScript "document.execCommand('italic', false, null);"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeTextLarger()
		  #if TargetCocoa
		    Declare Sub makeTextLarger Lib "Cocoa" Selector "makeTextLarger:" (id As Integer)
		    makeTextLarger me.Handle
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeTextSmaller()
		  #if TargetCocoa
		    Declare Sub makeTextSmaller Lib "Cocoa" Selector "makeTextSmaller:" (id As Integer)
		    makeTextSmaller me.Handle
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeTextStandardSize()
		  #if TargetCocoa
		    Declare Sub makeTextStandardSize Lib "Cocoa" Selector "makeTextStandardSize:" (id As Integer)
		    makeTextStandardSize me.Handle
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToEndOfSentence()
		  
		  #if TargetCocoa
		    Declare Sub moveToEndOfSentence Lib "Cocoa" Selector "moveToEndOfSentence:" (id As Integer, sender As Integer)
		    moveToEndOfSentence me.Handle, me.Handle
		    
		    ' #elseif TargetLinux
		    ' webkit_web_view_select_all(gtk_bin_get_child(me.Handle))  // external method
		    '
		    ' #elseif TargetWin32
		    ' DIM t_cef_browser As MemoryBlock = Ptr(me.Handle)
		    ' DIM t_get_focused_frame As NEW CefGetFocusedFrameDelegate(t_cef_browser.Ptr(80))
		    ' DIM t_cef_frame As MemoryBlock = Ptr(t_get_focused_frame.Invoke(t_cef_browser))
		    ' DIM t_cef_frame_cut As NEW CefFrameCutDelegate(t_cef_frame.Ptr(40))
		    ' t_cef_frame_cut.Invoke(t_cef_frame)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function NSClassFromString Lib "Cocoa" (className As CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function NSSelectorFromString Lib "Cocoa" (aSelector As CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function objc_allocateClassPair Lib "Cocoa" (superclass As Ptr, name As CString, extraBytes As Integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function objc_getProtocol Lib "Cocoa" (name As CString) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub objc_registerClassPair Lib "Cocoa" (aClass As Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Paste()
		  ' Pastes the current contents of the clipboard to the HTMLViewer
		  ' Note: the document/element must be editable
		  
		  
		  #if TargetCocoa
		    Declare Sub paste Lib "Cocoa" Selector "paste:" (id As Integer, sender As Integer)
		    paste me.Handle, me.Handle
		    
		  #elseif TargetLinux
		    webkit_web_view_paste_clipboard(gtk_bin_get_child(me.Handle))  // external method
		    
		  #elseif TargetWin32
		    DIM t_cef_browser As MemoryBlock = Ptr(me.Handle)
		    DIM t_get_focused_frame As NEW CefGetFocusedFrameDelegate(t_cef_browser.Ptr(80))
		    DIM t_cef_frame As MemoryBlock = Ptr(t_get_focused_frame.Invoke(t_cef_browser))
		    DIM t_cef_frame_paste As NEW CefFramePasteDelegate(t_cef_frame.Ptr(32))
		    t_cef_frame_paste.Invoke(t_cef_frame)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function PerformDragOperation(id As Ptr, sel As Ptr, sender As Ptr) As Boolean
		  Beep
		  Return TRUE
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reload()
		  #if TargetCocoa
		    Declare Sub reload Lib "Cocoa" Selector "reload:" (id As Integer, sender As Integer)
		    reload me.Handle, me.Handle
		    
		  #elseif TargetLinux
		    webkit_web_view_reload(gtk_bin_get_child(me.Handle))
		    
		  #elseif TargetWin32
		    DIM t_memoryblock As MemoryBlock = Ptr(me.Handle)
		    DIM t_reload_delegate As NEW CefReload(t_memoryblock.Ptr(40))
		    t_reload_delegate.Invoke(t_memoryblock)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReloadFromOrigin()
		  #if TargetCocoa
		    Declare Sub reload Lib "Cocoa" Selector "reloadFromOrigin:" (id As Integer, sender As Integer)
		    reload me.Handle, me.Handle
		    
		  #elseif TargetLinux
		    webkit_web_view_reload_bypass_cache(gtk_bin_get_child(me.Handle))
		    
		  #elseif TargetWin32
		    DIM t_memoryblock As MemoryBlock = Ptr(me.Handle)
		    DIM t_reload_delegate As NEW CefReloadIgnoreCache(t_memoryblock.Ptr(44))
		    t_reload_delegate.Invoke(t_memoryblock)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Search() As Boolean
		  //for As String, forward As Boolean, case_sensitive As Boolean, wrap As Boolean
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectAll()
		  ' Attempts to select everything inside the HTMLViewer/element.
		  
		  
		  #if TargetCocoa
		    Declare Sub selectAll Lib "Cocoa" Selector "selectAll:" (id As Integer, sender As Integer)
		    selectAll me.Handle, me.Handle
		    
		  #elseif TargetLinux
		    webkit_web_view_select_all(gtk_bin_get_child(me.Handle))  // external method
		    
		  #elseif TargetWin32
		    DIM t_cef_browser As MemoryBlock = Ptr(me.Handle)
		    DIM t_get_focused_frame As NEW CefGetFocusedFrameDelegate(t_cef_browser.Ptr(80))
		    DIM t_cef_frame As MemoryBlock = Ptr(t_get_focused_frame.Invoke(t_cef_browser))
		    DIM t_cef_frame_cut As NEW CefFrameCutDelegate(t_cef_frame.Ptr(40))
		    t_cef_frame_cut.Invoke(t_cef_frame)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetFocus()
		  #if TargetCocoa
		    // focus is handled properly on this platform
		    
		  #elseif TargetLinux
		    // focus is handled properly on this platform
		    
		  #elseif TargetWin32
		    'DIM t_cef_browser As MemoryBlock = Ptr(me.Handle)
		    'DIM t_set_focus_delegate As NEW CefSetFocusDelegate(me.Ptr(52))
		    't_set_focus_delegate.Invoke(t_cef_browser)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Val(value As Boolean) As Integer
		  DIM t_return As Integer = 0  // FALSE
		  
		  if (value) then
		    t_return = 1  // TRUE
		  end if
		  
		  Return t_return
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function webkit_web_view_can_copy_clipboard Lib "libwebkitgtk-1.0.so" (web_view As Integer) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function webkit_web_view_can_cut_clipboard Lib "libwebkitgtk-1.0.so" (web_view As Integer) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function webkit_web_view_can_paste_clipboard Lib "libwebkitgtk-1.0.so" (web_view As Integer) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub webkit_web_view_copy_clipboard Lib "libwebkitgtk-1.0.so" (web_view As Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub webkit_web_view_cut_clipboard Lib "libwebkitgtk-1.0.so" (web_view As Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub webkit_web_view_delete_selection Lib "libwebkitgtk-1.0.so" (web_view As Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function webkit_web_view_get_editable Lib "libwebkitgtk-1.0.so" (web_view As Integer) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub webkit_web_view_paste_clipboard Lib "libwebkitgtk-1.0.so" (web_view As Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub webkit_web_view_reload Lib "libwebkitgtk-1.0.so" (web_view As Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub webkit_web_view_reload_bypass_cache Lib "libwebkitgtk-1.0.so" (web_view As Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub webkit_web_view_select_all Lib "libwebkitgtk-1.0.so" (web_view As Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub webkit_web_view_set_editable Lib "libwebkitgtk-1.0.so" (web_view As Integer, flag As Integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Function WebViewContextMenuItemsForElementDefaultMenuItems(pid As Ptr, sel As Ptr, sender As Ptr, element As Ptr, defaultMenuItems As Ptr) As Ptr
		  #pragma Unused sel
		  #pragma Unused sender
		  
		  #if TargetCocoa
		    DIM menuItems As Ptr  // items to be displayed in the context menu
		    DIM viewer As WebKitViewer  // viewer object that is actually displaying the context menu
		    DIM baseMenu As NEW MenuItem  // menu object to pass to the ConstructContextualMenu event
		    DIM willConstructContextualMenu As Boolean  // flag, TRUE to create a context menu
		    DIM hitItem As MenuItem  // selected menu item from custom context menu
		    
		    if (UBound(Viewers) > -1) then
		      for i as Integer = 0 to UBound(Viewers)
		        if (Viewers(i).mInstance = pid) then  // found the viewer to create the context menu
		          viewer = Viewers(i)
		          baseMenu.Tag = CocoaDictionaryFromNSDictionary(element)
		          willConstructContextualMenu = viewer.ConstructContextualMenu(baseMenu, System.MouseX, System.MouseY)
		          
		          if (willConstructContextualMenu) AND (baseMenu.Count > 0) then  // custom context menu
		            hitItem = baseMenu.PopUp
		            if (hitItem <> Nil) then
		              hitItem.Tag = baseMenu.Tag
		              call viewer.ContextualMenuAction(hitItem)
		            end if
		            
		          elseif (willConstructContextualMenu) AND (baseMenu.Count = 0) then  // default context menu
		            menuItems = defaultMenuItems
		          end if
		          
		          exit for i  // break out of the loop as we no longer need to check any other viewers
		        end if
		      next
		    end if
		    
		    Return menuItems  // if this is Nil no context menu is displayed
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function WebViewDragDestinationActionMaskForDraggingInfo(id As Ptr, sel As Ptr, sender As Ptr, draggingInfo As Ptr) As WebDragDestinationAction
		  
		  
		  DIM returnValue As WebDragDestinationAction = WebDragDestinationAction.WebDragDestinationActionNone
		  
		  returnValue = WebDragDestinationAction.WebDragDestinationActionLoad
		  
		  Return returnValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub WebViewWillPerformDragDestinationActionForDraggingInfo(id As Ptr, sel As Ptr, sender As Ptr, action As Integer, draggingInfo As Ptr)
		  Break
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ConstructContextualMenu(base As MenuItem, x As Integer, y As Integer) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ContextualMenuAction(hitItem As MenuItem) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GotFocus()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag Note, Name = About
		Loads of help from Christian Schmitz who writes the awesome MonkeyBread Software plugins for Xojo
		http://www.monkeybreadsoftware.eu
		
		
		Loading Content Methods
		• Reload
		• ReloadFromOrigin
		
		Cut, Copy and Paste Action Methods
		• CanCopyClipboard (Linux only)
		• CanCutClipboard (Linux only)
		• CanPasteClipboard (Linux only)
		• Copy
		• Cut
		• Delete
		• DisableCopy
		• DisableCut
		• DisablePaste
		• Paste
		• PasteAsPlainText (Mac OS X only)
		• PasteAsRichText (Mac OS X only)
		• SelectAll
		
		Document Editing Methods
		• ContentEditable
		• InsertHTML
		• InsertImage
		• InsertLink
		• InsertText
		
		Handling Mouse Events
		• DisableClick
		• DisableContextMenu
		
		Handling Keyboard Events
		• DisableKeyDown
		
		Miscellaneous
		• SetFocus
		Linux: http://webkitgtk.org/reference/webkitgtk/stable/index.html
	#tag EndNote

	#tag Note, Name = License
		I hereby waive all copyright and related or neighboring rights together with all 
		associated claims and causes of action with respect to this work to the extent possible under the law.
	#tag EndNote

	#tag Note, Name = Reference Links
		Cocoa: https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/DisplayWebContent/DisplayWebContent.html
		Linux: http://webkitgtk.org/reference/webkitgtk/stable/index.html
		Windows: http://magpcss.org/ceforum/apidocs/
	#tag EndNote

	#tag Note, Name = Version
		The latest version can always be downloaded from < http://shaosean.tk/xojo/HTMLViewerExtensions/ > or < https://github.com/shaosean-tk/WebKitViewer >
		but seeing as anyone can take this code and do whatever they want with it, you might be able to find it elsewhere.
		
		2014-05-27 ss Inital public release
		2014-05-27 ss Inital test release
		2014-06-01 ss Converted back to a class to allow for more integrated features
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  ' Determines whether or not it is currently possible to copy to the clipboard.
			  ' Linux only
			  
			  
			  DIM t_return_value As Boolean = TRUE  // always return true, except with Linux
			  
			  #if TargetLinux
			    t_return_value = (webkit_web_view_can_copy_clipboard(gtk_bin_get_child(me.Handle)) = 1)
			  #endif
			  
			  Return t_return_value
			End Get
		#tag EndGetter
		CanCopy As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  ' Determines whether or not it is currently possible to cut to the clipboard.
			  ' Linux only
			  
			  
			  DIM t_return_value As Boolean = FALSE
			  
			  #if TargetLinux
			    t_return_value = (webkit_web_view_can_cut_clipboard(gtk_bin_get_child(me.Handle)) = 1)
			  #endif
			  
			  Return t_return_value
			End Get
		#tag EndGetter
		CanCut As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DIM t_return As Boolean = TRUE
			  
			  #if TargetCocoa
			    Declare Function canMakeTextLarger Lib "Cocoa" Selector "canMakeTextLarger" (id As Integer) As Boolean
			    t_return = canMakeTextLarger(me.Handle)
			  #endif
			  
			  Return t_return
			End Get
		#tag EndGetter
		CanMakeTextLarger As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DIM t_return As Boolean = TRUE
			  
			  #if TargetCocoa
			    Declare Function canMakeTextSmaller Lib "Cocoa" Selector "canMakeTextSmaller" (id As Integer) As Boolean
			    t_return = canMakeTextSmaller(me.Handle)
			  #endif
			  
			  Return t_return
			End Get
		#tag EndGetter
		CanMakeTextSmaller As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DIM t_return As Boolean = TRUE
			  
			  #if TargetCocoa
			    Declare Function canMakeTextStandardSize Lib "Cocoa" Selector "canMakeTextStandardSize" (id As Integer) As Boolean
			    t_return = canMakeTextStandardSize(me.Handle)
			  #endif
			  
			  Return t_return
			End Get
		#tag EndGetter
		CanMakeTextStandardSize As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  ' Determines whether or not it is currently possible to paste from the clipboard.
			  ' Linux only
			  
			  
			  DIM t_return_value As Boolean = FALSE
			  
			  #if TargetLinux
			    t_return_value = (webkit_web_view_can_paste_clipboard(gtk_bin_get_child(me.Handle)) = 1)
			  #endif
			  
			  Return t_return_value
			End Get
		#tag EndGetter
		CanPaste As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  DIM t_return_value As Boolean = FALSE
			  
			  #if TargetCocoa
			    Declare Function isContinuousSpellCheckingEnabled Lib "Cocoa" Selector "isContinuousSpellCheckingEnabled" (id As Integer) As Boolean
			    t_return_value = isContinuousSpellCheckingEnabled(me.Handle)
			    
			  #elseif TargetLinux
			    t_return_value = (webkit_web_view_get_editable(gtk_bin_get_child(me.Handle)) = 1)
			    
			  #elseif TargetWin32
			    // not supported
			  #endif
			  
			  Return t_return_value
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if TargetCocoa
			    Declare Sub setContinuousSpellCheckingEnabled Lib "Cocoa" Selector "setContinuousSpellCheckingEnabled:" (id As Integer, flag As Boolean)
			    setContinuousSpellCheckingEnabled me.Handle, value
			    
			  #elseif TargetLinux
			    // write this
			    
			  #elseif TargetWin32
			    // not supported
			    
			  #endif
			  
			End Set
		#tag EndSetter
		ContinuousSpellCheckingEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  ' Returns TRUE if HTMLViewer allows the user to edit the HTML document, FALSE if it doesn't.
			  ' You can change HTMLViewer's document programmatically regardless of this setting.
			  ' Mac OS X and Linux
			  
			  DIM t_return As Boolean = FALSE
			  
			  #if TargetCocoa
			    Declare Function isEditable Lib "Cocoa" Selector "isEditable" (id As Integer) As Boolean
			    t_return = isEditable(me.Handle)
			    
			  #elseif TargetLinux
			    t_return = (webkit_web_view_get_editable(gtk_bin_get_child(me.Handle)) = 1)
			    
			  #elseif TargetWin32
			    // not supported
			    // You can check if the body tag has the "contentEditable" attribute set
			    
			  #endif
			  
			  Return t_return
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ' Sets whether HTMLViewer allows the user to edit its HTML document.
			  '
			  ' If flag is TRUE, HTMLViewer allows the user to edit the document.
			  ' If flag is FALSE, an element in HTMLViewer's document can only be edited if the CONTENTEDITABLE attribute
			  ' has been set on the element or one of its parent elements. You can change HTMLViewer's document
			  ' programmatically regardless of this setting. By default a HTMLViewer is not editable.
			  '
			  ' Normally, an HTML document is not editable unless the elements within the document are editable.
			  ' This function provides a low-level way to make the contents of a HTMLViewer editable without altering
			  ' the document or DOM structure.
			  '
			  ' Note, on Windows it does modify the DOM by adding the contentEditable attribute to the body tag
			  
			  
			  #if TargetCocoa
			    Declare Sub setEditable Lib "Cocoa" Selector "setEditable:" (id As Integer, flag As Boolean)
			    setEditable me.Handle, value
			    
			  #elseif TargetLinux
			    webkit_web_view_set_editable(gtk_bin_get_child(me.Handle), Val(value))
			    
			  #elseif TargetWin32
			    if (value) then
			      me.ExecuteJavaScript "document.body.setAttribute('contentEditable', true);"
			    else
			      me.ExecuteJavaScript "document.body.setAttribute('contentEditable', false);"
			    end if
			    
			  #endif
			  
			End Set
		#tag EndSetter
		Editable As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mAcceptTextDrop As Boolean = FALSE
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mInstance As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Our subclass
		#tag EndNote
		Private Shared SSWebViewClass As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Holds an array of all the WebKitViewers that have been created
		#tag EndNote
		Private Shared Viewers() As WebKitViewer
	#tag EndProperty


	#tag Constant, Name = NO, Type = Double, Dynamic = False, Default = \"0", Scope = Private
	#tag EndConstant

	#tag Constant, Name = WebElementImage, Type = String, Dynamic = False, Default = \"WebElementImage", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WebElementImageAltString, Type = String, Dynamic = False, Default = \"WebElementImageAltString", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WebElementImageRect, Type = String, Dynamic = False, Default = \"WebElementImageRect", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WebElementImageURL, Type = String, Dynamic = False, Default = \"WebElementImageURL", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WebElementIsContentEditableKey, Type = String, Dynamic = False, Default = \"WebElementIsContentEditableKey", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WebElementIsInScrollBar, Type = String, Dynamic = False, Default = \"WebElementIsInScrollBar", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WebElementIsSelected, Type = String, Dynamic = False, Default = \"WebElementIsSelected", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WebElementLinkIsLive, Type = String, Dynamic = False, Default = \"WebElementLinkIsLive", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WebElementLinkLabel, Type = String, Dynamic = False, Default = \"WebElementLinkLabel", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WebElementLinkURL, Type = String, Dynamic = False, Default = \"WebElementLinkURL", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WebElementTargetFrame, Type = String, Dynamic = False, Default = \"WebElementTargetFrame", Scope = Public
	#tag EndConstant

	#tag Constant, Name = YES, Type = Double, Dynamic = False, Default = \"1", Scope = Private
	#tag EndConstant


	#tag Structure, Name = CGPoint, Flags = &h21
		X As Single
		Y As Single
	#tag EndStructure

	#tag Structure, Name = CGRect, Flags = &h21
		Origin As CGPoint
		RectSize As CGSize
	#tag EndStructure

	#tag Structure, Name = CGSize, Flags = &h21
		Width As Single
		Height As Single
	#tag EndStructure

	#tag Structure, Name = NSRect, Flags = &h21
		X As Single
		  Y As Single
		  Width As Single
		Height As Single
	#tag EndStructure

	#tag Structure, Name = NSSize, Flags = &h21
		Width As Single
		Height As Single
	#tag EndStructure


	#tag Enum, Name = WebDragDestinationAction, Type = Integer, Flags = &h21
		WebDragDestinationActionNone=0
		  WebDragDestinationActionDHTML=1
		  WebDragDestinationActionEdit=2
		  WebDragDestinationActionLoad=4
		WebDragDestinationActionAny=4294967295
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowAutoDeactivate"
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
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanCopy"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanCut"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanMakeTextLarger"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanMakeTextSmaller"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanMakeTextStandardSize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanPaste"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContinuousSpellCheckingEnabled"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Editable"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="200"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue=""
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
			Name="Renderer"
			Visible=true
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Native"
				"1 - WebKit"
			#tag EndEnumValues
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
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
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="200"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
