#tag Module
Protected Module CommonModule
	#tag Method, Flags = &h0
		Function baseCharacteristics() As String
		  var PersonalityTrait as String = "d8 | Personality Trait"
		  var Ideal as String = "d6 | Personality Trait"
		  var Bond as String = "d6 | Personality Trait"
		  var Flaw as String = "d6 | Flaw"
		  
		  
		  for index as Integer = 1 to 8
		    PersonalityTrait = PersonalityTrait + EndOfLine + Str(index) + " | "
		    if index <= 6 then
		      Ideal = Ideal + EndOfLine + Str(index) + " | "
		      Bond = Bond + EndOfLine + Str(index) + " | "
		      Flaw = Flaw + EndOfLine + Str(index) + " | "
		    end if
		  next
		  
		  Return PersonalityTrait + EndOfLine + EndOfLine + Ideal + EndOfLine + EndOfLine + Bond + EndOfLine + EndOfLine + Flaw
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BaseItems() As XMLNode()
		  
		  var xNodes() as XMLNode
		  var xNames() as String
		  
		  
		  var xDoc as new XMLDocument( kBaseItems )
		  if xDoc <> Nil and xDoc.FirstChild <> Nil then
		    var xRoot as XMLNode = xDoc.FirstChild
		    
		    for each xNode as XMLNode in xRoot.Children
		      if xNode <> Nil and xNode.FirstChild <> Nil then
		        xNodes.Append xNode
		        xNames.Append xNode.ValueOfNodeWithName("name")
		      end if
		    next
		  end if
		  
		  xNames.SortWith( xNodes )
		  
		  Return xNodes
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ComposeSource(xNode as XMLNode, SourceBook as String, PageNr as String, Category as String = "") As String
		  var SourceString as String
		  
		  
		  if xNode.ToString.Contains("Source:") then
		    SourceString = xNode.ToString.Match("Source:(.*?)<", 1).Trim.ReplaceAll( EndOfLine, " " ).ReplaceAll( chr(9), "" )
		  end if
		  
		  
		  if SourceString = "" and SourceBook <> "" then
		    
		    SourceString = SourceBook.ReplaceAll( EndOfLine, " " ).NthField( "(", 1 )
		    SourceString = SourceString.Trim
		    
		    if PageNr <> "" then
		      SourceString = SourceString + " p. " + PageNr
		    end if
		    
		    if Category <> "" and ( Category.Contains("Homebrew") or Category.Contains("Third Party") ) then
		      SourceString = SourceString + " (" + Category + ")"
		    end if
		    
		  end if
		  
		  Return SourceString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsFolder(Parent as FolderItem) As Boolean
		  
		  
		  if Parent <> Nil and Parent.IsReadable and Parent.IsFolder then
		    
		    for each child as FolderItem in Parent.Children
		      if child <> Nil and child.IsReadable and child.Visible and child.IsFolder then
		        Return True
		      end if
		      
		    next
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CoverImage(Parent as FolderItem) As Picture
		  
		  
		  if Parent <> Nil and Parent.IsReadable and Parent.IsFolder then
		    
		    for each child as FolderItem in Parent.Children
		      if child <> Nil and child.IsReadable and child.Visible and _
		        ( child.name.EndsWith("jpg") or child.name.EndsWith("png") ) and _
		        ( child.name.StartsWith("cover") or child.name.StartsWith("poster") ) then
		        
		        return Picture.Open( child )
		        
		      end if
		    next
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DescriptionWithoutSource(Description as String) As String
		  if Description.Contains("Source:") then
		    
		    Description = Description.ReplaceAllRegEx( "(\n+)Source:(.*?)\Z", "" )
		    
		    'Description = Description.ReplaceAllRegEx( "\n\n\nSource:(.*?)\Z", "" )
		    'Description = Description.ReplaceAllRegEx( "\n\nSource:(.*?)\Z", "" )
		    'Description = Description.ReplaceAllRegEx( "\nSource:(.*?)\Z", "" )
		    if Description.StartsWith("Source:") then
		      Description = Description.ReplaceAllRegEx( "Source:(.*?)\Z", "" )
		    end if
		    
		  end if
		  
		  Return Description
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawAlternatingRows(Extends g as Graphics, row as Integer)
		  
		  #if TargetMacOS then
		    var nsc() as NSColor = NSColor.ControlAlternatingRowBackgroundColors
		    g.DrawingColor = nsc(row mod 2)
		    g.FillRect 0, 0, g.Width, g.Height
		    
		  #else
		    var lightColor, darkColor as Color
		    if IsDarkMode then
		      lightColor = &c2C2C2C
		      darkColor = &c1D1D1D
		    else
		      lightColor = &CFFFFFF
		      darkColor = &cF4F5F5
		    end if
		    
		    Select case row mod 2
		      
		    case 0
		      g.DrawingColor = darkColor
		    case 1
		      g.DrawingColor = lightColor
		      
		    End Select
		    g.FillRect 0, 0, g.Width, g.Height
		    
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FindXMLFiles(parent as FolderItem, FoundFiles() as FolderItem)
		  
		  
		  if parent.IsFolder then
		    
		    for each child as FolderItem in parent.Children
		      
		      if child <> Nil and child.Exists and child.IsReadable  and child.Visible then
		        
		        if child.IsFolder then
		          FindXMLFiles( child, FoundFiles )
		        elseif child.Name.EndsWith("xml") then
		          FoundFiles.Add( child )
		        else
		          //
		        end if
		        
		      end if
		      
		    next
		    
		  elseif parent.Extension = "xml" then
		    FoundFiles.Add( parent )
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatSpelllist(TheValue as String) As String
		  '3rd | identify, chaos bolt
		  '5th | enthral, enlarge/reduce
		  '9th | lightning bolt, thunder step
		  '13th | summon construct, vitriolic sphere
		  '17th | raise dead, cloudkill
		  
		  '• Cantrips (at will): mage hand, prestidigitation
		  '• 1st level (only ritual): detect magic, identify
		  
		  TheValue = NormalizeLineEndings( TheValue )
		  
		  var spellText as String = TheValue 'txtSpells.Text
		  
		  // Remove levels
		  if spellText.Contains("|") or spellText.Contains(":") then
		    var lines() as String = spellText.Split( EndOfLine )
		    for index as Integer = lines.LastIndex DownTo 0
		      if lines(index).Contains("|") then
		        'lines(index) = lines(index).NthField("|", 2)
		        
		        var splitparts() as String = lines(index).SplitString("|")
		        
		        if splitparts.LastIndex = 1 then
		          lines(index) = splitparts(1)
		        elseif splitparts(0).Left(1).IsNumericString then
		          splitparts.RemoveAt(0)
		          lines(index) = StringFromArray( splitparts, ", " )
		        end if
		        
		        
		      elseif lines(index).Contains(":") and ( lines(index).Contains( "cantrip" ) or lines(index).Contains( "level" ) or lines(index).Contains( "at will" ) or lines(index).Contains( "/day" ) ) then
		        lines(index) = lines(index).NthField(":",2).Trim
		        
		      elseif lines(index).Trim = "" then
		        lines.RemoveAt(index)
		        
		      end if
		    next
		    spellText = StringFromArray( lines, ", " )
		  end if
		  
		  spellText = spellText.ReplaceAll( EndOfLine, ", " )
		  
		  var individiualSpells() as string = spellText.SplitString(",")
		  for index as Integer = 0 to individiualSpells.LastIndex
		    var spellname as String = individiualSpells(index)
		    
		    spellname = spellname.Titlecase
		    if spellname.Contains("/") then
		      spellname = spellname.NthField("/",1).Titlecase + "/" + spellname.NthField("/",2).Titlecase
		    end if
		    
		    spellname = spellname.ReplaceAll("*", "")
		    
		    spellname = spellname.Replace( " From ", " from " )
		    spellname = spellname.Replace( " For ", " from " )
		    spellname = spellname.Replace( " Of ", " of " )
		    spellname = spellname.Replace( " Or ", " or " )
		    spellname = spellname.Replace( " The ", " the " )
		    spellname = spellname.Replace( " And ", " and " )
		    
		    individiualSpells(index) = spellname
		  next
		  spellText = StringFromArray( individiualSpells, ", " )
		  
		  spellText = spellText.ReplaceAllRegEx( " \((.*?)\)", "" )
		  
		  
		  'txtSpells.Text = spellText.StupifyQuotes
		  
		  Return spellText.StupifyQuotes
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FormatSpellname(ByRef SpellName as String)
		  
		  SpellName = spellName.Titlecase.Trim
		  
		  SpellName = SpellName.ReplaceAll(" From ", " from ")
		  SpellName = SpellName.ReplaceAll(" For ", " for ")
		  SpellName = SpellName.ReplaceAll(" Of ", " of ")
		  SpellName = SpellName.ReplaceAll(" Or ", " or ")
		  SpellName = SpellName.ReplaceAll(" The ", " the ")
		  SpellName = SpellName.ReplaceAll(" And ", " and ")
		  
		  'return spellName
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatSpellname(SpellName as String) As String
		  
		  SpellName = spellName.Titlecase.Trim
		  
		  SpellName = SpellName.ReplaceAll(" From ", " from ")
		  SpellName = SpellName.ReplaceAll(" For ", " for ")
		  SpellName = SpellName.ReplaceAll(" Of ", " of ")
		  SpellName = SpellName.ReplaceAll(" Or ", " or ")
		  SpellName = SpellName.ReplaceAll(" The ", " the ")
		  SpellName = SpellName.ReplaceAll(" And ", " and ")
		  
		  return SpellName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatText(TheText as String) As String
		  
		  // Clean text issues
		  'TheText = TheText.ReplaceAll("- ", "")
		  TheText = NormalizeLineEndings( TheText )
		  
		  TheText = TheText.ReplaceAll("‘", "'")
		  TheText = TheText.ReplaceAll("’", "'")
		  TheText = TheText.ReplaceAll("’", "'")
		  TheText = TheText.ReplaceAll("“", """")
		  TheText = TheText.ReplaceAll("”", """")
		  TheText = TheText.ReplaceAll(" .", "." )
		  'TheText = TheText.ReplaceAll(" " + chr(13), " " )
		  TheText = TheText.ReplaceAll(" " + EndOfLine, " " )
		  TheText = TheText.ReplaceAll( EndOfLine + " •", EndOfLine + Chr(9) + "•" )
		  
		  // Fix list items
		  'TheText = TheText.ReplaceAll( chr(13) + chr(13) + "•", "\n\n" + Chr(9) + "•" )
		  TheText = TheText.ReplaceAll( EndOfLine + EndOfLine + "•", "\n\n" + Chr(9) + "•" )
		  
		  'TheText = TheText.ReplaceAll( chr(13) + "•", "\n" + Chr(9) + "•" )
		  TheText = TheText.ReplaceAll( EndOfLine + "•", "\n" + Chr(9) + "•" )
		  
		  'TheText = TheText.ReplaceAll( ":" + chr(13) + "•", ":\n" + Chr(9) + "•" )
		  'TheText = TheText.ReplaceAll( ":" + chr(13) + " •", ":\n" + Chr(9) + "•" )
		  TheText = TheText.ReplaceAll( ":" + EndOfLine + "•", ":\n" + Chr(9) + "•" )
		  TheText = TheText.ReplaceAll( ":" + EndOfLine + " •", ":\n" + Chr(9) + "•" )
		  
		  TheText = TheText.ReplaceAll( chr(13) + "*", "\n" + Chr(9) + "•" )
		  TheText = TheText.ReplaceAll( EndOfLine + "*", "\n" + Chr(9) + "•" )
		  
		  TheText = TheText.ReplaceAll( chr(13) + chr(13) + "*", "\n\n" + Chr(9) + "•" )
		  TheText = TheText.ReplaceAll( EndOfLine + EndOfLine + "*", "\n\n" + Chr(9) + "•" )
		  
		  // 
		  TheText = TheText.ReplaceAll( "  ", "\n\n" )
		  'TheText = TheText.ReplaceAll( ": ", ":\n" )
		  TheText = TheText.ReplaceAll( " •", "\n\n" + chr(9) + "•")
		  TheText = TheText.ReplaceAll( EndOfLine + ". ", "\n\n" + chr(9) + "• " )
		  'TheText = TheText.ReplaceAll( chr(13) + "*", "\n\n*" )
		  'TheText = TheText.ReplaceAll( EndOfLine + "*", "\n\n*" )
		  
		  'TheText = TheText.ReplaceAll( ":" + chr(13), ":\n" )
		  TheText = TheText.ReplaceAll( ":" + EndOfLine, ":\n" )
		  
		  if TRUE then
		    TheText = TheText.ReplaceAll( "Source: ", "Source:" + Chr(9) )
		  else
		    TheText = TheText.ReplaceAll( "Source:" + Chr(9), "Source: " )
		  end if
		  
		  TheText = TheText.ReplaceAll( EndOfLine, " " )
		  'TheText = TheText.ReplaceAll( chr(13), " " )
		  '#if TargetMacOS then
		  TheText = TheText.ReplaceAll("  ", EndOfLine + chr(9) ) 'EndOfLine)
		  TheText = TheText.ReplaceAll("\n", EndOfLine)
		  'TheText = TheText.ReplaceAll(EndOfLine, EndOfLine + EndOfLine)
		  '#else
		  'TheText = TheText.ReplaceAll("  ", chr(13) + chr(9) ) 'chr(13))
		  'TheText = TheText.ReplaceAll("\n", chr(13))
		  ''TheText = TheText.ReplaceAll(chr(13), chr(13) + chr(13) )
		  '#endif
		  
		  TheText = TheText.ReplaceAll(chr(2), "")
		  
		  
		  if TheText.Trim.BeginsWith("Starting at") then
		    TheText = TheText.Replace(". ", "." + EndOfLine + EndOfLine)
		  end if
		  
		  
		  
		  'DamageDice = description.Match("\{\@damage (.*?)\}", 1)
		  
		  TheText = TheText.ReplaceAll("{@hit ", "+").ReplaceAll("{@h}", "Hit: ")
		  'description = description.Trim.ReplaceAll("{@condition ", "").ReplaceAll("{@hit ", "+").ReplaceAll("{@h}", "Hit: ").ReplaceAll("{@skill ", "").ReplaceAll("{@dice ", "").ReplaceAll("{@spell ", "").ReplaceAll("{@adventure ","")
		  TheText = TheText.ReplaceAll("{@atk mw}", "Melee Weapon Attack:").ReplaceAll("{@damage ", "").ReplaceAll("{@dc", "DC")
		  TheText = TheText.ReplaceAll("{@atk rw}", "Ranged Weapon Attack:").ReplaceAll("{@atk mw,rw}", "Melee or Ranged Weapon Attack:").ReplaceAll("{@atk rs}", "Ranged Spell Attack:").ReplaceAll("{@atk ms", "Melee Spell Attack:")
		  
		  TheText = TheText.ReplaceAllRegEx("\|.*?\}","").ReplaceAllRegEx("\{\@\W+ ", "").ReplaceAll("}","").Trim
		  
		  
		  Return TheText.Trim
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSourceFolderPaths() As String()
		  
		  var sourceFolders() as String
		  if Prefs.Value("sourcefolders", Nil) <> Nil then
		    var varArray as Variant = prefs.Value("sourcefolders", Nil)
		    sourceFolders = VariantArrayToStrings( varArray )
		    'var varArray() as Variant
		    'if varItem.IsArray and VariantArrayToStrings then
		    'varArray = varItem.
		    'else
		    'varArray.Add varItem
		    'end if
		    
		    'for each varObject as Variant in varArray
		    'if varObject.StringValue <> "" then
		    'sourceFolders.Add varObject.StringValue 'new FolderItem( varObject.StringValue, FolderItem.PathModes.Native )
		    'end if
		    'next
		    
		  end if
		  
		  Return sourceFolders
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSourceFolders() As FolderItem()
		  
		  var sourceFolders() as FolderItem
		  if Prefs.Value("sourcefolders", Nil) <> Nil then
		    var varItem as Variant = prefs.Value("sourcefolders", Nil)
		    var varArray() as Variant
		    if varItem.IsArray then
		      varArray = varItem
		    else
		      varArray.Add varItem
		    end if
		    
		    for each varObject as Variant in varArray
		      if varObject.StringValue <> "" then
		        sourceFolders.Add new FolderItem( varObject.StringValue, FolderItem.PathModes.Native )
		      end if
		    next
		    
		  end if
		  
		  Return sourceFolders
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexOf(extends pop as DesktopPopupMenu, SearchValue as String) As Integer
		  for row as Integer = 0 to pop.LastRowIndex
		    if pop.RowValueAt(row) = SearchValue then
		      Return row
		    end if
		  next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalizeLineEndings(TheText as string) As String
		  TheText = TheText.ReplaceAll( chr(10), EndOfLine )
		  TheText = TheText.ReplaceAll( chr(13), EndOfLine )
		  
		  Return TheText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SourceFromDescription(Description as String) As String
		  if Description.Contains("Source:") then
		    var sourceString as string = Description.Match("Source:\s(.*?)\Z", 1)
		    sourceString = sourceString.ReplaceAll( EndOfLine, " " ).ReplaceAll( chr(13), " " ).ReplaceAll( chr(9), "" )
		    
		    Return sourceString
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SourceToJSON(sourceFile as FolderItem) As JSONItem
		  
		  // Read sourcefile
		  var jsonInfo as new JSONItem
		  if sourceFile <> Nil and sourceFile.Exists and sourceFile.IsReadable then
		    
		    var xDoc as new XMLDocument( sourceFile )
		    var xRoot as XMLNode = xDoc.FirstChild
		    
		    for each xNode as XMLNode in xRoot.Children
		      if xNode <> Nil and xNode.FirstChild <> Nil then
		        jsonInfo.Value( xNode.Name ) = xNode.FirstChild.Value
		      elseif xNode <> Nil and xNode.FirstChild = Nil then
		        jsonInfo.Value( xNode.Name ) = Nil
		      end if
		    next
		    
		  end if
		  
		  Return jsonInfo
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SplitString(Extends s as string, Delimiter as String, Trim as Boolean = True) As String()
		  var TheArray() as String = s.Split( Delimiter )
		  
		  if Trim then
		    for index as Integer = 0 to TheArray.LastIndex
		      TheArray(index) = TheArray(index).Trim
		    next
		  end if
		  
		  Return TheArray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SplitString(s as string, Delimiter as String, Trim as Boolean = True) As String()
		  var TheArray() as String = s.Split( Delimiter )
		  
		  if Trim then
		    for index as Integer = 0 to TheArray.LastIndex
		      TheArray(index) = TheArray(index).Trim
		    next
		  end if
		  
		  Return TheArray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StringFromArray(TheArray() as String, Delimiter as String, Trim as Boolean = True) As String
		  if Trim then
		    for index as Integer = 0 to TheArray.LastIndex
		      TheArray(index) = TheArray(index).Trim
		    next
		  end if
		  
		  Return String.FromArray( TheArray, Delimiter )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StupifyQuotes(Extends value as String) As String
		  value = value.ReplaceAll("’", "'")
		  value = value.ReplaceAll("‘", "'")
		  value = value.ReplaceAll("“", """")
		  value = value.ReplaceAll("”", """")
		  
		  Return value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleForMenuWithTag(Extends BaseMenu as MenuItem, TagValue as String) As String
		  
		  for index as Integer = 0 to BaseMenu.Count-1
		    var mmenu as MenuItem = BaseMenu.MenuAt(index)
		    
		    if mmenu.Tag.StringValue = TagValue then
		      Return mmenu.Text
		    end if
		    
		  next
		  
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleForMenuWithTag(BaseMenu as MenuItem, TagValue as String) As String
		  
		  for index as Integer = 0 to BaseMenu.Count-1
		    var mmenu as MenuItem = BaseMenu.MenuAt(index)
		    
		    if mmenu.Tag.StringValue = TagValue then
		      Return mmenu.Text
		    end if
		    
		  next
		  
		  Return ""
		End Function
	#tag EndMethod


	#tag Constant, Name = HeaderStartColor, Type = Color, Dynamic = False, Default = \"&cB2271C", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kArmorMinimumStrength, Type = , Dynamic = False, Default = \"If the wearer has a Strength score lower than %STR%\x2C their speed is reduced by 10 feet.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kArmorStealthDisadvantage, Type = String, Dynamic = False, Default = \"The wearer has disadvantage on Stealth (Dexterity) checks.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kBaseItems, Type = String, Dynamic = False, Default = \"<\?xml version\x3D\"1.0\" encoding\x3D\"UTF-8\"\?>\n<compendium version\x3D\"5\" auto_indent\x3D\"NO\">\n  <item>\n    <name>Battleaxe</name>\n    <detail>battleaxe\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>4</weight>\n    <property>V\x2CM</property>\n    <dmg1>1d8</dmg1>\n    <dmg2>1d10</dmg2>\n    <dmgType>S</dmgType>\n    <text>Versatile: This weapon can be used with one or two hands. A damage value in parentheses appears with the property\xE2\x80\x94the damage when the weapon is used with two hands to make a melee Attack.\n\nProficiency: martial\x2C battleaxe\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Blowgun</name>\n    <detail>blowgun\x2C common</detail>\n    <magic>YES</magic>\n    <type>R</type>\n    <weight>1</weight>\n    <property>A\x2CLD\x2CM</property>\n    <dmg1>1</dmg1>\n    <dmgType>P</dmgType>\n    <range>25/100</range>\n    <text>Ammunition: You can use a weapon that has the ammunition property to make a ranged attack only if you have ammunition to fire from the weapon. Each time you attack with the weapon\x2C you expend one piece of ammunition. Drawing the ammunition from a quiver\x2C case\x2C or other container is part of the attack (you need a free hand to load a one-handed weapon). At the end of the battle\x2C you can recover half your expended ammunition by taking a minute to search the battlefield.\n\nIf you use a weapon that has the ammunition property to make a melee attack\x2C you treat the weapon as an improvised weapon (see \"Improvised Weapons\").\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nLoading: Because of the time required to load this weapon\x2C you can fire only one piece of ammunition from it when you use an action\x2C bonus action\x2C or reaction to fire it\x2C regardless of the number of attacks you can normally make.\n\nProficiency: martial\x2C blowgun\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Breastplate</name>\n    <detail>rare</detail>\n    <magic>YES</magic>\n    <type>MA</type>\n    <weight>20</weight>\n    <property/>\n    <ac>14</ac>\n    <text>This armor consists of a fitted metal chest piece worn with supple leather. Although it leaves the legs and arms relatively unprotected\x2C this armor provides good protection for the wearer\'s vital organs while leaving the wearer relatively unencumbered.\n\nSource:\tPlayer\'s Handbook p. 145</text>\n  </item>\n  <item>\n    <name>Chain Mail</name>\n    <detail>uncommon</detail>\n    <magic>YES</magic>\n    <type>HA</type>\n    <weight>55</weight>\n    <property/>\n    <ac>16</ac>\n    <stealth>1</stealth>\n    <strength>13</strength>\n    <text>Made of interlocking metal rings\x2C chain mail includes a layer of quilted fabric worn underneath the mail to prevent chafing and to cushion the impact of blows. The suit includes gauntlets.\n\nThe wearer has disadvantage on Stealth (Dexterity) checks.\n\nIf the wearer has a Strength score lower than 13\x2C their speed is reduced by 10 feet.\n\nSource:\tPlayer\'s Handbook p. 145</text>\n  </item>\n  <item>\n    <name>Chain Shirt</name>\n    <detail>uncommon</detail>\n    <magic>YES</magic>\n    <type>MA</type>\n    <weight>20</weight>\n    <property/>\n    <ac>13</ac>\n    <text>Made of interlocking metal rings\x2C a chain shirt is worn between layers of clothing or leather. This armor offers modest protection to the wearer\'s upper body and allows the sound of the rings rubbing against one another to be muffled by outer layers.\n\nSource:\tPlayer\'s Handbook p. 144</text>\n  </item>\n  <item>\n    <name>Club</name>\n    <detail>club\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>2</weight>\n    <property>L</property>\n    <dmg1>1d4</dmg1>\n    <dmgType>B</dmgType>\n    <text>Light: A light weapon is small and easy to handle\x2C making it ideal for use when fighting with two weapons.\n\nProficiency: simple\x2C club\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Dagger</name>\n    <detail>dagger\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>1</weight>\n    <property>F\x2CL\x2CT</property>\n    <dmg1>1d4</dmg1>\n    <dmgType>P</dmgType>\n    <range>20/60</range>\n    <text>Finesse: When making an attack with a finesse weapon\x2C you use your choice of your Strength or Dexterity modifier for the attack and damage rolls. You must use the same modifier for both rolls.\n\nThrown: If a weapon has the thrown property\x2C you can throw the weapon to make a ranged attack. If the weapon is a melee weapon\x2C you use the same ability modifier for that attack roll and damage roll that you would use for a melee attack with the weapon. For example\x2C if you throw a handaxe\x2C you use your Strength\x2C but if you throw a dagger\x2C you can use either your Strength or your Dexterity\x2C since the dagger has the finesse property.\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nLight: A light weapon is small and easy to handle\x2C making it ideal for use when fighting with two weapons.\n\nProficiency: simple\x2C dagger\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Dart</name>\n    <detail>dart\x2C common</detail>\n    <magic>YES</magic>\n    <type>R</type>\n    <weight>0.25</weight>\n    <property>F\x2CT</property>\n    <dmg1>1d4</dmg1>\n    <dmgType>P</dmgType>\n    <range>20/60</range>\n    <text>Finesse: When making an attack with a finesse weapon\x2C you use your choice of your Strength or Dexterity modifier for the attack and damage rolls. You must use the same modifier for both rolls.\n\nThrown: If a weapon has the thrown property\x2C you can throw the weapon to make a ranged attack. If the weapon is a melee weapon\x2C you use the same ability modifier for that attack roll and damage roll that you would use for a melee attack with the weapon. For example\x2C if you throw a handaxe\x2C you use your Strength\x2C but if you throw a dagger\x2C you can use either your Strength or your Dexterity\x2C since the dagger has the finesse property.\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nProficiency: simple\x2C dart\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Flail</name>\n    <detail>flail\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>2</weight>\n    <property>M</property>\n    <dmg1>1d8</dmg1>\n    <dmgType>B</dmgType>\n    <text>Proficiency: martial\x2C flail\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Glaive</name>\n    <detail>glaive\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>6</weight>\n    <property>H\x2CR\x2C2H\x2CM</property>\n    <dmg1>1d10</dmg1>\n    <dmgType>S</dmgType>\n    <text>Heavy: Creatures that are Small or Tiny have disadvantage on attack rolls with heavy weapons. A heavy weapon\'s size and bulk make it too large for a Small or Tiny creature to use effectively.\n\nReach: This weapon adds 5 feet to your reach when you attack with it\x2C as well as when determining your reach for opportunity attacks with it.\n\nTwo-Handed: This weapon requires two hands when you attack with it.\n\nProficiency: martial\x2C glaive\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Greataxe</name>\n    <detail>greataxe\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>7</weight>\n    <property>H\x2C2H\x2CM</property>\n    <dmg1>1d12</dmg1>\n    <dmgType>S</dmgType>\n    <text>Heavy: Creatures that are Small or Tiny have disadvantage on attack rolls with heavy weapons. A heavy weapon\'s size and bulk make it too large for a Small or Tiny creature to use effectively.\n\nTwo-Handed: This weapon requires two hands when you attack with it.\n\nProficiency: martial\x2C greataxe\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Greatclub</name>\n    <detail>greatclub\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>10</weight>\n    <property>2H</property>\n    <dmg1>1d8</dmg1>\n    <dmgType>B</dmgType>\n    <text>Two-Handed: This weapon requires two hands when you attack with it.\n\nProficiency: simple\x2C greatclub\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Greatsword</name>\n    <detail>greatsword\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>6</weight>\n    <property>H\x2C2H\x2CM</property>\n    <dmg1>2d6</dmg1>\n    <dmgType>S</dmgType>\n    <text>Heavy: Creatures that are Small or Tiny have disadvantage on attack rolls with heavy weapons. A heavy weapon\'s size and bulk make it too large for a Small or Tiny creature to use effectively.\n\nTwo-Handed: This weapon requires two hands when you attack with it.\n\nProficiency: martial\x2C greatsword\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Halberd</name>\n    <detail>halberd\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>6</weight>\n    <property>H\x2CR\x2C2H\x2CM</property>\n    <dmg1>1d10</dmg1>\n    <dmgType>S</dmgType>\n    <text>Heavy: Creatures that are Small or Tiny have disadvantage on attack rolls with heavy weapons. A heavy weapon\'s size and bulk make it too large for a Small or Tiny creature to use effectively.\n\nReach: This weapon adds 5 feet to your reach when you attack with it\x2C as well as when determining your reach for opportunity attacks with it.\n\nTwo-Handed: This weapon requires two hands when you attack with it.\n\nProficiency: martial\x2C halberd\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Half Plate Armor</name>\n    <detail>half plate armor\x2C common</detail>\n    <magic>YES</magic>\n    <type>MA</type>\n    <weight>40</weight>\n    <property/>\n    <ac>15</ac>\n    <stealth>1</stealth>\n    <text>Half plate consists of shaped metal plates that cover most of the wearer\'s body. It does not include leg protection beyond simple greaves that are attached with leather straps.\n\nThe wearer has disadvantage on Stealth (Dexterity) checks.\n\nSource:\tPlayer\'s Handbook p. 145</text>\n  </item>\n  <item>\n    <name>Hand Crossbow</name>\n    <detail>hand crossbow\x2C common</detail>\n    <magic>YES</magic>\n    <type>R</type>\n    <weight>3</weight>\n    <property>A\x2CL\x2CLD\x2CM</property>\n    <dmg1>1d6</dmg1>\n    <dmgType>P</dmgType>\n    <range>30/120</range>\n    <text>Ammunition: You can use a weapon that has the ammunition property to make a ranged attack only if you have ammunition to fire from the weapon. Each time you attack with the weapon\x2C you expend one piece of ammunition. Drawing the ammunition from a quiver\x2C case\x2C or other container is part of the attack (you need a free hand to load a one-handed weapon). At the end of the battle\x2C you can recover half your expended ammunition by taking a minute to search the battlefield.\n\nIf you use a weapon that has the ammunition property to make a melee attack\x2C you treat the weapon as an improvised weapon (see \"Improvised Weapons\").\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nLoading: Because of the time required to load this weapon\x2C you can fire only one piece of ammunition from it when you use an action\x2C bonus action\x2C or reaction to fire it\x2C regardless of the number of attacks you can normally make.\n\nLight: A light weapon is small and easy to handle\x2C making it ideal for use when fighting with two weapons.\n\nProficiency: martial\x2C hand crossbow\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Handaxe</name>\n    <detail>handaxe\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>2</weight>\n    <property>L\x2CT</property>\n    <dmg1>1d6</dmg1>\n    <dmgType>S</dmgType>\n    <range>20/60</range>\n    <text>Thrown: If a weapon has the thrown property\x2C you can throw the weapon to make a ranged attack. If the weapon is a melee weapon\x2C you use the same ability modifier for that attack roll and damage roll that you would use for a melee attack with the weapon. For example\x2C if you throw a handaxe\x2C you use your Strength\x2C but if you throw a dagger\x2C you can use either your Strength or your Dexterity\x2C since the dagger has the finesse property.\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nLight: A light weapon is small and easy to handle\x2C making it ideal for use when fighting with two weapons.\n\nProficiency: simple\x2C handaxe\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Heavy Crossbow</name>\n    <detail>heavy crossbow\x2C common</detail>\n    <magic>YES</magic>\n    <type>R</type>\n    <weight>18</weight>\n    <property>A\x2CH\x2CLD\x2C2H\x2CM</property>\n    <dmg1>1d10</dmg1>\n    <dmgType>P</dmgType>\n    <range>100/400</range>\n    <text>Ammunition: You can use a weapon that has the ammunition property to make a ranged attack only if you have ammunition to fire from the weapon. Each time you attack with the weapon\x2C you expend one piece of ammunition. Drawing the ammunition from a quiver\x2C case\x2C or other container is part of the attack (you need a free hand to load a one-handed weapon). At the end of the battle\x2C you can recover half your expended ammunition by taking a minute to search the battlefield.\n\nIf you use a weapon that has the ammunition property to make a melee attack\x2C you treat the weapon as an improvised weapon (see \"Improvised Weapons\").\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nLoading: Because of the time required to load this weapon\x2C you can fire only one piece of ammunition from it when you use an action\x2C bonus action\x2C or reaction to fire it\x2C regardless of the number of attacks you can normally make.\n\nTwo-Handed: This weapon requires two hands when you attack with it.\n\nHeavy: Creatures that are Small or Tiny have disadvantage on attack rolls with heavy weapons. A heavy weapon\'s size and bulk make it too large for a Small or Tiny creature to use effectively.\n\nProficiency: martial\x2C heavy crossbow\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Hide Armor</name>\n    <detail>hide armor\x2C common</detail>\n    <magic>YES</magic>\n    <type>MA</type>\n    <weight>12</weight>\n    <property/>\n    <ac>12</ac>\n    <text>This crude armor consists of thick furs and pelts. It is commonly worn by barbarian tribes\x2C evil humanoids\x2C and other folk who lack access to the tools and materials needed to create better armor.\n\nSource:\tPlayer\'s Handbook p. 144</text>\n  </item>\n  <item>\n    <name>Javelin</name>\n    <detail>javelin\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>2</weight>\n    <property>T</property>\n    <dmg1>1d6</dmg1>\n    <dmgType>P</dmgType>\n    <range>30/120</range>\n    <text>Thrown: If a weapon has the thrown property\x2C you can throw the weapon to make a ranged attack. If the weapon is a melee weapon\x2C you use the same ability modifier for that attack roll and damage roll that you would use for a melee attack with the weapon. For example\x2C if you throw a handaxe\x2C you use your Strength\x2C but if you throw a dagger\x2C you can use either your Strength or your Dexterity\x2C since the dagger has the finesse property.\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nProficiency: simple\x2C javelin\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Lance</name>\n    <detail>lance\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>6</weight>\n    <property>R\x2CS\x2CM</property>\n    <dmg1>1d12</dmg1>\n    <dmgType>P</dmgType>\n    <text>Special: You have disadvantage when you use a lance to attack a target within 5 feet of you. Also\x2C a lance requires two hands to wield when you aren\'t mounted.\n\nReach: This weapon adds 5 feet to your reach when you attack with it\x2C as well as when determining your reach for opportunity attacks with it.\n\nProficiency: martial\x2C lance\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Leather Armor</name>\n    <detail>leather armor\x2C common</detail>\n    <magic>YES</magic>\n    <type>LA</type>\n    <weight>10</weight>\n    <property/>\n    <ac>11</ac>\n    <text>The breastplate and shoulder protectors of this armor are made of leather that has been stiffened by being boiled in oil. The rest of the armor is made of softer and more flexible materials.\n\nSource:\tPlayer\'s Handbook p. 144</text>\n  </item>\n  <item>\n    <name>Light Crossbow</name>\n    <detail>light crossbow\x2C common</detail>\n    <magic>YES</magic>\n    <type>R</type>\n    <weight>5</weight>\n    <property>A\x2CLD\x2C2H</property>\n    <dmg1>1d8</dmg1>\n    <dmgType>P</dmgType>\n    <range>80/320</range>\n    <text>Ammunition: You can use a weapon that has the ammunition property to make a ranged attack only if you have ammunition to fire from the weapon. Each time you attack with the weapon\x2C you expend one piece of ammunition. Drawing the ammunition from a quiver\x2C case\x2C or other container is part of the attack (you need a free hand to load a one-handed weapon). At the end of the battle\x2C you can recover half your expended ammunition by taking a minute to search the battlefield.\n\nIf you use a weapon that has the ammunition property to make a melee attack\x2C you treat the weapon as an improvised weapon (see \"Improvised Weapons\").\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nLoading: Because of the time required to load this weapon\x2C you can fire only one piece of ammunition from it when you use an action\x2C bonus action\x2C or reaction to fire it\x2C regardless of the number of attacks you can normally make.\n\nTwo-Handed: This weapon requires two hands when you attack with it.\n\nProficiency: simple\x2C light crossbow\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Light Hammer</name>\n    <detail>light hammer\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>2</weight>\n    <property>L\x2CT</property>\n    <dmg1>1d4</dmg1>\n    <dmgType>B</dmgType>\n    <range>20/60</range>\n    <text>Thrown: If a weapon has the thrown property\x2C you can throw the weapon to make a ranged attack. If the weapon is a melee weapon\x2C you use the same ability modifier for that attack roll and damage roll that you would use for a melee attack with the weapon. For example\x2C if you throw a handaxe\x2C you use your Strength\x2C but if you throw a dagger\x2C you can use either your Strength or your Dexterity\x2C since the dagger has the finesse property.\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nLight: A light weapon is small and easy to handle\x2C making it ideal for use when fighting with two weapons.\n\nProficiency: simple\x2C light hammer\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Longbow</name>\n    <detail>longbow\x2C common</detail>\n    <magic>YES</magic>\n    <type>R</type>\n    <weight>2</weight>\n    <property>A\x2CH\x2C2H\x2CM</property>\n    <dmg1>1d8</dmg1>\n    <dmgType>P</dmgType>\n    <range>150/600</range>\n    <text>Ammunition: You can use a weapon that has the ammunition property to make a ranged attack only if you have ammunition to fire from the weapon. Each time you attack with the weapon\x2C you expend one piece of ammunition. Drawing the ammunition from a quiver\x2C case\x2C or other container is part of the attack (you need a free hand to load a one-handed weapon). At the end of the battle\x2C you can recover half your expended ammunition by taking a minute to search the battlefield.\n\nIf you use a weapon that has the ammunition property to make a melee attack\x2C you treat the weapon as an improvised weapon (see \"Improvised Weapons\").\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nTwo-Handed: This weapon requires two hands when you attack with it.\n\nHeavy: Creatures that are Small or Tiny have disadvantage on attack rolls with heavy weapons. A heavy weapon\'s size and bulk make it too large for a Small or Tiny creature to use effectively.\n\nProficiency: martial\x2C longbow\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Longsword</name>\n    <detail>longsword\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>3</weight>\n    <property>V\x2CM</property>\n    <dmg1>1d8</dmg1>\n    <dmg2>1d10</dmg2>\n    <dmgType>S</dmgType>\n    <text>Versatile: This weapon can be used with one or two hands. A damage value in parentheses appears with the property\xE2\x80\x94the damage when the weapon is used with two hands to make a melee Attack.\n\nProficiency: martial\x2C longsword\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Mace</name>\n    <detail>mace\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>4</weight>\n    <property/>\n    <dmg1>1d6</dmg1>\n    <dmgType>B</dmgType>\n    <text>Proficiency: simple\x2C mace\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Maul</name>\n    <detail>maul\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>10</weight>\n    <property>H\x2C2H\x2CM</property>\n    <dmg1>2d6</dmg1>\n    <dmgType>B</dmgType>\n    <text>Heavy: Creatures that are Small or Tiny have disadvantage on attack rolls with heavy weapons. A heavy weapon\'s size and bulk make it too large for a Small or Tiny creature to use effectively.\n\nTwo-Handed: This weapon requires two hands when you attack with it.\n\nProficiency: martial\x2C maul\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Morningstar</name>\n    <detail>morningstar\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>4</weight>\n    <property>M</property>\n    <dmg1>1d8</dmg1>\n    <dmgType>P</dmgType>\n    <text>Proficiency: martial\x2C morningstar\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Net</name>\n    <detail>net\x2C common</detail>\n    <magic>YES</magic>\n    <type>R</type>\n    <weight>3</weight>\n    <property>S\x2CT\x2CM</property>\n    <range>5/15</range>\n    <text>Special: A Large or smaller creature hit by a net is restrained until it is freed. A net has no effect on creatures that are formless\x2C or creatures that are Huge or larger. A creature can use its action to make a DC 10 Strength check\x2C freeing itself or another creature within its reach on a success. Dealing 5 slashing damage to the net (AC 10) also frees the creature without harming it\x2C ending the effect and destroying the net. When you use an action\x2C bonus action\x2C or reaction to attack with a net\x2C you can make only one attack regardless of the number of attacks you can normally make.\n\nThrown: If a weapon has the thrown property\x2C you can throw the weapon to make a ranged attack. If the weapon is a melee weapon\x2C you use the same ability modifier for that attack roll and damage roll that you would use for a melee attack with the weapon. For example\x2C if you throw a handaxe\x2C you use your Strength\x2C but if you throw a dagger\x2C you can use either your Strength or your Dexterity\x2C since the dagger has the finesse property.\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nProficiency: martial\x2C net\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Padded Armor</name>\n    <detail>padded armor\x2C common</detail>\n    <magic>YES</magic>\n    <type>LA</type>\n    <weight>8</weight>\n    <property/>\n    <ac>11</ac>\n    <stealth>1</stealth>\n    <text>Padded armor consists of quilted layers of cloth and batting.\n\nThe wearer has disadvantage on Stealth (Dexterity) checks.\n\nSource:\tPlayer\'s Handbook p. 144</text>\n  </item>\n  <item>\n    <name>Pike</name>\n    <detail>pike\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>18</weight>\n    <property>H\x2CR\x2C2H\x2CM</property>\n    <dmg1>1d10</dmg1>\n    <dmgType>P</dmgType>\n    <text>Heavy: Creatures that are Small or Tiny have disadvantage on attack rolls with heavy weapons. A heavy weapon\'s size and bulk make it too large for a Small or Tiny creature to use effectively.\n\nReach: This weapon adds 5 feet to your reach when you attack with it\x2C as well as when determining your reach for opportunity attacks with it.\n\nTwo-Handed: This weapon requires two hands when you attack with it.\n\nProficiency: martial\x2C Pike\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Plate Armor</name>\n    <detail>uncommon</detail>\n    <magic>YES</magic>\n    <type>HA</type>\n    <weight>65</weight>\n    <property/>\n    <ac>18</ac>\n    <stealth>1</stealth>\n    <strength>15</strength>\n    <text>Plate consists of shaped\x2C interlocking metal plates to cover the entire body. A suit of plate includes gauntlets\x2C heavy leather boots\x2C a visored helmet\x2C and thick layers of padding underneath the armor. Buckles and straps distribute the weight over the body.\n\nThe wearer has disadvantage on Stealth (Dexterity) checks.\n\nIf the wearer has a Strength score lower than 15\x2C their speed is reduced by 10 feet.\n\nSource:\tPlayer\'s Handbook p. 145</text>\n  </item>\n  <item>\n    <name>Quarterstaff</name>\n    <detail>quarterstaff\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>4</weight>\n    <property>V</property>\n    <dmg1>1d6</dmg1>\n    <dmg2>1d8</dmg2>\n    <dmgType>B</dmgType>\n    <text>Versatile: This weapon can be used with one or two hands. A damage value in parentheses appears with the property\xE2\x80\x94the damage when the weapon is used with two hands to make a melee Attack.\n\nProficiency: simple\x2C quarterstaff\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Rapier</name>\n    <detail>rapier\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>2</weight>\n    <property>F\x2CM</property>\n    <dmg1>1d8</dmg1>\n    <dmgType>P</dmgType>\n    <text>Finesse: When making an attack with a finesse weapon\x2C you use your choice of your Strength or Dexterity modifier for the attack and damage rolls. You must use the same modifier for both rolls.\n\nProficiency: martial\x2C rapier\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Ring Mail</name>\n    <detail>uncommon</detail>\n    <magic>YES</magic>\n    <type>HA</type>\n    <weight>40</weight>\n    <property/>\n    <ac>14</ac>\n    <stealth>1</stealth>\n    <text>This armor is leather armor with heavy rings sewn into it. The rings help reinforce the armor against blows from swords and axes. Ring mail is inferior to chain mail\x2C and it\'s usually worn only by those who can\'t afford better armor.\n\nThe wearer has disadvantage on Stealth (Dexterity) checks.\n\nSource:\tPlayer\'s Handbook p. 145</text>\n  </item>\n  <item>\n    <name>Rod</name>\n    <detail>spellcasting focus</detail>\n    <magic>YES</magic>\n    <type>G</type>\n    <weight>2</weight>\n    <property/>\n    <text>An arcane focus is a special item designed to channel the power of arcane spells. A sorcerer\x2C warlock\x2C or wizard can use such an item as a spellcasting focus.\n\nSource:\tPlayer\'s Handbook p. 151</text>\n  </item>\n  <item>\n    <name>Scale Mail</name>\n    <detail>uncommon</detail>\n    <magic>YES</magic>\n    <type>MA</type>\n    <weight>45</weight>\n    <property/>\n    <ac>14</ac>\n    <stealth>1</stealth>\n    <text>This armor consists of a coat and leggings (and perhaps a separate skirt) of leather covered with overlapping pieces of metal\x2C much like the scales of a fish. The suit includes gauntlets.\n\nThe wearer has disadvantage on Stealth (Dexterity) checks.\n\nSource:\tPlayer\'s Handbook p. 144</text>\n  </item>\n  <item>\n    <name>Scimitar</name>\n    <detail>scimitar\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>3</weight>\n    <property>F\x2CL\x2CM</property>\n    <dmg1>1d6</dmg1>\n    <dmgType>S</dmgType>\n    <text>Finesse: When making an attack with a finesse weapon\x2C you use your choice of your Strength or Dexterity modifier for the attack and damage rolls. You must use the same modifier for both rolls.\n\nLight: A light weapon is small and easy to handle\x2C making it ideal for use when fighting with two weapons.\n\nProficiency: martial\x2C scimitar\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Shield</name>\n    <detail>shield\x2C common</detail>\n    <magic>YES</magic>\n    <type>S</type>\n    <weight>6</weight>\n    <property/>\n    <ac>2</ac>\n    <text>A shield is made from wood or metal and is carried in one hand. Wielding a shield increases your Armor Class by 2. You can benefit from only one shield at a time.\n\nSource:\tPlayer\'s Handbook p. 144</text>\n  </item>\n  <item>\n    <name>Shortbow</name>\n    <detail>shortbow\x2C common</detail>\n    <magic>YES</magic>\n    <type>R</type>\n    <weight>2</weight>\n    <property>A\x2C2H</property>\n    <dmg1>1d6</dmg1>\n    <dmgType>P</dmgType>\n    <range>80/320</range>\n    <text>Ammunition: You can use a weapon that has the ammunition property to make a ranged attack only if you have ammunition to fire from the weapon. Each time you attack with the weapon\x2C you expend one piece of ammunition. Drawing the ammunition from a quiver\x2C case\x2C or other container is part of the attack (you need a free hand to load a one-handed weapon). At the end of the battle\x2C you can recover half your expended ammunition by taking a minute to search the battlefield.\n\nIf you use a weapon that has the ammunition property to make a melee attack\x2C you treat the weapon as an improvised weapon (see \"Improvised Weapons\").\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nTwo-Handed: This weapon requires two hands when you attack with it.\n\nProficiency: simple\x2C shortbow\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Shortsword</name>\n    <detail>shortsword\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>2</weight>\n    <property>F\x2CL\x2CM</property>\n    <dmg1>1d6</dmg1>\n    <dmgType>P</dmgType>\n    <text>Finesse: When making an attack with a finesse weapon\x2C you use your choice of your Strength or Dexterity modifier for the attack and damage rolls. You must use the same modifier for both rolls.\n\nLight: A light weapon is small and easy to handle\x2C making it ideal for use when fighting with two weapons.\n\nProficiency: martial\x2C shortsword\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Sickle</name>\n    <detail>sickle\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>2</weight>\n    <property>L</property>\n    <dmg1>1d4</dmg1>\n    <dmgType>S</dmgType>\n    <text>Light: A light weapon is small and easy to handle\x2C making it ideal for use when fighting with two weapons.\n\nProficiency: simple\x2C sickle\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Sling</name>\n    <detail>sling\x2C common</detail>\n    <magic>YES</magic>\n    <type>R</type>\n    <weight/>\n    <property>A</property>\n    <dmg1>1d4</dmg1>\n    <dmgType>B</dmgType>\n    <range>30/120</range>\n    <text>Ammunition: You can use a weapon that has the ammunition property to make a ranged attack only if you have ammunition to fire from the weapon. Each time you attack with the weapon\x2C you expend one piece of ammunition. Drawing the ammunition from a quiver\x2C case\x2C or other container is part of the attack (you need a free hand to load a one-handed weapon). At the end of the battle\x2C you can recover half your expended ammunition by taking a minute to search the battlefield.\n\nIf you use a weapon that has the ammunition property to make a melee attack\x2C you treat the weapon as an improvised weapon (see \"Improvised Weapons\"). A sling must be loaded to deal any damage when used in this way.\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nProficiency: simple\x2C sling\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Spear</name>\n    <detail>spear\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>3</weight>\n    <property>T\x2CV</property>\n    <dmg1>1d6</dmg1>\n    <dmg2>1d8</dmg2>\n    <dmgType>P</dmgType>\n    <range>20/60</range>\n    <text>Thrown: If a weapon has the thrown property\x2C you can throw the weapon to make a ranged attack. If the weapon is a melee weapon\x2C you use the same ability modifier for that attack roll and damage roll that you would use for a melee attack with the weapon. For example\x2C if you throw a handaxe\x2C you use your Strength\x2C but if you throw a dagger\x2C you can use either your Strength or your Dexterity\x2C since the dagger has the finesse property.\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nVersatile: This weapon can be used with one or two hands. A damage value in parentheses appears with the property\xE2\x80\x94the damage when the weapon is used with two hands to make a melee Attack.\n\nProficiency: simple\x2C spear\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Splint Armor</name>\n    <detail>uncommon</detail>\n    <magic>YES</magic>\n    <type>HA</type>\n    <weight>60</weight>\n    <property/>\n    <ac>17</ac>\n    <stealth>1</stealth>\n    <strength>15</strength>\n    <text>This armor is made of narrow vertical strips of metal riveted to a backing of leather that is worn over cloth padding. Flexible chain mail protects the joints.\n\nThe wearer has disadvantage on Stealth (Dexterity) checks.\n\nIf the wearer has a Strength score lower than 15\x2C their speed is reduced by 10 feet.\n\nSource:\tPlayer\'s Handbook p. 145</text>\n  </item>\n  <item>\n    <name>Staff</name>\n    <detail>spellcasting focus\x2C common</detail>\n    <magic>YES</magic>\n    <type>ST</type>\n    <weight>4</weight>\n    <property>V</property>\n    <dmg1>1d6</dmg1>\n    <dmg2>1d8</dmg2>\n    <dmgType>B</dmgType>\n    <text>An arcane focus is a special item designed to channel the power of arcane spells. A sorcerer\x2C warlock\x2C or wizard can use such an item as a spellcasting focus.\n\nVersatile: This weapon can be used with one or two hands. A damage value in parentheses appears with the property\xE2\x80\x94the damage when the weapon is used with two hands to make a melee Attack.\n\nProficiency: simple\x2C staff\x2C quarterstaff\nSource:\tPlayer\'s Handbook p. 151</text>\n  </item>\n  <item>\n    <name>Studded Leather Armor</name>\n    <detail>studded leather armor\x2C common</detail>\n    <magic>YES</magic>\n    <type>LA</type>\n    <weight>13</weight>\n    <property/>\n    <ac>12</ac>\n    <text>Made from tough but flexible leather\x2C studded leather is reinforced with close-set rivets or spikes.\n\nSource:\tPlayer\'s Handbook p. 144</text>\n  </item>\n  <item>\n    <name>Trident</name>\n    <detail>trident\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>4</weight>\n    <property>T\x2CV\x2CM</property>\n    <dmg1>1d6</dmg1>\n    <dmg2>1d8</dmg2>\n    <dmgType>P</dmgType>\n    <range>20/60</range>\n    <text>Thrown: If a weapon has the thrown property\x2C you can throw the weapon to make a ranged attack. If the weapon is a melee weapon\x2C you use the same ability modifier for that attack roll and damage roll that you would use for a melee attack with the weapon. For example\x2C if you throw a handaxe\x2C you use your Strength\x2C but if you throw a dagger\x2C you can use either your Strength or your Dexterity\x2C since the dagger has the finesse property.\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nVersatile: This weapon can be used with one or two hands. A damage value in parentheses appears with the property\xE2\x80\x94the damage when the weapon is used with two hands to make a melee Attack.\n\nProficiency: martial\x2C trident\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>War Pick</name>\n    <detail>war pick\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>2</weight>\n    <property>M</property>\n    <dmg1>1d8</dmg1>\n    <dmgType>P</dmgType>\n    <text>Proficiency: martial\x2C war pick\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Warhammer</name>\n    <detail>warhammer\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>2</weight>\n    <property>V\x2CM</property>\n    <dmg1>1d8</dmg1>\n    <dmg2>1d10</dmg2>\n    <dmgType>B</dmgType>\n    <text>Versatile: This weapon can be used with one or two hands. A damage value in parentheses appears with the property\xE2\x80\x94the damage when the weapon is used with two hands to make a melee Attack.\n\nProficiency: martial\x2C warhammer\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Whip</name>\n    <detail>whip\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>3</weight>\n    <property>F\x2CR\x2CM</property>\n    <dmg1>1d4</dmg1>\n    <dmgType>S</dmgType>\n    <text>Finesse: When making an attack with a finesse weapon\x2C you use your choice of your Strength or Dexterity modifier for the attack and damage rolls. You must use the same modifier for both rolls.\n\nReach: This weapon adds 5 feet to your reach when you attack with it\x2C as well as when determining your reach for opportunity attacks with it.\n\nProficiency: martial\x2C whip\nSource:\tPlayer\'s Handbook p. 149</text>\n  </item>\n  <item>\n    <name>Wooden Staff</name>\n    <detail>druidic focus\x2C common</detail>\n    <magic>YES</magic>\n    <type>ST</type>\n    <weight>4</weight>\n    <property>V</property>\n    <dmg1>1d6</dmg1>\n    <dmg2>1d8</dmg2>\n    <dmgType>B</dmgType>\n    <text>Versatile: This weapon can be used with one or two hands. A damage value in parentheses appears with the property\xE2\x80\x94the damage when the weapon is used with two hands to make a melee Attack.\n\nArcane Focus: An arcane focus is a special item designed to channel the power of arcane spells. A sorcerer\x2C warlock\x2C or wizard can use such an item as a spellcasting focus.\n\nDruidic Focus: A druid can use this object as a spellcasting focus.\n\nProficiency: simple\x2C staff\x2C quarterstaff\nSource:\tPlayer\'s Handbook p. 151</text>\n  </item>\n  <item>\n    <name>Spiked Armor</name>\n    <detail>uncommon</detail>\n    <magic>YES</magic>\n    <type>MA</type>\n    <weight>45</weight>\n    <property/>\n    <ac>14</ac>\n    <stealth>1</stealth>\n    <text>Spiked armor is a rare type of medium armor made by dwarves. It consists of a leather coat and leggings covered with spikes that are usually made of metal.\n\nThe wearer has disadvantage on Stealth (Dexterity) checks.\n\nSource:\tSword Coast Adventurer\'s Guide p. 121</text>\n  </item>\n  <item>\n    <name>Hoopak</name>\n    <detail>hoopak\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>2</weight>\n    <property>M\x2CA\x2CS\x2CF\x2C2H</property>\n    <dmg1>1d6</dmg1>\n    <dmgType>P</dmgType>\n    <range>40/160</range>\n    <text>A hoopak is a sturdy stick with a sling at one end and a pointed tip at the other.\n\nSpecial: When you make a melee attack with this weapon\x2C you ignore its ammunition property. You can use the hoopak as a martial ranged weapon. If you do\x2C it uses the ammunition property\x2C uses sling bullets\x2C and deals 1d4 bludgeoning damage on a hit.\n\nAmmunition: You can use a weapon that has the ammunition property to make a ranged attack only if you have ammunition to fire from the weapon. Each time you attack with the weapon\x2C you expend one piece of ammunition. Drawing the ammunition from a quiver\x2C case\x2C or other container is part of the attack. Loading a one-handed weapon requires a free hand. At the end of the battle\x2C you can recover half your expended ammunition by taking a minute to search the battlefield.\n\nIf you use a weapon that has the ammunition property to make a melee attack\x2C you treat the weapon as an improvised weapon. A sling must be loaded to deal any damage when used in this way.\n\nFinesse: When making an attack with a finesse weapon\x2C you use your choice of your Strength or Dexterity modifier for the attack and damage rolls. You must use the same modifier for both rolls.\n\nTwo-Handed: This weapon requires two hands to use. This property is relevant only when you attack with the weapon\x2C not when you simply hold it.\n\nProficiency: martial\x2C hoopak\nSource:\tDragonlance: Shadow of the Dragon Queen p. 188</text>\n    <roll>1d4</roll>\n  </item>\n  <item>\n    <name>Double-Bladed Scimitar</name>\n    <detail>double-bladed scimitar\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>6</weight>\n    <property>S\x2C2H\x2CM</property>\n    <dmg1>2d4</dmg1>\n    <dmgType>S</dmgType>\n    <text>The double scimitar is the signature weapon of Valenar elves. A haft of fine wood supports a long blade on either end. Forged with techniques honed over tens of thousands of years\x2C these blades are strong\x2C sharp\x2C and remarkably light. Each scimitar is a masterpiece\x2C and as a result the double scimitar is an expensive weapon\x2C but few people ever have an opportunity to purchase one. If you\'re an elf\x2C your blade could have a long and storied history. If you\'re not an elf\x2C you might have stolen the weapon from a fallen foe or received it from a dying Valenar ally. If you work with your DM to create the story behind your double scimitar\x2C you can start with the weapon at 1st level in place of a martial weapon normally granted by your class. However\x2C it can be dangerous for a non-elf to carry a double scimitar. Valenar may demand its return or challenge you to prove that you\'re worthy to wield it.\n\nSpecial: If you attack with a double-bladed scimitar as part of the Attack action on your turn\x2C you can use a bonus action immediately after to make a melee attack with it. This attack deals 1d4 slashing damage on a hit\x2C instead of 2d4.\n\nTwo-Handed: This weapon requires two hands when you attack with it.\n\nProficiency: martial\x2C double-bladed scimitar\nSource:\tEberron: Rising from the Last War p. 21\x2C\n\t\tWayfinder\'s Guide to Eberron p. 74</text>\n    <roll>1d4</roll>\n  </item>\n  <item>\n    <name>Hooked Shortspear</name>\n    <detail>hooked shortspear\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>2</weight>\n    <property>L\x2CM</property>\n    <dmg1>1d4</dmg1>\n    <dmgType>P</dmgType>\n    <text>On a hit with this weapon\x2C the wielder can forgo dealing damage and attempt to trip the target\x2C in which case the target must succeed on a Strength saving throw or fall prone. The DC is 8 + the wielder\'s Strength modifier + the wielder\'s proficiency bonus.\n\nLight: A light weapon is small and easy to handle\x2C making it ideal for use when fighting with two weapons.\n\nProficiency: martial\x2C hooked shortspear\nSource:\tOut of the Abyss p. 224</text>\n  </item>\n  <item>\n    <name>Light Repeating Crossbow</name>\n    <detail>light repeating crossbow\x2C common</detail>\n    <magic>YES</magic>\n    <type>R</type>\n    <weight>5</weight>\n    <property>A\x2C2H</property>\n    <dmg1>1d8</dmg1>\n    <dmgType>P</dmgType>\n    <range>40/160</range>\n    <text>This crossbow is fitted with a cartridge that can hold up to six crossbow bolts. It automatically reloads after firing until the cartridge runs out of ammunition. Reloading the cartridge takes an action.\n\nAmmunition: You can use a weapon that has the ammunition property to make a ranged attack only if you have ammunition to fire from the weapon. Each time you attack with the weapon\x2C you expend one piece of ammunition. Drawing the ammunition from a quiver\x2C case\x2C or other container is part of the attack (you need a free hand to load a one-handed weapon). At the end of the battle\x2C you can recover half your expended ammunition by taking a minute to search the battlefield.\n\nIf you use a weapon that has the ammunition property to make a melee attack\x2C you treat the weapon as an improvised weapon (see \"Improvised Weapons\").\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nTwo-Handed: This weapon requires two hands when you attack with it.\n\nProficiency: simple\x2C light repeating crossbow\nSource:\tOut of the Abyss p. 224</text>\n  </item>\n  <item>\n    <name>Yklwa</name>\n    <detail>yklwa\x2C common</detail>\n    <magic>YES</magic>\n    <type>M</type>\n    <weight>3</weight>\n    <property>T</property>\n    <dmg1>1d8</dmg1>\n    <dmgType>P</dmgType>\n    <range>10/30</range>\n    <text>A yklwa (pronounced YICK-ul-wah) is a simple melee weapon that is the traditional weapon of Chultan warriors. A yklwa consists of a 3-foot wooden shaft with a steel or stone blade up to 18 inches long. Although it has the thrown weapon property\x2C the yklwa is not well balanced for throwing.\n\nThrown: If a weapon has the thrown property\x2C you can throw the weapon to make a ranged attack. If the weapon is a melee weapon\x2C you use the same ability modifier for that attack roll and damage roll that you would use for a melee attack with the weapon. For example\x2C if you throw a handaxe\x2C you use your Strength\x2C but if you throw a dagger\x2C you can use either your Strength or your Dexterity\x2C since the dagger has the finesse property.\n\nRange: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.\n\nProficiency: simple\x2C Yklwa\nSource:\tTomb of Annihilation p. 32</text>\n  </item>\n</compendium>\n", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPoisonContact, Type = String, Dynamic = False, Default = \"Contact: Contact poison can be smeared on an object and remains potent until it is touched or washed off. A creature that touches contact poison with exposed skin suffers its effects.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPoisonIngested, Type = String, Dynamic = False, Default = \"Ingested: A creature must swallow an entire dose of ingested poison to suffer its effects. The dose can be delivered in food or a liquid. You might decide that a partial dose has a reduced effect\x2C such as allowing advantage on the saving throw or dealing only half damage on a failed save.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPoisonInhaled, Type = String, Dynamic = False, Default = \"Inhaled: These poisons are powders or gases that take effect when inhaled. Blowing the powder or releasing the gas subjects creatures in a 5-foot cube to its effect. The resulting cloud dissipates immediately afterward. Holding one\'s breath is ineffective against inhaled poisons\x2C as they affect nasal membranes\x2C tear ducts\x2C and other parts of the body.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPoisonInjury, Type = String, Dynamic = False, Default = \"Injury: Injury poison can be applied to weapons\x2C ammunition\x2C trap components\x2C and other objects that deal piercing or clashing damage and remains potent until delivered through a wound or washed off. A creature that takes piercing or slashing damage from an object coated with the poison is exposed to its effects.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSpellFocusArcane, Type = String, Dynamic = False, Default = \"Arcane Focus: An arcane focus is a special item designed to channel the power of arcane spells. A sorcerer\x2C warlock\x2C or wizard can use such an item as a spellcasting focus.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSpellFocusDruidic, Type = String, Dynamic = False, Default = \"Druidic Focus: A druid can use this object as a spellcasting focus.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSpellFocusHolySymbol, Type = String, Dynamic = False, Default = \"Holy Symbol: A holy symbol is a representation of a god or pantheon. A cleric or paladin can use a holy symbol as a spellcasting focus. To use the symbol in this way\x2C the caster must hold it in hand\x2C wear it visibly\x2C or bear it on a shield.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSpellFocusInstrument, Type = String, Dynamic = False, Default = \"If you have proficiency with a given musical instrument\x2C you can add your proficiency bonus to any ability checks you make to play music with the instrument.\n\nA bard can use a musical instrument as a spellcasting focus\x2C substituting it for any material component that does not list a cost.\n\nEach type of musical instrument requires a separate proficiency.\n\nProficiency with a musical instrument indicates you are familiar with the techniques used to play it. You also have knowledge of some songs commonly performed with that instrument.\n\nHistory: Your expertise aids you in recalling lore related to your instrument.\n\nPerformance: Your ability to put on a good show is improved when you incorporate an instrument into your act.\n\nCompose a Tune: As part of a long rest\x2C you can compose a new tune and lyrics for your instrument. You might use this ability to impress a noble or spread scandalous rumors with a catchy tune.\n\nMusical Instrument:\nActivity | DC\nIdentify a tune | 10\nImprovise a tune | 20", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusAsleep, Type = String, Dynamic = False, Default = \"Asleep:\n\t\xE2\x80\xA2 The target falls unconscious. It wakes up if it takes any damage or if another creature uses its action to shake the sleeper awake.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusBlinded, Type = String, Dynamic = False, Default = \"Blinded:\n\t\xE2\x80\xA2 A blinded creature can\'t see and automatically fails any ability check that requires sight.\n\t\xE2\x80\xA2 Attack rolls against the creature have advantage\x2C and the creature\'s attack rolls have disadvantage.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusCharmed, Type = String, Dynamic = False, Default = \"Charmed:\n\t\xE2\x80\xA2 A charmed creature can\'t attack the charmer or target the charmer with harmful abilities or magical effects.\n\t\xE2\x80\xA2 The charmer has advantage on any ability check to interact socially with the creature.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusDeafened, Type = String, Dynamic = False, Default = \"Deafened:\n\t\xE2\x80\xA2 A deafened creature can\'t hear and automatically fails any ability check that requires hearing.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusFrightened, Type = String, Dynamic = False, Default = \"Frightened:\n\t\xE2\x80\xA2 A frightened creature has disadvantage on ability checks and attack rolls while the source of its fear is within line of sight.\n\t\xE2\x80\xA2 The creature can\'t willingly move closer to the source of its fear.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusIncapacitated, Type = String, Dynamic = False, Default = \"Incapacitated:\n\t\xE2\x80\xA2 An incapacitated creature can\'t take actions or reactions.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusInvisible, Type = String, Dynamic = False, Default = \"Invisible:\n\t\xE2\x80\xA2 An invisible creature is impossible to see without the aid of magic or a special sense. For the purpose of hiding\x2C the creature is heavily obscured. The creature\'s location can be detected by any noise it makes or any tracks igt leaves.\n\t\xE2\x80\xA2 Attack rolls against the creature have disadvantage\x2C and the creature\'s attack rolls have advantage.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusPanicked, Type = String, Dynamic = False, Default = \"Panicked:\n\t\xE2\x80\xA2 The target is frightened of you. On each of its turns\x2C the frightened creature must take the Dash action and move away from you by the safest and shortest available route\x2C unless there is nowhere to move. If the target moves to a place at least 60 feet away from you where it can no longer see you\x2C this effect ends.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusParalyzed, Type = String, Dynamic = False, Default = \"Paralyzed:\n\t\xE2\x80\xA2 A paralyzed creature is incapacitated\x2C meaning it can\'t take actions or reactions\x2C and can\'t move or speak.\n\t\xE2\x80\xA2 The creature automatically fails Strength and Dexterity saving throws.\n\t\xE2\x80\xA2 Attack rolls against the creature have advantage.\n\t\xE2\x80\xA2 Any attack that hits the creature is a critical hit if the attacker is within 5 feet of the creature.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusPetrified, Type = String, Dynamic = False, Default = \"Petrified:\n\t\xE2\x80\xA2 A petrified creature is transformed\x2C along with any nonmagical object it is wearing or carrying\x2C into a solid inanimate substance (usually stone). Its weight increases by a factor of ten\x2C and it ceases aging.\n\t\xE2\x80\xA2 The creature is incapacitated (meaning it can\'t take actions or reactions)\x2C can\'t move or speak\x2C and is unaware of its surroundings.\n\t\xE2\x80\xA2 Attack rolls against the creature have advantage.\n\t\xE2\x80\xA2 The creature automatically fails Strength and Dexterity saving throws.\n\t\xE2\x80\xA2 The creature has resistance to all damage.\n\t\xE2\x80\xA2 The creature is immune to poison and disease\x2C although a poison or disease already in its system is suspended\x2C not neutralized.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusPoisoned, Type = String, Dynamic = False, Default = \"Poisoned:\n\t\xE2\x80\xA2 A poisoned creature has disadvantage on Attack rolls and Ability Checks.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusProne, Type = String, Dynamic = False, Default = \"Prone:\n\t\xE2\x80\xA2 A prone creature\'s only movement option is to crawl\x2C unless it stands up and thereby ends the condition.\n\t\xE2\x80\xA2 The creature has disadvantage on attack rolls.\n\t\xE2\x80\xA2 An attack roll against the creature has advantage if the attacker is within 5 feet of the creature. Otherwise\x2C the attack roll has disadvantage.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusRestrained, Type = String, Dynamic = False, Default = \"Restrained:\n\t\xE2\x80\xA2 A restrained creature\'s speed becomes 0\x2C and it can\'t benefit from any bonus to its speed.\n\t\xE2\x80\xA2 Attack rolls against the creature have advantage\x2C and the creature\'s attack rolls have disadvantage.\n\t\xE2\x80\xA2 The creature has disadvantage on Dexterity saving throws.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusSickened, Type = String, Dynamic = False, Default = \"Sickened:\n\t\xE2\x80\xA2 The target has disadvantage on attack rolls and ability checks. At the end of each of its turns\x2C it can make another Wisdom saving throw. If it succeeds\x2C the effect ends.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusStunned, Type = String, Dynamic = False, Default = \"Stunned:\n\t\xE2\x80\xA2 A stunned creature is incapacitated\x2C meaning it can\'t take actions or reactions\x2C can\'t move\x2C and can speak only falteringly.\n\t\xE2\x80\xA2 The creature automatically fails Strength and Dexterity saving throws.\n\t\xE2\x80\xA2 Attack rolls against the creature have advantage.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStatusUnconscious, Type = String, Dynamic = False, Default = \"Unconscious:\n\t\xE2\x80\xA2 An unconscious creature is incapacitated\x2C meaning it can\'t take actions or reactions\x2C can\'t move or speak\x2C and is unaware of its surroundings.\n\t\xE2\x80\xA2 The creature drops whatever it\'s holding and falls prone.\n\t\xE2\x80\xA2 The creature automatically fails Strength and Dexterity saving throws.\n\t\xE2\x80\xA2 Attack rolls against the creature have advantage.\n\t\xE2\x80\xA2 Any attack that hits the creature is a critical hit if the attacker is within 5 feet of the creature.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyAmmunition, Type = String, Dynamic = False, Default = \"Ammunition: You can use a weapon that has the ammunition property to make a ranged attack only if you have ammunition to fire from the weapon. Each time you attack with the weapon\x2C you expend one piece of ammunition. Drawing the ammunition from a quiver\x2C case\x2C or other container is part of the attack. Loading a one-handed weapon requires a free hand. At the end of the battle\x2C you can recover half your expended ammunition by taking a minute to search the battlefield.\n\tIf you use a weapon that has the ammunition property to make a melee attack\x2C you treat the weapon as an improvised weapon. A sling must be loaded to deal any damage when used in this way.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyBurstFire, Type = String, Dynamic = False, Default = \"Burst Fire: A weapon that has the burst fire property can make a single-target attack\x2C or it can spray a 10-foot-cube area within normal range with shots. Each creature in the area must succeed on a DC 15 Dexterity saving throw or take the weapon\'s normal damage. This action uses ten pieces of ammunition.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyCurse, Type = String, Dynamic = False, Default = \"Curse: This weapon is cursed\x2C and becoming attuned to it extends the curse to you. Until the curse is broken with a remove curse spell or similar magic\x2C you are unwilling to part with the weapon.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyFinesse, Type = String, Dynamic = False, Default = \"Finesse: When making an attack with a finesse weapon\x2C you use your choice of your Strength or Dexterity modifier for the attack and damage rolls. You must use the same modifier for both rolls.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyHeavy, Type = String, Dynamic = False, Default = \"Heavy: Creatures that are Small or Tiny have disadvantage on attack rolls with heavy weapons. A heavy weapon\'s size and bulk make it too large for a Small or Tiny creature to use effectively.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyLight, Type = String, Dynamic = False, Default = \"Light: A light weapon is small and easy to handle\x2C making it ideal for use when fighting with two weapons.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyLoading, Type = String, Dynamic = False, Default = \"Loading: Because of the time required to load this weapon\x2C you can fire only one piece of ammunition from it when you use an action\x2C bonus action\x2C or reaction to fire it\x2C regardless of the number of attacks you can normally make.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyRange, Type = String, Dynamic = False, Default = \"Range: A weapon that can be used to make a ranged attack has a range shown in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon\'s normal range in feet\x2C and the second indicates the weapon\'s maximum range. When attacking a target beyond normal range\x2C you have disadvantage on the attack roll. You can\'t attack a target beyond the weapon\'s long range.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyReach, Type = String, Dynamic = False, Default = \"Reach: This weapon adds 5 feet to your reach when you attack with it\x2C as well as when determining your reach for opportunity attacks with it.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyReload, Type = String, Dynamic = False, Default = \"Reload: A limited number of shots can be made with a weapon that has the reload property. A character must then reload it using an action or a bonus action (the character\'s choice).", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyThrown, Type = String, Dynamic = False, Default = \"Thrown: If a weapon has the thrown property\x2C you can throw the weapon to make a ranged attack. If the weapon is a melee weapon\x2C you use the same ability modifier for that attack roll and damage roll that you would use for a melee attack with the weapon. For example\x2C if you throw a handaxe\x2C you use your Strength\x2C but if you throw a dagger\x2C you can use either your Strength or your Dexterity\x2C since the dagger has the finesse property.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyTwoHanded, Type = String, Dynamic = False, Default = \"Two-Handed: This weapon requires two hands to use. This property is relevant only when you attack with the weapon\x2C not when you simply hold it.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWeaponPropertyVersatile, Type = String, Dynamic = False, Default = \"Versatile: This weapon can be used with one or two hands. A damage value in parentheses appears with the property\xE2\x80\x94the damage when the weapon is used with two hands to make a melee Attack.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = RowAlternatingDarkModeColorDark, Type = Color, Dynamic = False, Default = \"&c090A1A", Scope = Public
	#tag EndConstant

	#tag Constant, Name = RowAlternatingDarkModeColorLight, Type = Color, Dynamic = False, Default = \"&c0C1024", Scope = Public
	#tag EndConstant

	#tag Constant, Name = RowAlternatingLightModeColorDark, Type = Color, Dynamic = False, Default = \"&cE6E0C6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = RowAlternatingLightModeColorLight, Type = Color, Dynamic = False, Default = \"&cF1ECD9", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SelectionColor, Type = Color, Dynamic = False, Default = \"&c7F1C14", Scope = Public
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
End Module
#tag EndModule
