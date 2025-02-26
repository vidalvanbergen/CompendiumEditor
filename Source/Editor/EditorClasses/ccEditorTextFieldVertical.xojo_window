#tag Window
Begin ContainerControl ccEditorTextFieldVertical
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
   Height          =   44
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
   Width           =   460
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
      Text            =   "Name:"
      TextAlignment   =   1
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   460
   End
   Begin DesktopTextField txtField
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   22
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   445
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
      Caption         =   ""
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
      Left            =   438
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
      Top             =   22
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
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Reset()
		  Tag = ""
		  Value = ""
		  var emptyArray() as String
		  Tags = emptyArray
		  Values = emptyArray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMode(Fieldmode as Mode)
		  
		  
		  Select case Fieldmode
		    
		  case Mode.Textfield
		    txtField.Width = me.Width - txtField.Left
		    btnDropdown.Visible = False
		    
		  case Mode.Dropdown, Mode.MultipleChoice
		    //
		    
		  End Select
		  
		  MultipleOption = (Fieldmode = Mode.MultipleChoice)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ValueChanged(TheValue as String)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mBaseMenu = Nil then
			    mBaseMenu = New MenuItem
			  end if
			  
			  Return mBaseMenu
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBaseMenu = value
			End Set
		#tag EndSetter
		BaseMenu As MenuItem
	#tag EndComputedProperty

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

	#tag Property, Flags = &h21
		Private mBaseMenu As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		MultipleOption As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return txtField.ReadOnly
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  txtField.ReadOnly = value
			End Set
		#tag EndSetter
		ReadOnly As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Join( Tags, "," )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if MultipleOption then
			    Tags.Add value
			  else
			    Redim Tags(-1)
			    Tags.Add value
			  end if
			End Set
		#tag EndSetter
		Tag As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Tags() As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if MultipleOption and ReadOnly then
			    var joinedString as string = Join( values, ", " )
			    joinedString = joinedString.StupifyQuotes
			    
			    Return joinedString
			  else
			    Return txtField.Text.StupifyQuotes
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  txtField.Text = value
			  'if MultipleOption then
			  'Values.Add value
			  'end if
			End Set
		#tag EndSetter
		Value As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Values() As String
	#tag EndProperty


	#tag Enum, Name = Mode, Type = Integer, Flags = &h0
		Textfield
		  Dropdown
		MultipleChoice
	#tag EndEnum


#tag EndWindowCode

#tag Events txtField
	#tag Event
		Sub TextChanged()
		  RaiseEvent ValueChanged( me.Text )
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(key As String) As Boolean
		  dim AscKey as Integer = Asc( key )
		  
		  if me.Text.IsNumericString then
		    
		    Select case AscKey
		      
		    case 30 ' Up
		      me.Text = Str( Val( me.Text ) + 1 )
		      Return True
		      
		    case 31 ' Down
		      me.Text = Str( Val( me.Text ) - 1 )
		      Return True
		      
		    End Select
		    
		  end if
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnDropdown
	#tag Event
		Sub Pressed()
		  
		  if BaseMenu <> Nil then
		    
		    var newValues(), newTags() as String
		    
		    'if NOT self.ReadOnly then
		    'Values = txtField.Text.Split( "," )
		    'for index as Integer = 0 to Values.LastIndex
		    'Values(index) = Trim( Values(index) )
		    'next
		    'end if
		    
		    
		    for index as Integer = 0 to BaseMenu.Count-1
		      var mi as MenuItem = BaseMenu.MenuAt(index)
		      mi.HasCheckMark = ( mi.Text <> "None" and ( Values.IndexOf( mi.Text ) > -1 ) )
		    next
		    
		    
		    var hititem as MenuItem = BaseMenu.PopUp
		    
		    if hititem <> Nil then
		      
		      // MultipleOption
		      if MultipleOption and Not self.ReadOnly then
		        
		        if txtField.Text = "" then
		          txtField.Text = hititem.Text
		        else
		          txtField.Text = txtField.Text + ", " + hititem.Text
		        end if
		        
		        Values = txtField.Text.Split(", ")
		        
		        
		      elseif MultipleOption then
		        
		        // Remove selected item
		        if Values.IndexOf( hititem.Text ) > -1 then
		          
		          if hititem.Text = "None" then
		            tags = newTags
		            values = newValues
		            
		            value = ""
		          else
		            Values.RemoveAt( values.IndexOf( hititem.Text ) )
		            value = Join( Values, ", " )
		            
		            if tags.IndexOf( hititem.Tag ) > -1 then
		              tags.RemoveAt( Tags.IndexOf( hititem.Tag ) )
		            end if
		          end if
		          
		          // Add selected item
		        else
		          
		          if hititem.Text = "None" then
		            
		            values = newValues
		            Tags = newTags
		            Value = ""
		            
		          else
		            
		            for index as Integer = 0 to BaseMenu.Count-1
		              var mi as MenuItem = BaseMenu.MenuAt(index)
		              
		              if values.IndexOf( mi.Text ) > -1 or mi.Text = hititem.Text then
		                newValues.Add mi.Text
		                newTags.Add mi.Tag
		              end if
		              
		            next
		            
		            values = newValues
		            tags = newTags
		            
		            value = Join( newValues, ", " )
		          end if
		          
		        end if
		        
		        // SingleOption
		      else
		        
		        if hititem.Text = "None" then
		          txtField.Text = ""
		          values = newValues
		          tag = ""
		        else
		          txtField.Text = hititem.Text
		          Values = Array( hititem.Text )
		          tag = hititem.Tag
		        end if
		        
		      end if
		      
		    end if
		    
		    
		  end if
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
		Name="MultipleOption"
		Visible=false
		Group="Behavior"
		InitialValue="False"
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
	#tag ViewProperty
		Name="Tag"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ReadOnly"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
