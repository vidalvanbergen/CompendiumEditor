#tag Class
Protected Class SourceCore
	#tag Method, Flags = &h21
		Private Sub CompileCompendium()
		  if XMLFiles <> Nil and XMLFiles.LastIndex > -1 then
		    var c as new Compendium
		    
		    for each xmlFile as FolderItem in XMLFiles
		      c.LoadXMLFile( xmlFile )
		    next
		    
		    TheCompendium = c
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(FolderParent as FolderItem)
		  LoadFolder( FolderParent )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFolder(parent as FolderItem)
		  
		  ParentFolder = parent
		  
		  var xFiles() as FolderItem
		  var xNames() as string
		  
		  // Get folderitems
		  if parent <> Nil and parent.Exists and parent.Directory then
		    
		    for each child as FolderItem in parent.Children
		      
		      if child <> Nil and child.Exists and child.Visible and child.IsReadable then
		        
		        // Sort Files
		        if child.name.EndsWith("xml") then
		          
		          // SourceInfo
		          if child.Name.StartsWith("source") then
		            SourceInfoFile = child
		          elseif child.Name.Contains("template") then
		            // Skip
		          else
		            // XML Files
		            xFiles.Add child
		            xNames.Add child.Name
		          end if
		          
		          // Cover image
		        elseif child.Name.EndsWith("jpg") or child.name.EndsWith( "png" ) then
		          if child.name.StartsWith("cover") or child.name.StartsWith("poster") then
		            
		            CoverImageFile = child
		            
		          end if // @END child.name.starswith( cover or poster )
		          
		        end if // child.name endswith xml or jpg/png
		        
		      end if // @END child.exists
		      
		    next // @NEXT child
		    
		  end if
		  
		  // Set Info
		  if SourceInfoFile <> Nil then
		    SourceInfo = SourceToJSON( SourceInfoFile )
		  end if
		  
		  // Set XML Files
		  xNames.SortWith(xFiles)
		  XMLFiles = xFiles
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetImages()
		  CoverImageFull = Nil
		  CoverImageLarge = Nil
		  CoverImageMedium = Nil
		  CoverImageThumbnail = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSource(SourceFile as FolderItem)
		  
		  me.SourceInfo = Nil
		  me.SourceInfoFile = SourceFile
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  
			  if ParentFolder <> Nil and ParentFolder.IsReadable and ParentFolder.IsFolder then
			    
			    for each child as FolderItem in ParentFolder.Children
			      if child <> Nil and child.IsReadable and child.Visible and child.IsFolder then
			        Return True
			      end if
			      
			    next
			    
			  end if
			  
			  Return False
			End Get
		#tag EndGetter
		ContainsFolder As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		CoverImageFile As FolderItem
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mCoverImageFull = Nil and CoverImageFile <> Nil and CoverImageFile.Exists and CoverImageFile.IsReadable then
			    mCoverImageFull = Picture.Open( CoverImageFile )
			  end if
			  
			  Return mCoverImageFull
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCoverImageFull = value
			End Set
		#tag EndSetter
		CoverImageFull As Picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mCoverImageLarge = Nil then
			    if CoverImageFull = Nil and CoverImageFile <> Nil and CoverImageFile.Exists and CoverImageFile.IsReadable then
			      CoverImageFull = Picture.Open( CoverImageFile )
			    end if
			    
			    if CoverImageFull <> Nil then
			      mCoverImageLarge = CoverImageFull.ScaleWithin( 1024, 1024 )
			    end if
			  end if
			  
			  Return mCoverImageLarge
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCoverImageLarge = value
			End Set
		#tag EndSetter
		CoverImageLarge As Picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mCoverImageMedium = Nil then
			    if CoverImageFull = Nil and CoverImageFile <> Nil and CoverImageFile.Exists and CoverImageFile.IsReadable then
			      CoverImageFull = Picture.Open( CoverImageFile )
			    end if
			    
			    if CoverImageFull <> Nil then
			      mCoverImageMedium = CoverImageFull.ScaleWithin( 512, 512 )
			    end if
			  end if
			  
			  Return mCoverImageMedium
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCoverImageMedium = value
			End Set
		#tag EndSetter
		CoverImageMedium As Picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mCoverImageThumbnail = Nil then
			    if CoverImageFull = Nil and CoverImageFile <> Nil and CoverImageFile.Exists and CoverImageFile.IsReadable then
			      CoverImageFull = Picture.Open( CoverImageFile )
			    end if
			    
			    if CoverImageFull <> Nil then
			      mCoverImageThumbnail = CoverImageFull.ScaleWithin( 128, 128 )
			    end if
			  end if
			  
			  Return mCoverImageThumbnail
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCoverImageThumbnail = value
			End Set
		#tag EndSetter
		CoverImageThumbnail As Picture
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Include As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCoverImageFull As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCoverImageLarge As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCoverImageMedium As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCoverImageThumbnail As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSourceInfo As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTheCompendium As Compendium
	#tag EndProperty

	#tag Property, Flags = &h0
		ParentFolder As FolderItem
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mSourceInfo = Nil and SourceInfoFile <> Nil and SourceInfoFile.IsReadable then
			    mSourceInfo = SourceToJSON( SourceInfoFile )
			  elseif mSourceInfo = Nil then
			    mSourceInfo = new JSONItem
			  end if
			  
			  Return mSourceInfo
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mSourceInfo = value
			End Set
		#tag EndSetter
		SourceInfo As JSONItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		SourceInfoFile As FolderItem
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mTheCompendium = Nil and XMLFiles <> Nil and XMLFiles.LastIndex > -1 then
			    CompileCompendium
			  end if
			  
			  Return mTheCompendium
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mTheCompendium = value
			End Set
		#tag EndSetter
		TheCompendium As Compendium
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		XMLFiles() As FolderItem
	#tag EndProperty


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
		#tag ViewProperty
			Name="CoverImageThumbnail"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CoverImageFull"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CoverImageMedium"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContainsFolder"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CoverImageLarge"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Include"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
