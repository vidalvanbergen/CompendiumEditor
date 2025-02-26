#tag Module
Protected Module DnDArrays
	#tag Method, Flags = &h1
		Protected Function AbilityNames() As String()
		  Return Array( "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendBaseSpellLists(extends basemenu as MenuItem)
		  
		  
		  // Player's Handbook (PHB)
		  basemenu.AddMenu NewMenuItem( "Player's Handbook (2014) (PHB)", Nil, False)
		  basemenu.AddMenu new MenuItem( "Acid Splash" )
		  basemenu.AddMenu new MenuItem( "Aid" )
		  basemenu.AddMenu new MenuItem( "Alarm" )
		  basemenu.AddMenu new MenuItem( "Alter Self" )
		  basemenu.AddMenu new MenuItem( "Animal Friendship" )
		  basemenu.AddMenu new MenuItem( "Animal Messenger" )
		  basemenu.AddMenu new MenuItem( "Animal Shapes" )
		  basemenu.AddMenu new MenuItem( "Animate Dead" )
		  basemenu.AddMenu new MenuItem( "Animate Objects" )
		  basemenu.AddMenu new MenuItem( "Antilife Shell" )
		  basemenu.AddMenu new MenuItem( "Antimagic Field" )
		  basemenu.AddMenu new MenuItem( "Antipathy/Sympathy" )
		  basemenu.AddMenu new MenuItem( "Arcane Eye" )
		  basemenu.AddMenu new MenuItem( "Arcane Gate" )
		  basemenu.AddMenu new MenuItem( "Arcane Lock" )
		  basemenu.AddMenu new MenuItem( "Armor of Agathys" )
		  basemenu.AddMenu new MenuItem( "Arms of Hadar" )
		  basemenu.AddMenu new MenuItem( "Astral Projection" )
		  basemenu.AddMenu new MenuItem( "Augury" )
		  basemenu.AddMenu new MenuItem( "Aura of Life" )
		  basemenu.AddMenu new MenuItem( "Aura of Purity" )
		  basemenu.AddMenu new MenuItem( "Aura of Vitality" )
		  basemenu.AddMenu new MenuItem( "Awaken" )
		  basemenu.AddMenu new MenuItem( "Bane" )
		  basemenu.AddMenu new MenuItem( "Banishing Smite" )
		  basemenu.AddMenu new MenuItem( "Banishment" )
		  basemenu.AddMenu new MenuItem( "Barkskin" )
		  basemenu.AddMenu new MenuItem( "Beacon of Hope" )
		  basemenu.AddMenu new MenuItem( "Beast Sense" )
		  basemenu.AddMenu new MenuItem( "Bestow Curse" )
		  basemenu.AddMenu new MenuItem( "Bigby's Hand" )
		  basemenu.AddMenu new MenuItem( "Blade Barrier" )
		  basemenu.AddMenu new MenuItem( "Blade Ward" )
		  basemenu.AddMenu new MenuItem( "Bless" )
		  basemenu.AddMenu new MenuItem( "Blight" )
		  basemenu.AddMenu new MenuItem( "Blinding Smite" )
		  basemenu.AddMenu new MenuItem( "Blindness/Deafness" )
		  basemenu.AddMenu new MenuItem( "Blink" )
		  basemenu.AddMenu new MenuItem( "Blur" )
		  basemenu.AddMenu new MenuItem( "Branding Smite" )
		  basemenu.AddMenu new MenuItem( "Burning Hands" )
		  basemenu.AddMenu new MenuItem( "Call Lightning" )
		  basemenu.AddMenu new MenuItem( "Calm Emotions" )
		  basemenu.AddMenu new MenuItem( "Chain Lightning" )
		  basemenu.AddMenu new MenuItem( "Charm Person" )
		  basemenu.AddMenu new MenuItem( "Chill Touch" )
		  basemenu.AddMenu new MenuItem( "Chromatic Orb" )
		  basemenu.AddMenu new MenuItem( "Circle of Death" )
		  basemenu.AddMenu new MenuItem( "Circle of Power" )
		  basemenu.AddMenu new MenuItem( "Clairvoyance" )
		  basemenu.AddMenu new MenuItem( "Clone" )
		  basemenu.AddMenu new MenuItem( "Cloud of Daggers" )
		  basemenu.AddMenu new MenuItem( "Cloudkill" )
		  basemenu.AddMenu new MenuItem( "Color Spray" )
		  basemenu.AddMenu new MenuItem( "Command" )
		  basemenu.AddMenu new MenuItem( "Commune" )
		  basemenu.AddMenu new MenuItem( "Commune With Nature" )
		  basemenu.AddMenu new MenuItem( "Compelled Duel" )
		  basemenu.AddMenu new MenuItem( "Comprehend Languages" )
		  basemenu.AddMenu new MenuItem( "Compulsion" )
		  basemenu.AddMenu new MenuItem( "Cone of Cold" )
		  basemenu.AddMenu new MenuItem( "Confusion" )
		  basemenu.AddMenu new MenuItem( "Conjure Animals" )
		  basemenu.AddMenu new MenuItem( "Conjure Barrage" )
		  basemenu.AddMenu new MenuItem( "Conjure Celestial" )
		  basemenu.AddMenu new MenuItem( "Conjure Elemental" )
		  basemenu.AddMenu new MenuItem( "Conjure Fey" )
		  basemenu.AddMenu new MenuItem( "Conjure Minor Elementals" )
		  basemenu.AddMenu new MenuItem( "Conjure Volley" )
		  basemenu.AddMenu new MenuItem( "Conjure Woodland Beings" )
		  basemenu.AddMenu new MenuItem( "Contact Other Plane" )
		  basemenu.AddMenu new MenuItem( "Contagion" )
		  basemenu.AddMenu new MenuItem( "Contingency" )
		  basemenu.AddMenu new MenuItem( "Continual Flame" )
		  basemenu.AddMenu new MenuItem( "Control Water" )
		  basemenu.AddMenu new MenuItem( "Control Weather" )
		  basemenu.AddMenu new MenuItem( "Cordon of Arrows" )
		  basemenu.AddMenu new MenuItem( "Counterspell" )
		  basemenu.AddMenu new MenuItem( "Create Food and Water" )
		  basemenu.AddMenu new MenuItem( "Create or Destroy Water" )
		  basemenu.AddMenu new MenuItem( "Create Undead" )
		  basemenu.AddMenu new MenuItem( "Creation" )
		  basemenu.AddMenu new MenuItem( "Crown of Madness" )
		  basemenu.AddMenu new MenuItem( "Crusader's Mantle" )
		  basemenu.AddMenu new MenuItem( "Cure Wounds" )
		  basemenu.AddMenu new MenuItem( "Dancing Lights" )
		  basemenu.AddMenu new MenuItem( "Darkness" )
		  basemenu.AddMenu new MenuItem( "Darkvision" )
		  basemenu.AddMenu new MenuItem( "Daylight" )
		  basemenu.AddMenu new MenuItem( "Death Ward" )
		  basemenu.AddMenu new MenuItem( "Delayed Blast Fireball" )
		  basemenu.AddMenu new MenuItem( "Demiplane" )
		  basemenu.AddMenu new MenuItem( "Destructive Wave" )
		  basemenu.AddMenu new MenuItem( "Detect Evil and Good" )
		  basemenu.AddMenu new MenuItem( "Detect Magic" )
		  basemenu.AddMenu new MenuItem( "Detect Poison and Disease" )
		  basemenu.AddMenu new MenuItem( "Detect Thoughts" )
		  basemenu.AddMenu new MenuItem( "Dimension Door" )
		  basemenu.AddMenu new MenuItem( "Disguise Self" )
		  basemenu.AddMenu new MenuItem( "Disintegrate" )
		  basemenu.AddMenu new MenuItem( "Dispel Evil and Good" )
		  basemenu.AddMenu new MenuItem( "Dispel Magic" )
		  basemenu.AddMenu new MenuItem( "Dissonant Whispers" )
		  basemenu.AddMenu new MenuItem( "Divination" )
		  basemenu.AddMenu new MenuItem( "Divine Favor" )
		  basemenu.AddMenu new MenuItem( "Divine Word" )
		  basemenu.AddMenu new MenuItem( "Dominate Beast" )
		  basemenu.AddMenu new MenuItem( "Dominate Monster" )
		  basemenu.AddMenu new MenuItem( "Dominate Person" )
		  basemenu.AddMenu new MenuItem( "Drawmij's Instant Summons" )
		  basemenu.AddMenu new MenuItem( "Dream" )
		  basemenu.AddMenu new MenuItem( "Druidcraft" )
		  basemenu.AddMenu new MenuItem( "Earthquake" )
		  basemenu.AddMenu new MenuItem( "Eldritch Blast" )
		  basemenu.AddMenu new MenuItem( "Elemental Weapon" )
		  basemenu.AddMenu new MenuItem( "Enhance Ability" )
		  basemenu.AddMenu new MenuItem( "Enlarge/Reduce" )
		  basemenu.AddMenu new MenuItem( "Ensnaring Strike" )
		  basemenu.AddMenu new MenuItem( "Entangle" )
		  basemenu.AddMenu new MenuItem( "Enthrall" )
		  basemenu.AddMenu new MenuItem( "Etherealness" )
		  basemenu.AddMenu new MenuItem( "Evard's Black Tentacles" )
		  basemenu.AddMenu new MenuItem( "Expeditious Retreat" )
		  basemenu.AddMenu new MenuItem( "Eyebite" )
		  basemenu.AddMenu new MenuItem( "Fabricate" )
		  basemenu.AddMenu new MenuItem( "Faerie Fire" )
		  basemenu.AddMenu new MenuItem( "False Life" )
		  basemenu.AddMenu new MenuItem( "Fear" )
		  basemenu.AddMenu new MenuItem( "Feather Fall" )
		  basemenu.AddMenu new MenuItem( "Feeblemind" )
		  basemenu.AddMenu new MenuItem( "Feign Death" )
		  basemenu.AddMenu new MenuItem( "Find Familiar" )
		  basemenu.AddMenu new MenuItem( "Find Steed" )
		  basemenu.AddMenu new MenuItem( "Find the Path" )
		  basemenu.AddMenu new MenuItem( "Find Traps" )
		  basemenu.AddMenu new MenuItem( "Finger of Death" )
		  basemenu.AddMenu new MenuItem( "Fire Bolt" )
		  basemenu.AddMenu new MenuItem( "Fire Shield" )
		  basemenu.AddMenu new MenuItem( "Fire Storm" )
		  basemenu.AddMenu new MenuItem( "Fireball" )
		  basemenu.AddMenu new MenuItem( "Flame Blade" )
		  basemenu.AddMenu new MenuItem( "Flame Strike" )
		  basemenu.AddMenu new MenuItem( "Flaming Sphere" )
		  basemenu.AddMenu new MenuItem( "Flesh to Stone" )
		  basemenu.AddMenu new MenuItem( "Fly" )
		  basemenu.AddMenu new MenuItem( "Fog Cloud" )
		  basemenu.AddMenu new MenuItem( "Forbiddance" )
		  basemenu.AddMenu new MenuItem( "Forcecage" )
		  basemenu.AddMenu new MenuItem( "Foresight" )
		  basemenu.AddMenu new MenuItem( "Freedom of Movement" )
		  basemenu.AddMenu new MenuItem( "Friends" )
		  basemenu.AddMenu new MenuItem( "Gaseous Form" )
		  basemenu.AddMenu new MenuItem( "Gate" )
		  basemenu.AddMenu new MenuItem( "Geas" )
		  basemenu.AddMenu new MenuItem( "Gentle Repose" )
		  basemenu.AddMenu new MenuItem( "Giant Insect" )
		  basemenu.AddMenu new MenuItem( "Glibness" )
		  basemenu.AddMenu new MenuItem( "Globe of Invulnerability" )
		  basemenu.AddMenu new MenuItem( "Glyph of Warding" )
		  basemenu.AddMenu new MenuItem( "Goodberry" )
		  basemenu.AddMenu new MenuItem( "Grasping Vine" )
		  basemenu.AddMenu new MenuItem( "Grease" )
		  basemenu.AddMenu new MenuItem( "Greater Invisibility" )
		  basemenu.AddMenu new MenuItem( "Greater Restoration" )
		  basemenu.AddMenu new MenuItem( "Guardian of Faith" )
		  basemenu.AddMenu new MenuItem( "Guards and Wards" )
		  basemenu.AddMenu new MenuItem( "Guidance" )
		  basemenu.AddMenu new MenuItem( "Guiding Bolt" )
		  basemenu.AddMenu new MenuItem( "Gust of Wind" )
		  basemenu.AddMenu new MenuItem( "Hail of Thorns" )
		  basemenu.AddMenu new MenuItem( "Hallow" )
		  basemenu.AddMenu new MenuItem( "Hallucinatory Terrain" )
		  basemenu.AddMenu new MenuItem( "Harm" )
		  basemenu.AddMenu new MenuItem( "Haste" )
		  basemenu.AddMenu new MenuItem( "Heal" )
		  basemenu.AddMenu new MenuItem( "Healing Word" )
		  basemenu.AddMenu new MenuItem( "Heat Metal" )
		  basemenu.AddMenu new MenuItem( "Hellish Rebuke" )
		  basemenu.AddMenu new MenuItem( "Heroes' Feast" )
		  basemenu.AddMenu new MenuItem( "Heroism" )
		  basemenu.AddMenu new MenuItem( "Hex" )
		  basemenu.AddMenu new MenuItem( "Hold Monster" )
		  basemenu.AddMenu new MenuItem( "Hold Person" )
		  basemenu.AddMenu new MenuItem( "Holy Aura" )
		  basemenu.AddMenu new MenuItem( "Hunger of Hadar" )
		  basemenu.AddMenu new MenuItem( "Hunter's Mark" )
		  basemenu.AddMenu new MenuItem( "Hypnotic Pattern" )
		  basemenu.AddMenu new MenuItem( "Ice Storm" )
		  basemenu.AddMenu new MenuItem( "Identify" )
		  basemenu.AddMenu new MenuItem( "Illusory Script" )
		  basemenu.AddMenu new MenuItem( "Imprisonment" )
		  basemenu.AddMenu new MenuItem( "Incendiary Cloud" )
		  basemenu.AddMenu new MenuItem( "Inflict Wounds" )
		  basemenu.AddMenu new MenuItem( "Insect Plague" )
		  basemenu.AddMenu new MenuItem( "Invisibility" )
		  basemenu.AddMenu new MenuItem( "Jump" )
		  basemenu.AddMenu new MenuItem( "Knock" )
		  basemenu.AddMenu new MenuItem( "Legend Lore" )
		  basemenu.AddMenu new MenuItem( "Leomund's Secret Chest" )
		  basemenu.AddMenu new MenuItem( "Leomund's Tiny Hut" )
		  basemenu.AddMenu new MenuItem( "Lesser Restoration" )
		  basemenu.AddMenu new MenuItem( "Levitate" )
		  basemenu.AddMenu new MenuItem( "Light" )
		  basemenu.AddMenu new MenuItem( "Lightning Arrow" )
		  basemenu.AddMenu new MenuItem( "Lightning Bolt" )
		  basemenu.AddMenu new MenuItem( "Locate Animals or Plants" )
		  basemenu.AddMenu new MenuItem( "Locate Creature" )
		  basemenu.AddMenu new MenuItem( "Locate Object" )
		  basemenu.AddMenu new MenuItem( "Longstrider" )
		  basemenu.AddMenu new MenuItem( "Mage Armor" )
		  basemenu.AddMenu new MenuItem( "Mage Hand" )
		  basemenu.AddMenu new MenuItem( "Magic Circle" )
		  basemenu.AddMenu new MenuItem( "Magic Jar" )
		  basemenu.AddMenu new MenuItem( "Magic Missile" )
		  basemenu.AddMenu new MenuItem( "Magic Mouth" )
		  basemenu.AddMenu new MenuItem( "Magic Weapon" )
		  basemenu.AddMenu new MenuItem( "Major Image" )
		  basemenu.AddMenu new MenuItem( "Mass Cure Wounds" )
		  basemenu.AddMenu new MenuItem( "Mass Heal" )
		  basemenu.AddMenu new MenuItem( "Mass Healing Word" )
		  basemenu.AddMenu new MenuItem( "Mass Suggestion" )
		  basemenu.AddMenu new MenuItem( "Maze" )
		  basemenu.AddMenu new MenuItem( "Meld Into Stone" )
		  basemenu.AddMenu new MenuItem( "Melf's Acid Arrow" )
		  basemenu.AddMenu new MenuItem( "Mending" )
		  basemenu.AddMenu new MenuItem( "Message" )
		  basemenu.AddMenu new MenuItem( "Meteor Swarm" )
		  basemenu.AddMenu new MenuItem( "Mind Blank" )
		  basemenu.AddMenu new MenuItem( "Minor Illusion" )
		  basemenu.AddMenu new MenuItem( "Mirage Arcane" )
		  basemenu.AddMenu new MenuItem( "Mirror Image" )
		  basemenu.AddMenu new MenuItem( "Mislead" )
		  basemenu.AddMenu new MenuItem( "Misty Step" )
		  basemenu.AddMenu new MenuItem( "Modify Memory" )
		  basemenu.AddMenu new MenuItem( "Moonbeam" )
		  basemenu.AddMenu new MenuItem( "Mordenkainen's Faithful Hound" )
		  basemenu.AddMenu new MenuItem( "Mordenkainen's Magnificent Mansion" )
		  basemenu.AddMenu new MenuItem( "Mordenkainen's Private Sanctum" )
		  basemenu.AddMenu new MenuItem( "Mordenkainen's Sword" )
		  basemenu.AddMenu new MenuItem( "Move Earth" )
		  basemenu.AddMenu new MenuItem( "Nondetection" )
		  basemenu.AddMenu new MenuItem( "Nystul's Magic Aura" )
		  basemenu.AddMenu new MenuItem( "Otiluke's Freezing Sphere" )
		  basemenu.AddMenu new MenuItem( "Otiluke's Resilient Sphere" )
		  basemenu.AddMenu new MenuItem( "Otto's Irresistible Dance" )
		  basemenu.AddMenu new MenuItem( "Pass Without Trace" )
		  basemenu.AddMenu new MenuItem( "Passwall" )
		  basemenu.AddMenu new MenuItem( "Phantasmal Force" )
		  basemenu.AddMenu new MenuItem( "Phantasmal Killer" )
		  basemenu.AddMenu new MenuItem( "Phantom Steed" )
		  basemenu.AddMenu new MenuItem( "Planar Ally" )
		  basemenu.AddMenu new MenuItem( "Planar Binding" )
		  basemenu.AddMenu new MenuItem( "Plane Shift" )
		  basemenu.AddMenu new MenuItem( "Plant Growth" )
		  basemenu.AddMenu new MenuItem( "Poison Spray" )
		  basemenu.AddMenu new MenuItem( "Polymorph" )
		  basemenu.AddMenu new MenuItem( "Power Word Heal" )
		  basemenu.AddMenu new MenuItem( "Power Word Kill" )
		  basemenu.AddMenu new MenuItem( "Power Word Stun" )
		  basemenu.AddMenu new MenuItem( "Prayer of Healing" )
		  basemenu.AddMenu new MenuItem( "Prestidigitation" )
		  basemenu.AddMenu new MenuItem( "Prismatic Spray" )
		  basemenu.AddMenu new MenuItem( "Prismatic Wall" )
		  basemenu.AddMenu new MenuItem( "Produce Flame" )
		  basemenu.AddMenu new MenuItem( "Programmed Illusion" )
		  basemenu.AddMenu new MenuItem( "Project Image" )
		  basemenu.AddMenu new MenuItem( "Protection from Energy" )
		  basemenu.AddMenu new MenuItem( "Protection from Evil and Good" )
		  basemenu.AddMenu new MenuItem( "Protection from Poison" )
		  basemenu.AddMenu new MenuItem( "Purify Food and Drink" )
		  basemenu.AddMenu new MenuItem( "Raise Dead" )
		  basemenu.AddMenu new MenuItem( "Rary's Telepathic Bond" )
		  basemenu.AddMenu new MenuItem( "Ray of Enfeeblement" )
		  basemenu.AddMenu new MenuItem( "Ray of Frost" )
		  basemenu.AddMenu new MenuItem( "Ray of Sickness" )
		  basemenu.AddMenu new MenuItem( "Regenerate" )
		  basemenu.AddMenu new MenuItem( "Reincarnate" )
		  basemenu.AddMenu new MenuItem( "Remove Curse" )
		  basemenu.AddMenu new MenuItem( "Resistance" )
		  basemenu.AddMenu new MenuItem( "Resurrection" )
		  basemenu.AddMenu new MenuItem( "Reverse Gravity" )
		  basemenu.AddMenu new MenuItem( "Revivify" )
		  basemenu.AddMenu new MenuItem( "Rope Trick" )
		  basemenu.AddMenu new MenuItem( "Sacred Flame" )
		  basemenu.AddMenu new MenuItem( "Sanctuary" )
		  basemenu.AddMenu new MenuItem( "Scorching Ray" )
		  basemenu.AddMenu new MenuItem( "Scrying" )
		  basemenu.AddMenu new MenuItem( "Searing Smite" )
		  basemenu.AddMenu new MenuItem( "See Invisibility" )
		  basemenu.AddMenu new MenuItem( "Seeming" )
		  basemenu.AddMenu new MenuItem( "Sending" )
		  basemenu.AddMenu new MenuItem( "Sequester" )
		  basemenu.AddMenu new MenuItem( "Shapechange" )
		  basemenu.AddMenu new MenuItem( "Shatter" )
		  basemenu.AddMenu new MenuItem( "Shield" )
		  basemenu.AddMenu new MenuItem( "Shield of Faith" )
		  basemenu.AddMenu new MenuItem( "Shillelagh" )
		  basemenu.AddMenu new MenuItem( "Shocking Grasp" )
		  basemenu.AddMenu new MenuItem( "Silence" )
		  basemenu.AddMenu new MenuItem( "Silent Image" )
		  basemenu.AddMenu new MenuItem( "Simulacrum" )
		  basemenu.AddMenu new MenuItem( "Sleep" )
		  basemenu.AddMenu new MenuItem( "Sleet Storm" )
		  basemenu.AddMenu new MenuItem( "Slow" )
		  basemenu.AddMenu new MenuItem( "Spare the Dying" )
		  basemenu.AddMenu new MenuItem( "Speak With Animals" )
		  basemenu.AddMenu new MenuItem( "Speak With Dead" )
		  basemenu.AddMenu new MenuItem( "Speak With Plants" )
		  basemenu.AddMenu new MenuItem( "Spider Climb" )
		  basemenu.AddMenu new MenuItem( "Spike Growth" )
		  basemenu.AddMenu new MenuItem( "Spirit Guardians" )
		  basemenu.AddMenu new MenuItem( "Spiritual Weapon" )
		  basemenu.AddMenu new MenuItem( "Staggering Smite" )
		  basemenu.AddMenu new MenuItem( "Stinking Cloud" )
		  basemenu.AddMenu new MenuItem( "Stone Shape" )
		  basemenu.AddMenu new MenuItem( "Stoneskin" )
		  basemenu.AddMenu new MenuItem( "Storm of Vengeance" )
		  basemenu.AddMenu new MenuItem( "Suggestion" )
		  basemenu.AddMenu new MenuItem( "Sunbeam" )
		  basemenu.AddMenu new MenuItem( "Sunburst" )
		  basemenu.AddMenu new MenuItem( "Swift Quiver" )
		  basemenu.AddMenu new MenuItem( "Symbol" )
		  basemenu.AddMenu new MenuItem( "Tasha's Hideous Laughter" )
		  basemenu.AddMenu new MenuItem( "Telekinesis" )
		  basemenu.AddMenu new MenuItem( "Telepathy" )
		  basemenu.AddMenu new MenuItem( "Teleport" )
		  basemenu.AddMenu new MenuItem( "Teleportation Circle" )
		  basemenu.AddMenu new MenuItem( "Tenser's Floating Disk" )
		  basemenu.AddMenu new MenuItem( "Thaumaturgy" )
		  basemenu.AddMenu new MenuItem( "Thorn Whip" )
		  basemenu.AddMenu new MenuItem( "Thunderous Smite" )
		  basemenu.AddMenu new MenuItem( "Thunderwave" )
		  basemenu.AddMenu new MenuItem( "Time Stop" )
		  basemenu.AddMenu new MenuItem( "Tongues" )
		  basemenu.AddMenu new MenuItem( "Transport via Plants" )
		  basemenu.AddMenu new MenuItem( "Tree Stride" )
		  basemenu.AddMenu new MenuItem( "True Polymorph" )
		  basemenu.AddMenu new MenuItem( "True Resurrection" )
		  basemenu.AddMenu new MenuItem( "True Seeing" )
		  basemenu.AddMenu new MenuItem( "True Strike" )
		  basemenu.AddMenu new MenuItem( "Tsunami" )
		  basemenu.AddMenu new MenuItem( "Unseen Servant" )
		  basemenu.AddMenu new MenuItem( "Vampiric Touch" )
		  basemenu.AddMenu new MenuItem( "Vicious Mockery" )
		  basemenu.AddMenu new MenuItem( "Wall of Fire" )
		  basemenu.AddMenu new MenuItem( "Wall of Force" )
		  basemenu.AddMenu new MenuItem( "Wall of Ice" )
		  basemenu.AddMenu new MenuItem( "Wall of Stone" )
		  basemenu.AddMenu new MenuItem( "Wall of Thorns" )
		  basemenu.AddMenu new MenuItem( "Warding Bond" )
		  basemenu.AddMenu new MenuItem( "Water Breathing" )
		  basemenu.AddMenu new MenuItem( "Water Walk" )
		  basemenu.AddMenu new MenuItem( "Web" )
		  basemenu.AddMenu new MenuItem( "Weird" )
		  basemenu.AddMenu new MenuItem( "Wind Walk" )
		  basemenu.AddMenu new MenuItem( "Wind Wall" )
		  basemenu.AddMenu new MenuItem( "Wish" )
		  basemenu.AddMenu new MenuItem( "Witch Bolt" )
		  basemenu.AddMenu new MenuItem( "Word of Recall" )
		  basemenu.AddMenu new MenuItem( "Wrathful Smite" )
		  basemenu.AddMenu new MenuItem( "Zone of Truth" )
		  
		  basemenu.AddMenu new MenuItem("-")
		  // Tasha's Cauldron of Everything (TCE)
		  basemenu.AddMenu NewMenuItem( "Tasha's Cauldron of Everything (TCE)", Nil, False)
		  basemenu.AddMenu new MenuItem( "Blade of Disaster" )
		  basemenu.AddMenu new MenuItem( "Booming Blade" )
		  basemenu.AddMenu new MenuItem( "Dream of the Blue Veil" )
		  basemenu.AddMenu new MenuItem( "Green-Flame Blade" )
		  basemenu.AddMenu new MenuItem( "Intellect Fortress" )
		  basemenu.AddMenu new MenuItem( "Lightning Lure" )
		  basemenu.AddMenu new MenuItem( "Mind Sliver" )
		  basemenu.AddMenu new MenuItem( "Spirit Shroud" )
		  basemenu.AddMenu new MenuItem( "Summon Aberration" )
		  basemenu.AddMenu new MenuItem( "Summon Beast" )
		  basemenu.AddMenu new MenuItem( "Summon Celestial" )
		  basemenu.AddMenu new MenuItem( "Summon Construct" )
		  basemenu.AddMenu new MenuItem( "Summon Elemental" )
		  basemenu.AddMenu new MenuItem( "Summon Fey" )
		  basemenu.AddMenu new MenuItem( "Summon Fiend" )
		  basemenu.AddMenu new MenuItem( "Summon Shadowspawn" )
		  basemenu.AddMenu new MenuItem( "Summon Undead" )
		  basemenu.AddMenu new MenuItem( "Sword Burst" )
		  basemenu.AddMenu new MenuItem( "Tasha's Caustic Brew" )
		  basemenu.AddMenu new MenuItem( "Tasha's Mind Whip" )
		  basemenu.AddMenu new MenuItem( "Tasha's Otherworldly Guise" )
		  
		  basemenu.AddMenu new MenuItem("-")
		  // Xanathar's Guide to Everything (XGE)
		  basemenu.AddMenu NewMenuItem( "Xanathar's Guide to Everything (XGE)", Nil, False)
		  basemenu.AddMenu new MenuItem( "Abi-Dalzim's Horrid Wilting" )
		  basemenu.AddMenu new MenuItem( "Absorb Elements" )
		  basemenu.AddMenu new MenuItem( "Aganazzar's Scorcher" )
		  basemenu.AddMenu new MenuItem( "Beast Bond" )
		  basemenu.AddMenu new MenuItem( "Bones of the Earth" )
		  basemenu.AddMenu new MenuItem( "Catapult" )
		  basemenu.AddMenu new MenuItem( "Catnap" )
		  basemenu.AddMenu new MenuItem( "Cause Fear" )
		  basemenu.AddMenu new MenuItem( "Ceremony" )
		  basemenu.AddMenu new MenuItem( "Chaos Bolt" )
		  basemenu.AddMenu new MenuItem( "Charm Monster" )
		  basemenu.AddMenu new MenuItem( "Control Flames" )
		  basemenu.AddMenu new MenuItem( "Control Winds" )
		  basemenu.AddMenu new MenuItem( "Create Bonfire" )
		  basemenu.AddMenu new MenuItem( "Create Homunculus" )
		  basemenu.AddMenu new MenuItem( "Crown of Stars" )
		  basemenu.AddMenu new MenuItem( "Danse Macabre" )
		  basemenu.AddMenu new MenuItem( "Dawn" )
		  basemenu.AddMenu new MenuItem( "Dragon's Breath" )
		  basemenu.AddMenu new MenuItem( "Druid Grove" )
		  basemenu.AddMenu new MenuItem( "Dust Devil" )
		  basemenu.AddMenu new MenuItem( "Earth Tremor" )
		  basemenu.AddMenu new MenuItem( "Earthbind" )
		  basemenu.AddMenu new MenuItem( "Elemental Bane" )
		  basemenu.AddMenu new MenuItem( "Enemies Abound" )
		  basemenu.AddMenu new MenuItem( "Enervation" )
		  basemenu.AddMenu new MenuItem( "Erupting Earth" )
		  basemenu.AddMenu new MenuItem( "Far Step" )
		  basemenu.AddMenu new MenuItem( "Find Greater Steed" )
		  basemenu.AddMenu new MenuItem( "Flame Arrows" )
		  basemenu.AddMenu new MenuItem( "Frostbite" )
		  basemenu.AddMenu new MenuItem( "Guardian of Nature" )
		  basemenu.AddMenu new MenuItem( "Gust" )
		  basemenu.AddMenu new MenuItem( "Healing Spirit" )
		  basemenu.AddMenu new MenuItem( "Holy Weapon" )
		  basemenu.AddMenu new MenuItem( "Ice Knife" )
		  basemenu.AddMenu new MenuItem( "Illusory Dragon" )
		  basemenu.AddMenu new MenuItem( "Immolation" )
		  basemenu.AddMenu new MenuItem( "Infernal Calling" )
		  basemenu.AddMenu new MenuItem( "Infestation" )
		  basemenu.AddMenu new MenuItem( "Investiture of Flame" )
		  basemenu.AddMenu new MenuItem( "Investiture of Ice" )
		  basemenu.AddMenu new MenuItem( "Investiture of Stone" )
		  basemenu.AddMenu new MenuItem( "Investiture of Wind" )
		  basemenu.AddMenu new MenuItem( "Invulnerability" )
		  basemenu.AddMenu new MenuItem( "Life Transference" )
		  basemenu.AddMenu new MenuItem( "Maddening Darkness" )
		  basemenu.AddMenu new MenuItem( "Maelstrom" )
		  basemenu.AddMenu new MenuItem( "Magic Stone" )
		  basemenu.AddMenu new MenuItem( "Mass Polymorph" )
		  basemenu.AddMenu new MenuItem( "Maximilian's Earthen Grasp" )
		  basemenu.AddMenu new MenuItem( "Melf's Minute Meteors" )
		  basemenu.AddMenu new MenuItem( "Mental Prison" )
		  basemenu.AddMenu new MenuItem( "Mighty Fortress" )
		  basemenu.AddMenu new MenuItem( "Mind Spike" )
		  basemenu.AddMenu new MenuItem( "Mold Earth" )
		  basemenu.AddMenu new MenuItem( "Negative Energy Flood" )
		  basemenu.AddMenu new MenuItem( "Power Word Pain" )
		  basemenu.AddMenu new MenuItem( "Primal Savagery" )
		  basemenu.AddMenu new MenuItem( "Primordial Ward" )
		  basemenu.AddMenu new MenuItem( "Psychic Scream" )
		  basemenu.AddMenu new MenuItem( "Pyrotechnics" )
		  basemenu.AddMenu new MenuItem( "Scatter" )
		  basemenu.AddMenu new MenuItem( "Shadow Blade" )
		  basemenu.AddMenu new MenuItem( "Shadow of Moil" )
		  basemenu.AddMenu new MenuItem( "Shape Water" )
		  basemenu.AddMenu new MenuItem( "Sickening Radiance" )
		  basemenu.AddMenu new MenuItem( "Skill Empowerment" )
		  basemenu.AddMenu new MenuItem( "Skywrite" )
		  basemenu.AddMenu new MenuItem( "Snare" )
		  basemenu.AddMenu new MenuItem( "Snilloc's Snowball Swarm" )
		  basemenu.AddMenu new MenuItem( "Soul Cage" )
		  basemenu.AddMenu new MenuItem( "Steel Wind Strike" )
		  basemenu.AddMenu new MenuItem( "Storm Sphere" )
		  basemenu.AddMenu new MenuItem( "Summon Greater Demon" )
		  basemenu.AddMenu new MenuItem( "Summon Lesser Demons" )
		  basemenu.AddMenu new MenuItem( "Synaptic Static" )
		  basemenu.AddMenu new MenuItem( "Temple of the Gods" )
		  basemenu.AddMenu new MenuItem( "Tenser's Transformation" )
		  basemenu.AddMenu new MenuItem( "Thunder Step" )
		  basemenu.AddMenu new MenuItem( "Thunderclap" )
		  basemenu.AddMenu new MenuItem( "Tidal Wave" )
		  basemenu.AddMenu new MenuItem( "Tiny Servant" )
		  basemenu.AddMenu new MenuItem( "Toll the Dead" )
		  basemenu.AddMenu new MenuItem( "Transmute Rock" )
		  basemenu.AddMenu new MenuItem( "Vitriolic Sphere" )
		  basemenu.AddMenu new MenuItem( "Wall of Light" )
		  basemenu.AddMenu new MenuItem( "Wall of Sand" )
		  basemenu.AddMenu new MenuItem( "Wall of Water" )
		  basemenu.AddMenu new MenuItem( "Warding Wind" )
		  basemenu.AddMenu new MenuItem( "Watery Sphere" )
		  basemenu.AddMenu new MenuItem( "Whirlwind" )
		  basemenu.AddMenu new MenuItem( "Word of Radiance" )
		  basemenu.AddMenu new MenuItem( "Wrath of Nature" )
		  basemenu.AddMenu new MenuItem( "Zephyr Strike" )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ArchetypeFor(ClassName as String) As String
		  
		  Select case ClassName
		    
		  case "Artificer"
		    Return "Artificer Specialist"
		  case "Barbarian"
		    Return "Primal Path"
		  case "Bard"
		    Return "Bard College"
		  case "Blood Hunter"
		    Return "Blood Hunter Order"
		  case "Cleric"
		    Return "Divine Domain"
		  case "Druid"
		    Return "Druid Circle"
		  case "Fighter"
		    Return "Martial Archetype"
		  case "Illrigger"
		    Return "Diabolic Contract"
		  case "Monk"
		    Return "Monastic Tradition"
		  case "Paladin"
		    Return "Sacred Oath"
		  case "Ranger"
		    Return "Ranger Archetype"
		  case "Rogue"
		    Return "Roguish Archetype"
		  case "Sorcerer"
		    Return "Sorcerous Origin"
		  case "Warlock"
		    Return "Otherworldly Patron"
		  case "Wizard"
		    Return "Arcane Tradition"
		    
		  else
		    Return "Archetype"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Classes() As String()
		  Return Array( "Artificer", "Barbarian", "Bard", "Blood Hunter", "Cleric", "Druid", "Fighter", "Illrigger", "Monk", "Paladin", "Ranger", "Rogue", "Sorcerer", "Warlock", "Wizard" )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Environments() As String()
		  Return Array( "Arctic", "Coastal", "Desert", "Forest", "Grassland", "Hill", "Mountain", "Swamp", "Underdark", "Underwater", "Urban" )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Sizes() As String()
		  Return Array( "Tiny", "Small", "Medium", "Large", "Huge", "Gargantuan" )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Skills() As String()
		  Return Array( "Acrobatics", "Animal Handling", "Arcana", "Athletics", _
		  "Deception", _
		  "History", _
		  "Insight", "Intimidation", "Investigation", _
		  "Medicine", _
		  "Nature", _
		  "Perception", "Performance", "Persuasion", _
		  "Religion", _
		  "Sleight of Hand", "Stealth", "Survival" )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SpellSchools() As String()
		  Return Array( "Abjuration", "Conjuration", "Divination", "Enchantment", "Evocation", "Illusion", "Necromancy", "Transmutation" )
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
