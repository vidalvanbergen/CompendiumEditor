#tag Class
Protected Class Compendium
	#tag Method, Flags = &h0
		Shared Sub AddSubclassToClass(xClass as XMLNode, xSubclass as XMLNode, SubclassName as string = "")
		  
		  if xClass <> Nil and xSubclass <> Nil then
		    var xDoc as XMLDocument = xClass.OwnerDocument
		    
		    var Archetype as string
		    var SubclassNames() as string
		    
		    // if xSubclass has class features
		    if xSubclass.ChildCount > 1 then
		      
		      Archetype = GetClassArchetype( xSubclass )
		      if SubclassName <> "" then
		        SubclassNames.Append SubclassName
		      else
		        SubclassNames = GetSubclassNames( xSubclass )
		      end if
		      
		      if SubclassNames.LastIndex > -1 then
		        var xcomment as XMLComment = xDoc.CreateComment( " " + Archetype + ": " + SubclassNames(0) + " " )
		        xClass.AppendChild( xcomment )
		        
		        SubclassName = SubclassNames(0)
		      end if
		      
		      'if SubclassName <> "" then
		      'var xcomment as XMLComment = xDoc.CreateComment( " " + SubclassName + " " )
		      'xClass.AppendChild( xcomment )
		      'end if
		      
		    else
		      Break
		    end if
		    
		    for each xNode as XMLNode in xSubclass.Children
		      if xNode <> Nil and xNode.Name = "autolevel" then
		        
		        // Add subclass name to feature tag.
		        'for each xChild as XMLNode in xNode.Children
		        'if SubclassName <> "" and xChild.GetAttribute("subclass") = "" then
		        'xChild.SetAttribute("subclass", SubclassName )
		        'end if
		        'next
		        
		        xClass.AppendChildCopy( xNode )
		      end if
		    next
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Append(xNode as XMLNode)
		  if xNode <> Nil then
		    
		    if Remove2024Tags then
		      xNode.SetValueOfNodeWithName( "name", xNode.ValueOfNodeWithName("name").Replace(" [2024]", "").Trim )
		      xNode.SetValueOfNodeWithName( "classes", xNode.ValueOfNodeWithName("classes").ReplaceAll(" [2024]", "").Trim )
		      xNode.SetValueOfNodeWithName( "spells", xNode.ValueOfNodeWithName("spells").ReplaceAll(" [2024]", "").Trim )
		    end if
		    
		    
		    Select case xNode.Name
		      
		    case "item"
		      Items.Add xNode
		    case "feat"
		      Feats.Add xNode
		    case "monster"
		      Creatures.Add xNode
		    case "background"
		      Backgrounds.Add xNode
		    case "race", "species"
		      Species.Add xNode
		      
		    case "spell"
		      MergeSpells( xNode )
		      
		    case "class"
		      MergeClasses( xNode )
		      
		    case "#comment"
		      // nevermind about these
		      'log xNode.ToString
		      
		    else
		      'log "Compendium.Append " + xNode.Name + " :: Failed"
		      
		      
		    End Select
		    
		    
		  else
		    log "Compendium.Append :: xNode = Nil"
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Compile() As XMLDocument
		  
		  
		  // Compile Compendium
		  var thetimer as new TimeFunction( "Compendium.Save()" )
		  var xDoc as new XMLDocument
		  xDoc.PreserveWhitespace = True
		  
		  var xRoot as XmlNode = xDoc.AppendChild( xDoc.CreateElement( "compendium" ) )
		  xRoot.SetAttribute("version", "5")
		  xRoot.SetAttribute("auto_indent", "NO")
		  
		  // Items
		  for each item as XMLNode in Items
		    xRoot.AppendChild(xDoc.ImportNode(item, true))
		  next
		  // Species
		  for each specie as XMLNode in Species
		    if Formatting then FormatSpecies( specie )
		    xRoot.AppendChild(xDoc.ImportNode(specie, true))
		  next
		  // Classes
		  for each dndClass as XMLNode in Classes
		    xRoot.AppendChild(xDoc.ImportNode(dndClass, true))
		  next
		  // Feats
		  for each feat as XMLNode in Feats
		    xRoot.AppendChild(xDoc.ImportNode(feat, true))
		  next
		  // Backgrounds
		  for each background as XMLNode in Backgrounds
		    xRoot.AppendChild(xDoc.ImportNode(background, true))
		  next
		  // Spells
		  for each spell as XMLNode in spells
		    if Formatting then FormatSpells(spell)
		    xRoot.AppendChild(xDoc.ImportNode(spell, true))
		  next
		  // Creatures
		  for each creature as XMLNode in Creatures
		    if Formatting then FormatMonster(creature)
		    xRoot.AppendChild(xDoc.ImportNode(creature, true))
		  next
		  
		  xDoc.IndentDocument
		  'xRoot.Indent(0)
		  
		  Return xDoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub FormatMonster(ByRef xNode as XMLNode)
		  
		  if xNode <> Nil and xNode.ChildCount > 0 then
		    
		    for index as Integer = xNode.ChildCount-1 DownTo 0
		      var xLeaf as XMLNode = xNode.Child(index)
		      
		      if xLeaf <> Nil then
		        
		        Select case xLeaf.Name
		          
		        case "description"
		          if xLeaf <> Nil and xLeaf.FirstChild <> Nil then
		            xLeaf.FirstChild.Value = FormatText( xLeaf.FirstChild.Value )
		          end if
		          
		        case "trait", "action", "legendary"
		          // Start with endofline
		          var featureName as string = xLeaf.ValueOfNodeWithName("name")
		          
		          
		          if featureName <> "hit points" and featureName <> "armor class" and featureName <> "proficiency bonus" then
		            
		            for featureIndex as Integer = xLeaf.ChildCount-1 DownTo 0
		              var featureNode as XMLNode = xLeaf.Child(featureIndex)
		              
		              for subFeatureIndex as Integer = 0 to xLeaf.ChildCount-1
		                var subFeatureNode as XMLNode = xLeaf.Child(subFeatureIndex)
		                
		                if subFeatureNode <> Nil and subFeatureNode.Name = "text" and subFeatureNode.FirstChild <> Nil then
		                  
		                  subFeatureNode.FirstChild.Value = FormatText( subFeatureNode.FirstChild.Value )
		                  
		                  if NOT subFeatureNode.FirstChild.Value.StartsWith(EndOfLine) then
		                    subFeatureNode.FirstChild.Value = EndOfLine + subFeatureNode.FirstChild.Value
		                  end if
		                  
		                  
		                  Exit
		                end if
		                
		              next
		              
		            next
		            
		          End if // @END featurename <> ""
		          
		          
		        else
		          
		        End Select
		        
		      end if
		      
		      
		      'if true then
		      'if xLeaf.AttributeCount > 0 and xLeaf.GetAttribute("category") <> "" then
		      'if xLeaf.ValueOfNodeWithName("name") <> "Description" then
		      'xNode.RemoveChild( xLeaf )
		      'end if
		      'end if
		      'end if // remove extraneous descriptions
		      
		    next
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub FormatSpecies(ByRef xNode as XMLNode)
		  
		  if xNode <> Nil and xNode.ChildCount > 0 then
		    
		    for index as Integer = xNode.ChildCount-1 DownTo 0
		      var xLeaf as XMLNode = xNode.Child(index)
		      
		      if true then
		        if xLeaf.AttributeCount > 0 and xLeaf.GetAttribute("category") = "description" then
		          if xLeaf.ValueOfNodeWithName("name") <> "Description" then
		            xNode.RemoveChild( xLeaf )
		          end if
		          
		        elseif xLeaf.Name = "trait" then
		          for traitIndex as Integer = xNode.ChildCount-1 DownTo 0
		            var traitNode as XMLNode = xLeaf.Child(traitIndex)
		            
		            if traitNode <> Nil and traitNode.FirstChild <> Nil and traitNode.Name = "text" then
		              traitNode.FirstChild.Value = FormatText( traitNode.FirstChild.Value )
		            end if
		            
		          next
		        end if
		      end if // remove extraneous descriptions
		      
		    next
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub FormatSpells(ByRef xNode as XMLNode)
		  
		  if xNode <> Nil and xNode.ChildCount > 0 then
		    
		    var compiledTexts as String
		    var firstTextChild as Integer
		    
		    for index as Integer = 0 to xNode.ChildCount-1
		      var xLeaf as XMLNode = xNode.Child(index)
		      
		      if xLeaf <> Nil and xLeaf.Name = "text" then
		        if xLeaf.FirstChild = Nil then
		          compiledTexts = compiledTexts + EndOfLine
		        else
		          compiledTexts = compiledTexts + xLeaf.FirstChild.Value + EndOfLine
		        end if
		      end if
		    next
		    
		    compiledTexts = trim( compiledTexts )
		    
		    for index as Integer = xNode.ChildCount-1 DownTo 0
		      var xLeaf as XMLNode = xNode.Child(index)
		      
		      if xLeaf <> Nil and xLeaf.Name = "text" then
		        firstTextChild = index
		        
		        xNode.RemoveChild( xLeaf )
		      end if
		    next
		    
		    xNode.AppendSimpleChild( "text", FormatText( compiledTexts ) )
		    
		    
		    'for index as Integer = xNode.ChildCount-1 DownTo 0
		    'var xLeaf as XMLNode = xNode.Child(index)
		    '
		    'if true then
		    'if xLeaf <> Nil and xLeaf.FirstChild <> Nil and xLeaf.Name = "text" then
		    'xLeaf.FirstChild.Value = FormatText( xLeaf.FirstChild.Value )
		    'end if
		    'end if // remove extraneous descriptions
		    '
		    'next
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FormatText(s as String) As String
		  // Make more true to source material:
		  's = s.ReplaceAllRegEx("(\w+): (\w+)", "$1. $2") // word: word = word. word
		  
		  var bodytext, source as string
		  
		  if s.Contains("Source:") then
		    bodytext = s.StringBetween("", "Source:")
		    source = s.Replace( bodytext, "" )
		    
		  else
		    bodytext = s
		  end if
		  
		  // Format for readability:
		  'if Keyboard.AsyncAltKey then
		  'var source as string = s.StringBetween("Source:", s.
		  
		  bodytext = bodytext.ReplaceAllRegEx("Source: ", "Source:\t")
		  bodytext = bodytext.ReplaceAllRegEx("\n\t(\w+)", "\n\n$1") // newline + tab + word = newline + newline + word
		  bodytext = bodytext.ReplaceAllRegEx("(\w+): (\w+)", "$1:\n$2") // word: word = word: + newline + word
		  'end if
		  
		  Return bodytext + source
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetClassArchetype(xClass as XMLNode) As String
		  
		  var className as string = xClass.ValueOfNodeWithName("name")
		  var Archetype as string = xClass.ValueOfNodeWithName("subclass")
		  
		  
		  // Find Archetype
		  if Archetype = "" then
		    
		    
		    
		    // Fetch all feature names
		    var featureNames() as string
		    
		    var autolevels() as XMLNode = xClass.NodesWithName("autolevel")
		    for each autolevel as XMLNode in autolevels
		      var features() as XMLNode = autolevel.NodesWithName("feature")
		      
		      for each feature as XMLNode in features
		        var name as string = feature.ValueOfNodeWithName("name")
		        featureNames.Append name
		      next
		      
		    next // @NEXT autolevel
		    
		    
		    var left, right as string
		    for each name as string in featureNames
		      
		      if name.Contains("subclass:") then
		        
		        Archetype = trim( name.NthField(":", 1) )
		        Exit
		        
		      elseif left <> "" and right <> "" then
		        
		        var keyword as string = right.NthField( " ", right.CountFields( " " ) )
		        
		        if name.StartsWith( right ) then
		          Archetype = left
		          Exit
		        elseif name.Contains( "(" + right + ")" ) or name.Contains( "(" + keyword + ")" ) then
		          Archetype = left
		          Exit
		        end if
		        
		      end if
		      
		      left = Trim( name.NthField( ":", 1 ) )
		      right = Trim( name.NthField( ":", 2 ) )
		      
		    next
		    
		  else
		    Return Archetype
		  end if // @END archetype = ""
		  
		  Return Archetype
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetClassWithoutSubclassFeatures(xClass as XMLNode) As XMLNode
		  
		  var t as new TimeFunction( "GetClassWithoutSubclassFeatures( " + xClass.ValueOfNodeWithName("name") + " )" )
		  
		  if xClass = Nil then
		    Return Nil
		  end if
		  
		  var SubclassNames() as String = GetSubclassNames( xClass )
		  
		  var xDoc as new XMLDocument
		  var xRoot as XmlNode = xDoc.AppendChild( xDoc.CreateElement( "compendium" ) )
		  
		  xRoot.AppendChildCopy( xClass )
		  'for each xChild as XMLNode in xClass.FirstChild.Children
		  'xRoot.AppendChildCopy( xChild )
		  'next
		  
		  var CleanedClass as XMLNode = xRoot.FirstChild
		  
		  
		  if SubclassNames <> Nil and SubclassNames.LastIndex > -1 then
		    
		    for each SubclassName as string in SubclassNames
		      RemoveSubclassFeatures( CleanedClass, SubclassName )
		      
		      'for index as Integer = xClass.ChildCount-1 DownTo 0
		      'if xClass.Child(index) <> Nil and xClass.Child(index).Name = "autolevel" then
		      'var xAutolevel as XMLNode = xClass.Child(index)
		      '
		      'for i as Integer = xAutolevel.ChildCount-1 DownTo 0
		      'var xChild as XMLNode = xAutolevel.Child(i)
		      '
		      '
		      'if xChild.Name = "feature" and xChild.ValueOfNodeWithName("name").Contains( SubclassName ) then
		      'xAutolevel.RemoveChild( xChild )
		      '
		      'elseif xChild.Name = "counter" and xChild.ValueOfNodeWithName("subclass") = SubclassName then
		      'xAutolevel.RemoveChild( xChild )
		      '
		      'end if // @END xchild.name = feature or counter
		      '
		      'next // @NEXT xchild
		      '
		      '
		      'if xAutolevel.ChildCount = 0 then
		      'xClass.RemoveChild( xAutolevel )
		      'end if
		      '
		      'end if // @END xclass.name = autolevel
		      '
		      '
		      'next // @NEXT xAutolevel
		      
		    next // @NEXT subclassName
		    
		    
		  end if
		  
		  
		  Return CleanedClass
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCreaturesMonsters() As XMLNode()
		  var npcs() as XMLNode
		  
		  
		  for each creature as XMLNode in me.Creatures
		    
		    var npc as string = creature.ValueOfNodeWithName("npc")
		    var vehicle as Boolean = creature.ValueOfNodeWithName("type").Contains("vehicle")
		    
		    if npc = "YES" or npc = "1" or npc = "True" then
		      // Skip
		    else
		      if NOT vehicle then
		        npcs.Add creature
		      end if
		    end if
		    
		  next
		  
		  Return npcs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCreaturesNPC() As XMLNode()
		  var npcs() as XMLNode
		  
		  
		  for each creature as XMLNode in me.Creatures
		    
		    var npc as string = creature.ValueOfNodeWithName("npc")
		    var vehicle as Boolean = creature.ValueOfNodeWithName("type").Contains("vehicle")
		    
		    if npc = "YES" or npc = "1" or npc = "True" then
		      '// Skip
		      'else
		      if NOT vehicle then
		        npcs.Add creature
		      end if
		    end if
		    
		  next
		  
		  Return npcs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCreaturesVehicles() As XMLNode()
		  var vehicles() as XMLNode
		  
		  
		  for each creature as XMLNode in me.Creatures
		    
		    'var npc as string = creature.ValueOfNodeWithName("npc")
		    var vehicle as Boolean = creature.ValueOfNodeWithName("type").Contains("vehicle")
		    
		    'if npc = "YES" or npc = "1" or npc = "True" then
		    // Skip
		    'else
		    if vehicle then
		      'else
		      vehicles.Add creature
		    end if
		    'end if
		    
		  next
		  
		  Return vehicles
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFullClassNames() As String()
		  var classNames() as string
		  if Classes <> Nil and Classes.LastIndex > -1 then
		    
		    for each xClass as XMLNode in Classes
		      
		      var name, hitdice as string
		      
		      for index as Integer = 0 to xClass.ChildCount-1
		        var xNode as XMLNode = xClass.Child(index)
		        
		        if xNode <> Nil and xNode.FirstChild <> Nil then
		          
		          Select case xNode.Name
		            
		          case "name"
		            name = xNode.FirstChild.Value
		            
		          case "hd"
		            hitdice = xNode.FirstChild.Value
		            
		          End Select
		          
		        end if
		        
		      next
		      
		      
		      if hitdice <> "" then
		        classNames.Add name
		      end if
		      
		    next
		    
		    
		  end if
		  
		  Return classNames
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFullSpells() As XMLNode()
		  
		  var fullSpells() as XMLNode
		  
		  for each spell as XMLNode in Spells
		    
		    if spell <> Nil and spell.ValueOfNodeWithName( "level" ) <> "" and NOT spell.ValueOfNodeWithName("name").Contains(":") then
		      fullSpells.Add spell
		    end if
		    
		  next
		  
		  Return fullSpells
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetItemsBase() As XMLNode()
		  var baseItems() as XMLNode
		  
		  
		  for each item as XMLNode in me.Items
		    
		    var magic as string = item.ValueOfNodeWithName("magic")
		    'var value as string = item.ValueOfNodeWithName("value")
		    
		    if magic = "YES" or magic = "1" then 'or value = "" then
		      // Skip
		    else
		      baseItems.Add item
		    end if
		    
		  next
		  
		  Return baseItems
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetItemsMagic() As XMLNode()
		  var magicItems() as XMLNode
		  
		  
		  for each item as XMLNode in me.Items
		    
		    var magic as string = item.ValueOfNodeWithName("magic")
		    'var value as string = item.ValueOfNodeWithName("value")
		    
		    if magic = "YES" or magic = "1" then 'or value = "" then
		      magicItems.Add item
		    end if
		    
		  next
		  
		  Return magicItems
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSpellsClassFeatures() As XMLNode()
		  
		  var fullSpells() as XMLNode
		  
		  for each spell as XMLNode in Spells
		    
		    if spell <> Nil and spell.ValueOfNodeWithName( "level" ) <> "" and spell.ValueOfNodeWithName("name").Contains(":") then
		      fullSpells.Add spell
		    end if
		    
		  next
		  
		  Return fullSpells
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetSubclassFeatures(xClass as XMLNode, SubclassName as String) As XMLNode
		  
		  var xDoc as new XMLDocument
		  var xRoot as XmlNode = xDoc.AppendChild( xDoc.CreateElement( "compendium" ) )
		  var xNewClass as XMLNode = xRoot.AppendNewChild("class")
		  
		  var subclassAutolevels() as XMLNode
		  
		  if xClass <> Nil and xClass.ChildCount > 0 then
		    var className as string = xClass.ValueOfNodeWithName("name")
		    xNewClass.AppendSimpleChild( "name", className )
		    
		    var xClassChildren() as XMLNode = xClass.Children
		    
		    for each xClassAutoLevel as XMLNode in xClassChildren
		      
		      // Get autolevel nodes
		      if xClassAutoLevel.Name = "autolevel" and xClassAutoLevel.ChildCount > 0 then
		        var xAutoLevelFeatures() as XMLNode = xClassAutoLevel.Children
		        var level as string = xClassAutoLevel.GetAttribute("level")
		        
		        // Find matching class features
		        for each xClassFeature as XMLNode in xAutoLevelFeatures
		          
		          if xClassFeature <> Nil then
		            
		            var xClassFeatureName as string = xClassFeature.ValueOfNodeWithName("name")
		            if ( xClassFeature.name = "feature" and _
		              ( xClassFeatureName.StartsWith( SubclassName + ":" ) or xClassFeatureName.EndsWith( ": " + SubclassName ) or xClassFeatureName.EndsWith( " (" + SubclassName + ")" ) ) _
		              ) or _
		              ( xClassFeature.Name = "counter" and xClassFeature.ValueOfNodeWithName("subclass") = SubclassName ) then
		              
		              
		              // match with autolevels
		              var levelNode as XMLNode
		              
		              for each lvlNode as XMLNode in subclassAutolevels
		                if lvlNode.GetAttribute("level") = level then
		                  levelNode = lvlNode
		                  levelNode.SetAttribute("level", level)
		                end if
		              next
		              
		              if levelNode = Nil then
		                levelNode = xNewClass.AppendNewChild("autolevel")
		                levelNode.SetAttribute("level", level)
		                subclassAutolevels.Add( levelNode )
		              end if
		              
		              'var featureNode as XMLNode = xClassFeature.Clone
		              'featureNode.SetAttribute("optional", "YES")
		              levelNode.AppendChild( xDoc.ImportNode( xClassFeature, true ) )
		              'levelNode.AppendChildCopy( xClassFeature )
		              
		              
		            end if // @END xClassFeatureName.contains( subclassname)
		            
		          end if // @END xClassFeature <> Nil
		          
		        next // @NEXT xClassFeature
		        
		      end if // @END xClass.name = "autolevel"
		      
		    next // @NEXT xClassChild
		    
		    
		  end if // @END xClass <> Nil
		  
		  
		  Return xNewClass
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetSubclassNames(xClass as XMLNode) As String()
		  
		  var subclassNames() as string
		  
		  if xClass <> Nil and xClass.ChildCount > -1 then
		    
		    // Find Archetype
		    var archetype as string = GetClassArchetype( xClass )
		    
		    
		    if archetype <> "" then
		      
		      // Fetch all feature names
		      var featureNames() as string
		      
		      var autolevels() as XMLNode = xClass.NodesWithName("autolevel")
		      for each autolevel as XMLNode in autolevels
		        var features() as XMLNode = autolevel.NodesWithName("feature")
		        
		        for each feature as XMLNode in features
		          var name as string = feature.ValueOfNodeWithName("name")
		          featureNames.Append name
		        next
		        
		      next // @NEXT autolevel
		      
		      // Filter Subclass Names
		      for each name as string in featureNames
		        
		        if name.StartsWith( Archetype + ":" ) then
		          subclassNames.Add Trim( name.Replace( Archetype + ":", "" ) )
		        end if
		        
		      next // @NEXT featureName
		      
		    else
		      log "No archetype found for class: " + xClass.ValueOfNodeWithName("name")
		    end if
		    
		    
		  end if
		  
		  Return subclassNames
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSubclassNamesBCK() As String()
		  
		  var t as new TimeFunction( "GetSubclassNames" )
		  
		  var subclassNames() as string
		  
		  
		  // Fetch all feature names
		  
		  for each xClass as XMLNode in Classes
		    var featureNames() as string
		    var className as string = xClass.ValueOfNodeWithName("name")
		    var Archetype as string = xClass.ValueOfNodeWithName("subclass")
		    
		    var autolevels() as XMLNode = xClass.NodesWithName("autolevel")
		    
		    for each autolevel as XMLNode in autolevels
		      
		      var features() as XMLNode = autolevel.NodesWithName("feature")
		      
		      for each feature as XMLNode in features
		        
		        var name as string = feature.ValueOfNodeWithName("name")
		        featureNames.Append name
		        
		      next
		      
		    next // @NEXT autolevel
		    
		    
		    // Find Archetype
		    if Archetype = "" then
		      
		      var left, right as string
		      for each name as string in featureNames
		        
		        if name.Contains("subclass:") then
		          
		          Archetype = trim( name.NthField(":", 1) )
		          Exit
		          
		        elseif left <> "" and right <> "" then
		          
		          var keyword as string = right.NthField( " ", right.CountFields( " " ) )
		          
		          if name.StartsWith( right ) then
		            Archetype = left
		            Exit
		          elseif name.Contains( "(" + right + ")" ) or name.Contains( "(" + keyword + ")" ) then
		            Archetype = left
		            Exit
		          end if
		          
		        end if
		        
		        left = Trim( name.NthField( ":", 1 ) )
		        right = Trim( name.NthField( ":", 2 ) )
		        
		      next
		      
		    end if
		    
		    
		    // Filter Subclass Names
		    if Archetype <> "" then
		      for each name as string in featureNames
		        
		        if name.StartsWith( Archetype + ":" ) then
		          subclassNames.Add className + " :: " + Trim( name.Replace( Archetype + ":", "" ) )
		        end if
		        
		      next
		    else
		      log "No Archetype found, " + className
		    end if
		    
		    
		  next // @NEXT xclass
		  
		  
		  
		  Return subclassNames
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetXMLDocChildren(xDoc as XMLDocument) As XMLNode()
		  if xDoc <> Nil and xDoc.FirstChild <> Nil then
		    var xRoot as XMLNode = xDoc.FirstChild
		    
		    if xRoot <> Nil and xRoot.ChildCount > 0 then
		      Return xRoot.Children
		    end if
		  end if
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadCollection(TheCollection as FolderItem)
		  var thetimer as new TimeFunction("LoadCollection()")
		  'var startticks as Integer = System.Ticks
		  
		  if TheCollection <> Nil and TheCollection.Exists and TheCollection.IsReadable then
		    
		    var xDoc as new XMLDocument( TheCollection )
		    xDoc.PreserveWhitespace = True
		    
		    var xDocChildren() as XMLNode = GetXMLDocChildren( xDoc )
		    
		    for each xNode as XMLNode in xDocChildren
		      
		      if xNode <> Nil and xNode.Name = "doc" and xNode.GetAttribute("href") <> "" then
		        
		        var relativeFilePath as String = xNode.GetAttribute("href")
		        
		        if relativeFilePath <> "" then
		          relativeFilePath = relativeFilePath.Replace("../", TheCollection.Parent.Parent.NativePath + "/")
		          
		          
		          var xmldoc as new FolderItem(relativeFilePath, FolderItem.PathModes.Native)
		          
		          if xmldoc <> Nil and xmldoc.Exists and xmldoc.IsReadable then
		            LoadXMLFile( xmldoc )
		          else
		            Break
		          end if
		          
		        else
		          // 
		        end if // @END relativefilepath <> ""
		        
		      else
		        'Log( xNode.Name + " :: Failed to load" )
		        me.Append xNode
		      end if // @END xnode <> Nil
		      
		    next // @NEXT Xnode
		    
		    
		  end if // @END thecollection <> Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadXMLFile(TheXMLFile as FolderItem)
		  if TheXMLFile <> Nil and TheXMLFile.Exists and TheXMLFile.IsReadable then
		    
		    var xDoc as new XMLDocument(TheXMLFile)
		    xDoc.PreserveWhitespace = True
		    
		    var xRootChildren() as XMLNode = GetXMLDocChildren(xDoc)
		    
		    if xRootChildren <> Nil and xRootChildren.LastIndex > -1 then
		      
		      
		      for each xNode as XMLNode in xRootChildren
		        me.Append xNode
		      next
		      
		      
		    end if
		    
		  else
		    //
		  end if // @END TheXMLFile <> Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MatchNodes(xNodeToMerge as XMLNode, ExistingxNodes() as XMLNode) As Integer
		  if xNodeToMerge <> Nil and xNodeToMerge.ChildCount > 0 then
		    
		    var searchForName as string = xNodeToMerge.ValueOfNodeWithName("name") 'XMLNodeName( xNodeToMerge )
		    
		    
		    if searchForName <> "" and ExistingxNodes <> Nil and ExistingxNodes.LastIndex > -1 then
		      
		      for each xNode as XMLNode in ExistingxNodes
		        var foundName as string = xNode.ValueOfNodeWithName("name") 'XMLNodeName( xNode )
		        if searchForName = foundName then
		          Return ExistingxNodes.IndexOf( xNode )
		        elseif foundName = "" then
		          log "MatchNodes() :: Couldn't find xnode name. > " + searchForName
		        end if
		        
		        
		      next // @NEXT xnode
		      
		    elseif ExistingxNodes.LastIndex = -1 then
		      Return -1
		    else
		      Log "MatchNodes() :: Couldn't find " + searchForName
		    end if // @END searchname <> "" and existingnodes <> Nil
		    
		  else
		    Break
		  end if
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MergeClasses(xClass as XMLNode)
		  var indexofClass as Integer = MatchNodes( xClass, Classes )
		  
		  if indexofClass > -1 then
		    
		    var MasterClass as XMLNode
		    var SubClass as XMLNode
		    
		    if xClass.HasNodeWithName( "hd" ) then
		      MasterClass = xClass
		      SubClass = Classes(indexofClass)
		    elseif Classes(indexofClass).HasNodeWithName("hd") then
		      MasterClass = Classes(indexofClass)
		      SubClass = xClass
		    else
		      MasterClass = xClass
		      SubClass = Classes(indexofClass)
		    end if
		    
		    
		    var name, hd, proficiency, spellAbility, numSkills, armor, weapons, tools, wealth, slotsReset, classsub, trait(), autolevel() as XMLNode
		    
		    // MasterClass
		    for index as Integer = 0 to MasterClass.ChildCount-1
		      var xNode as XMLNode = MasterClass.Child(index)
		      
		      var aaaNode as String = xNode.ToString
		      
		      if xNode <> Nil then
		        Select case xNode.Name
		          
		        case "name"
		          name = xNode
		        case "hd"
		          hd = xNode
		        case "proficiency"
		          proficiency = xNode
		        case "spellAbility"
		          spellAbility = xNode
		        case "numSkills"
		          numSkills = xNode
		        case "armor"
		          armor = xNode
		        case "weapons"
		          weapons = xNode
		        case "tools"
		          tools = xNode
		        case "wealth"
		          wealth = xNode
		        case "slotsReset"
		          slotsReset = xNode
		        case "subclass"
		          classsub = xNode
		        case "trait"
		          trait.Add xNode
		        case "autolevel"
		          autolevel.Add xNode
		          
		        case "#comment"
		          // nevermind about these
		          
		        else
		          var aBreak as string
		        End Select
		        
		      end if // @END xnode <> Nil
		      
		    next
		    
		    // SubClass
		    for index as Integer = 0 to subClass.ChildCount-1
		      var xNode as XMLNode = subClass.Child(index)
		      
		      var aaaNode as String = xNode.ToString
		      if xNode.Name = "class" then
		        Break
		      end if
		      
		      if xNode <> Nil then
		        Select case xNode.Name
		          
		        case "name"
		          // Only used to match with existing classes.
		          
		        case "trait"
		          trait.Add xNode
		        case "autolevel"
		          autolevel.Add xNode
		          
		        case "#comment"
		          // we don't care about this
		          
		        else
		          var aBreak as string
		        End Select
		        
		      end if // @END xnode <> Nil
		      
		    next
		    
		    
		    var xDoc as new XmlDocument' = parent.OwnerDocument
		    xDoc.PreserveWhitespace = True
		    var xRoot as XmlNode = xDoc.AppendChild( xDoc.CreateElement( "compendium" ) )
		    
		    var newClass as XMLNode = xroot.AppendNewChild("class")
		    
		    'xRoot.AppendChild(xDoc.ImportNode(dndClass, true))
		    if name <> Nil then
		      newClass.AppendChild(xDoc.ImportNode( name, true ) )
		    end if
		    
		    if hd <> Nil then
		      newClass.AppendChild(xDoc.ImportNode( hd, true ) )
		    end if
		    
		    if proficiency <> Nil then
		      newClass.AppendChild(xDoc.ImportNode( proficiency, true ) )
		    end if
		    
		    if spellAbility <> Nil then
		      newClass.AppendChild(xDoc.ImportNode( spellAbility, true ) )
		    end if
		    
		    if numSkills <> Nil then
		      newClass.AppendChild(xDoc.ImportNode( numSkills, true ) )
		    end if
		    
		    if armor <> Nil then
		      newClass.AppendChild(xDoc.ImportNode( armor, true ) )
		    end if
		    
		    if weapons <> Nil then
		      newClass.AppendChild(xDoc.ImportNode( weapons, true ) )
		    end if
		    
		    if tools <> Nil then
		      newClass.AppendChild(xDoc.ImportNode( tools, true ) )
		    end if
		    
		    if wealth <> Nil then
		      newClass.AppendChild(xDoc.ImportNode( wealth, true ) )
		    end if
		    
		    if slotsReset <> Nil then
		      newClass.AppendChild(xDoc.ImportNode( slotsReset, true ) )
		    end if
		    
		    if classsub <> Nil then
		      newClass.AppendChild(xDoc.ImportNode( classsub, true ) )
		    end if
		    
		    
		    
		    if trait.Count > 0 then
		      for index as Integer = 0 to trait.LastIndex
		        newClass.AppendChild(xDoc.ImportNode( trait(index), true ) )
		      next
		    end if
		    
		    if autolevel.Count > 0 then
		      for index as Integer = 0 to autolevel.LastIndex
		        newClass.AppendChild(xDoc.ImportNode( autolevel(index), true ) )
		      next
		    end if
		    
		    
		    
		    
		    Classes(indexofClass) = newClass
		  else
		    'log "Adding class " + xClass.ValueOfNodeWithName("name")
		    Classes.Add xClass
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MergeSpells(xSpell as XMLNode)
		  
		  
		  var indexofSpell as Integer = MatchNodes( xSpell, Spells )
		  
		  if indexofSpell > -1 then
		    var indexedSpell as XMLNode = Spells(indexofSpell)
		    
		    if indexedSpell.ChildCount > 2 and xSpell.ChildCount > 2 then
		      // Duplicate named spells with each unique effects
		      spells.add xSpell
		      
		    else
		      'if indexedSpell.ChildCount = 2 or xSpell.ChildCount = 2 then
		      var SpellClasses() as string
		      
		      
		      var indexedSpellClasses() as string = indexedSpell.ValueOfNodeWithName("classes").Split(",")
		      var xSpellClasses() as string = xSpell.ValueOfNodeWithName("classes").Split(",")
		      SpellClasses.AppendArray indexedSpellClasses
		      SpellClasses.AppendArray xSpellClasses
		      
		      TrimArrayEntries( SpellClasses )
		      
		      
		      #if false then
		        // Use specific spell order.
		        'var name, level, school, ritual, time, range, components, duration, classes, description(), roll(), rollAttributes() as string
		        '
		        'var masterSpell as new XMLNode
		        '
		        'if indexedSpell.ChildCount > 2 then
		        'masterSpell = indexedSpell
		        'elseif xSpell.ChildCount > 2 then
		        'masterSpell = xSpell
		        'else
		        'log "Misnamed spell? :: " + xSpell.ValueOfNodeWithName("name") + " > Classes: " + Join( SpellClasses, ", " )
		        'end if
		        '
		        'for index as Integer = 0 to masterSpell.ChildCount-1
		        'var xnode as XMLNode = masterSpell.Child(index)
		        '
		        'if xnode <> Nil and xnode.FirstChild <> Nil then
		        '
		        'Select case xnode.Name
		        '
		        'case "name"
		        'name = xnode.FirstChild.Value
		        'case "level"
		        'level = xnode.FirstChild.Value
		        'case "school"
		        'school = xnode.FirstChild.Value
		        'case "ritual"
		        'ritual = xnode.FirstChild.Value
		        'case "time"
		        'time = xnode.FirstChild.Value
		        'case "range"
		        'range = xnode.FirstChild.Value
		        'case "components"
		        'components = xnode.FirstChild.Value
		        'case "duration"
		        'duration = xnode.FirstChild.Value
		        'case "classes"
		        'classes = xnode.FirstChild.Value
		        'case "text"
		        'description.Add xnode.FirstChild.Value
		        'case "roll"
		        'roll.Add xnode.FirstChild.Value
		        'if xnode.AttributeCount > 0 and xnode.GetAttribute("level") <> "" then
		        'rollAttributes.Add( xnode.GetAttribute("level") )
		        'else
		        'rollAttributes.Add ""
		        'end if
		        '
		        'End Select
		        '
		        'end if
		        'next
		        '
		        'Dim xDoc as new XmlDocument' = parent.OwnerDocument
		        'Dim xRoot as XmlNode = xDoc.AppendChild( xDoc.CreateElement( "compendium" ) )
		        '
		        '
		        'var newSpell as XMLNode = xroot.AppendNewChild("spell")
		        '
		        'if name <> "" then newSpell.AppendSimpleChild( "name", name )
		        'if level <> "" then newSpell.AppendSimpleChild( "level", level )
		        'if school <> "" then newSpell.AppendSimpleChild( "school", school )
		        'if ritual <> "" then newSpell.AppendSimpleChild( "ritual", ritual )
		        'if time <> "" then newSpell.AppendSimpleChild( "time", time )
		        'if range <> "" then newSpell.AppendSimpleChild( "range", range )
		        'if components <> "" then newSpell.AppendSimpleChild( "components", components )
		        'if duration <> "" then newSpell.AppendSimpleChild( "duration", duration )
		        'if Join( SpellClasses, "" ).Trim <> "" then newSpell.AppendSimpleChild( "classes", Join( SpellClasses, ", ") )
		        '
		        'if description.LastIndex > 0 then
		        'newSpell.AppendSimpleChild( "text", Join( description, EndOfLine ) )
		        '
		        'elseif description.LastIndex = 0 then
		        'newSpell.AppendSimpleChild( "text", description(0) )
		        'end if
		        '
		        'for index as Integer = 0 to roll.LastIndex
		        'var xRoll as XMLNode = newSpell.AppendNewChild("roll")
		        'xRoll.SetValue roll(index)
		        'if roll.LastIndex = rollAttributes.LastIndex and trim(rollAttributes(index)) <> "" then
		        'xRoll.SetAttribute("level", trim(rollAttributes(index)))
		        'else
		        '
		        'end if
		        '
		        'next
		        '
		        'Spells(indexofSpell) = newSpell
		      #EndIf
		      
		      
		      var MasterSpell as XMLNode
		      if indexedSpell.ChildCount <= 2 and xSpell.ChildCount > 2 then
		        // Use xspell as master
		        MasterSpell = xSpell
		      else
		        // merge indexedSpell as master
		        MasterSpell = indexedSpell
		      end if
		      
		      for each xLeaf as XMLNode in MasterSpell.Children
		        if xLeaf <> Nil and xLeaf.Name = "classes" then
		          xLeaf.FirstChild.Value = Join( SpellClasses, ", " )
		        end if
		      next
		      
		      Spells(indexofSpell) = MasterSpell
		      
		      
		    end if // @END both spells are full length
		    'Break
		  else
		    Spells.Add xSpell
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub RemoveSubclassFeatures(xClass as XMLNode, SubclassName as String)
		  
		  if xClass <> Nil and xClass.ChildCount > -1 then
		    
		    'for index as Integer = xClass.ChildCount-1 DownTo 0
		    for each xAutolevel as XMLNode in xClass.Children
		      'if xClass.Child(index) <> Nil and xClass.Child(index).Name = "autolevel" then
		      'var xAutolevel as XMLNode = xClass.Child(index)
		      if xAutolevel <> Nil and xAutolevel.Name = "autolevel" then
		        
		        'for i as Integer = xAutolevel.ChildCount-1 DownTo 0
		        'var xChild as XMLNode = xAutolevel.Child(i)
		        
		        for each xChild as XMLNode in xAutolevel.Children
		          
		          
		          if xChild.Name = "feature" and xChild.ValueOfNodeWithName("name").Contains( SubclassName ) then
		            xAutolevel.RemoveChild( xChild )
		            
		          elseif xChild.Name = "counter" and xChild.ValueOfNodeWithName("subclass") = SubclassName then
		            xAutolevel.RemoveChild( xChild )
		            
		          end if // @END xchild.name = feature or counter
		          
		        next // @NEXT xchild
		        
		        
		        if xAutolevel.ChildCount = 0 then
		          xClass.RemoveChild( xAutolevel )
		        elseif xAutolevel.FirstChild = Nil then
		          xClass.RemoveChild( xAutolevel )
		        end if
		        
		      end if // @END xclass.name = autolevel
		      
		      
		    next // @NEXT xAutolevel
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  
		  
		  // Select save destination
		  Var dlg As New SaveFileDialog
		  var saveDestionation as FolderItem
		  dlg.InitialFolder = SpecialFolder.Documents
		  dlg.PromptText = "Prompt Text"
		  dlg.SuggestedFileName = "Fight Club 5e Compendium.xml"
		  dlg.Title = "Choose where you want to save the compendium file."
		  dlg.Filter = FileTypeMisc.XML 'FileTypeGroup1.Text // defined as a file type in FileTypeGroup1 file type set
		  saveDestionation = dlg.ShowModal
		  
		  
		  If saveDestionation <> Nil Then
		    
		    var xDoc as XMLDocument = self.Compile
		    
		    if xDoc <> Nil then
		      xDoc.SaveXML( saveDestionation )
		    end if
		    
		    
		    'if saveDestionation.Exists then
		    'Var d As New MessageDialog                   ' declare the MessageDialog object
		    'Var b As MessageDialogButton                 ' for handling the result
		    'd.IconType = MessageDialog.IconTypes.Caution ' display warning icon
		    'd.ActionButton.Caption = "Save"
		    'd.CancelButton.Visible = True                ' show the Cancel button
		    'd.AlternateActionButton.Visible = True       ' show the "Don't Save" button
		    'd.AlternateActionButton.Caption = "Don't Save"
		    'd.Message = "A document with the same name already exists at this destination, do you want to overwrite?"
		    'd.Explanation = "If you choose to overwrite the existing file will be deleted."
		    '
		    'b = d.ShowModal                              ' display the dialog
		    'Select Case b                                ' determine which button was pressed.
		    'Case d.ActionButton
		    '' user pressed Save
		    '
		    'var xDoc as XMLDocument = self.Compile
		    '
		    'if xDoc <> Nil then
		    'xDoc.SaveXML( saveDestionation )
		    'end if
		    '
		    'Case d.AlternateActionButton
		    '' user pressed Don't Save
		    'me.Save
		    'Case d.CancelButton
		    '' user pressed Cancel
		    'End Select
		    
		    
		    'else // NOT savedestination.exists
		    '
		    'end if
		    
		    
		    
		  Else
		    ' User Cancelled
		  End If
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TrimArrayEntries(ByRef StringArray() as String)
		  if StringArray <> Nil and StringArray.LastIndex > -1 then
		    for index as Integer = StringArray.LastIndex DownTo 0
		      var entry as string = Trim( StringArray(index) )
		      if entry <> "" then
		        StringArray(index) = entry 'Trim(Strim(index))
		      else
		        StringArray.RemoveAt(index) // Remove empty entries
		      end if
		    next
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Backgrounds() As XMLNode
	#tag EndProperty

	#tag Property, Flags = &h0
		Classes() As XMLNode
	#tag EndProperty

	#tag Property, Flags = &h0
		Creatures() As XMLNode
	#tag EndProperty

	#tag Property, Flags = &h0
		Feats() As XMLNode
	#tag EndProperty

	#tag Property, Flags = &h0
		Formatting As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		Items() As XMLNode
	#tag EndProperty

	#tag Property, Flags = &h0
		Remove2024Tags As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Species() As XMLNode
	#tag EndProperty

	#tag Property, Flags = &h0
		Spells() As XMLNode
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
			Name="Formatting"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Remove2024Tags"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
