#tag Menu
Begin Menu MainMenubar
   Begin MenuItemFileMenu FileMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#MenuItemFileMenu.LocalizedText"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem FileSelectSourcesFolder
         SpecialMenu = 0
         Index = 1
         Text = "Add Source Folder"
         ShortcutKey = "O"
         Shortcut = "Cmd+O"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileRevealSource
         SpecialMenu = 0
         Index = -2147483648
         Text = "Reveal Source"
         ShortcutKey = "R"
         Shortcut = "Cmd+R"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator0
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileSaveFile
         SpecialMenu = 0
         Index = -2147483648
         Text = "Save File"
         ShortcutKey = "S"
         Shortcut = "Cmd+S"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator1
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin CocoaMenuItemClose FileClose
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemClose.LocalizedText"
         ShortcutKey = "W"
         Shortcut = "Cmd+W"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem MenuSeparator
         SpecialMenu = 0
         Index = 0
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin CocoaMenuItemPageSetup CocoaFilePageSetup
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemPageSetup.LocalizedText"
         ShortcutKey = "P"
         Shortcut = "Cmd+Shift+P"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin CocoaMenuItemPrint CocoaFilePrint
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemPrint.LocalizedText"
         ShortcutKey = "P"
         Shortcut = "Cmd+P"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem MenuSeparator
         SpecialMenu = 0
         Index = 1
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin QuitMenuItem FileQuit
         SpecialMenu = 0
         Index = -2147483648
         Text = "#App.kFileQuit"
         ShortcutKey = "#App.kFileQuitShortcut"
         Shortcut = "#App.kFileQuitShortcut"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItemEditMenu EditMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#MenuItemEditMenu.LocalizedText"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin CocoaMenuItemUndo EditUndo
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemUndo.LocalizedText"
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin CocoaMenuItemRedo EditRedo
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemRedo.LocalizedText"
         ShortcutKey = "Z"
         Shortcut = "Cmd+Shift+Z"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem MenuSeparator
         SpecialMenu = 0
         Index = 2
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin CocoaMenuItemCut EditCut
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemCut.LocalizedText"
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin CocoaMenuItemCopy EditCopy
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemCopy.LocalizedText"
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin CocoaMenuItemPaste EditPaste
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemPaste.LocalizedText"
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin CocoaMenuItemPasteAndMatchStyle EditPasteAndMatchStyle
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemPasteAndMatchStyle.LocalizedText"
         ShortcutKey = "V"
         Shortcut = "Cmd+Shift+Option+V"
         MenuModifier = True
         AltMenuModifier = True
         MacOptionKey = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin CocoaMenuItemDelete EditClear
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemDelete.LocalizedText"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin CocoaMenuItemComplete EditComplete
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemComplete.LocalizedText"
         ShortcutKey = "ESC"
         Shortcut = "Option+ESC"
         MacOptionKey = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin CocoaMenuItemSelectAll EditSelectAll
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemSelectAll.LocalizedText"
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem MenuSeparator
         SpecialMenu = 0
         Index = 3
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin CocoaMenuItemInsert EditInsert
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemInsert.LocalizedText"
         AutoEnabled = False
         AutoEnable = False
         SubMenu = True
         Visible = True
         Begin CocoaMenuItemInsertLineBreak InsertLineBreak
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemInsertLineBreak.LocalizedText"
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemInsertParagraphBreak InsertParagraphBreak
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemInsertParagraphBreak.LocalizedText"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin CocoaMenuItemInsertPageBreak InsertPageBreak
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemInsertPageBreak.LocalizedText"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
      End
      Begin CocoaMenuItemEditLink EditEditLink
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemEditLink.LocalizedText"
         ShortcutKey = "K"
         Shortcut = "Cmd+K"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem MenuSeparator
         SpecialMenu = 0
         Index = 4
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin CocoaMenuItemFindParent EditFind
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemFindParent.LocalizedText"
         AutoEnabled = False
         AutoEnable = False
         SubMenu = True
         Visible = True
         Begin CocoaMenuItemFind FindFind
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemFind.LocalizedText"
            ShortcutKey = "F"
            Shortcut = "Cmd+F"
            MenuModifier = True
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemFindNext FindFindNext
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemFindNext.LocalizedText"
            ShortcutKey = "G"
            Shortcut = "Cmd+G"
            MenuModifier = True
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemFindPrevious FindFindPrevious
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemFindPrevious.LocalizedText"
            ShortcutKey = "G"
            Shortcut = "Cmd+Shift+G"
            MenuModifier = True
            AltMenuModifier = True
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemUseSelectionForFind UntitledItem2
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemUseSelectionForFind.LocalizedText"
            ShortcutKey = "E"
            Shortcut = "Cmd+E"
            MenuModifier = True
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemJumpToSelection UntitledItem3
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemJumpToSelection.LocalizedText"
            ShortcutKey = "J"
            Shortcut = "Cmd+J"
            MenuModifier = True
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemSelectLine UntitledItem4
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemSelectLine.LocalizedText"
            ShortcutKey = "L"
            Shortcut = "Cmd+L"
            MenuModifier = True
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
      End
      Begin CocoaMenuItemEditSpelling EditSpellingandGrammar
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemEditSpelling.LocalizedText"
         AutoEnabled = False
         AutoEnable = False
         SubMenu = True
         Visible = True
         Begin CocoaMenuItemShowSpelling SpellingandGrammarShowSpellingandGrammar
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemShowSpelling.LocalizedText"
            ShortcutKey = ":"
            Shortcut = "Cmd+:"
            MenuModifier = True
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemCheckDocumentNow SpellingandGrammarCheckDocumentNow
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemCheckDocumentNow.LocalizedText"
            ShortcutKey = ";"
            Shortcut = "Cmd+;"
            MenuModifier = True
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin MenuItem MenuSeparator
            SpecialMenu = 0
            Index = 5
            Text = "-"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin CocoaMenuItemCheckSpellingWhileTyping SpellingandGrammarCheckSpellingWhileTyping
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemCheckSpellingWhileTyping.LocalizedText"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin CocoaMenuItemCheckGrammarWithSpelling SpellingandGrammarCheckGrammarWithSpelling
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemCheckGrammarWithSpelling.LocalizedText"
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemCorrectSpelling SpellingandGrammarCorrectSpellingAutomatically
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemCorrectSpelling.LocalizedText"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
      End
      Begin CocoaMenuItemEditSubstitutions EditSubstitutions
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemEditSubstitutions.LocalizedText"
         AutoEnabled = False
         AutoEnable = False
         SubMenu = True
         Visible = True
         Begin CocoaMenuItemShowSubstitutions SubstitutionsShowSubstitutions
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemShowSubstitutions.LocalizedText"
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin MenuItem MenuSeparator
            SpecialMenu = 0
            Index = 6
            Text = "-"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin CocoaMenuItemSmartCopyPaste SubstitutionsSmartCopyPaste
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemSmartCopyPaste.LocalizedText"
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemSmartQuotes SubstitutionsSmartQuotes
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemSmartQuotes.LocalizedText"
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemSmartDashes SubstitutionsSmartDashes
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemSmartDashes.LocalizedText"
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemSmartLinks SubstitutionsSmartLinks
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemSmartLinks.LocalizedText"
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemDataDetectors SubstitutionsDataDetectors
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemDataDetectors.LocalizedText"
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemTextReplacement SubstitutionsTextReplacement
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemTextReplacement.LocalizedText"
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
      End
      Begin CocoaMenuItemEditTransformations EditTransformations
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemEditTransformations.LocalizedText"
         AutoEnabled = False
         AutoEnable = False
         SubMenu = True
         Visible = True
         Begin CocoaMenuItemMakeUppercase TransformationsMakeUpperCase
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemMakeUppercase.LocalizedText"
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemMakeLowercase TransformationsMakeLowerCase
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemMakeLowercase.LocalizedText"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin CocoaMenuItemCapitalize TransformationsCapitalize
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemCapitalize.LocalizedText"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
      End
      Begin CocoaMenuItemEditSpeech EditSpeech
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemEditSpeech.LocalizedText"
         AutoEnabled = False
         AutoEnable = False
         SubMenu = True
         Visible = True
         Begin CocoaMenuItemStartSpeaking SpeechStartSpeaking
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemStartSpeaking.LocalizedText"
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
         Begin CocoaMenuItemStopSpeaking SpeechStopSpeaking
            SpecialMenu = 0
            Index = -2147483648
            Text = "#CocoaMenuItemStopSpeaking.LocalizedText"
            AutoEnabled = False
            AutoEnable = False
            Visible = True
         End
      End
   End
   Begin MenuItem CompendiumMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "Compendium"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem CompendiumEditSource
         SpecialMenu = 0
         Index = -2147483648
         Text = "Edit Source"
         ShortcutKey = "E"
         Shortcut = "Cmd+E"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem CompendiumCompileCompendium
         SpecialMenu = 0
         Index = 1
         Text = "Compile Compendium"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItemViewMenu ViewMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#MenuItemViewMenu.LocalizedText"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin CocoaMenuItemShowToolbar ViewToggleToolbar
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemShowToolbar.LocalizedTextShow"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin CocoaMenuItemCustomizeToolbar ViewCustomizeToolbar
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemCustomizeToolbar.LocalizedText"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem MenuSeparator
         SpecialMenu = 0
         Index = 16
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin CocoaMenuItemToggleFullscreen ViewToggleFullscreen
         SpecialMenu = 0
         Index = -2147483648
         Text = "#CocoaMenuItemToggleFullscreen.LocalizedTextEnterFullscreen"
         ShortcutKey = "F"
         Shortcut = "Cmd+Control+F"
         MenuModifier = True
         MacControlKey = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItemWindowMenu WindowMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#MenuItemWindowMenu.LocalizedText"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItemMinimize WindowMinimize
         SpecialMenu = 0
         Index = -2147483648
         Text = "#MenuItemMinimize.LocalizedText"
         ShortcutKey = "M"
         Shortcut = "Cmd+M"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItemZoom AppWindowMenuTitleZoom
         SpecialMenu = 0
         Index = -2147483648
         Text = "#MenuItemZoom.LocalizedText"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem MenuSeparator
         SpecialMenu = 0
         Index = 19
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItemBringAllToFront AppWindowMenuTitleBringAllToFront
         SpecialMenu = 0
         Index = -2147483648
         Text = "#MenuItemBringAllToFront.LocalizedText"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem MenuSeparator
         SpecialMenu = 0
         Index = 20
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItemHelpMenu HelpMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#MenuItemHelpMenu.LocalizedText"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItemAbout ApplicationAbout
         SpecialMenu = 0
         Index = -2147483648
         Text = "#MenuItemAbout.LocalizedText"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin ApplicationMenuItem MenuSeparator
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItemPreferences ApplicationPreferences
         SpecialMenu = 0
         Index = -2147483648
         Text = "#MenuItemPreferences.LocalizedText"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin ApplicationMenuItem MenuSeparator
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItemCheckForUpdates ApplicationCheckForUpdates
         SpecialMenu = 0
         Index = -2147483648
         Text = "#MenuItemCheckForUpdates.LocalizedText"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItemDonate ApplicationDonate
         SpecialMenu = 0
         Index = 0
         Text = "#MenuItemDonate.LocalizedText"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin HelpMenuItemSendFeedback HelpSendFeedback
         SpecialMenu = 0
         Index = -2147483648
         Text = "#HelpMenuItemSendFeedback.LocalizedText"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin HelpMenuItemVisitWebsite HelpVisitWebsite
         SpecialMenu = 0
         Index = 0
         Text = "#HelpMenuItemVisitWebsite.LocalizedText"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin HelpMenuItemDebug HelpDebug
         SpecialMenu = 0
         Index = -2147483648
         Text = "#HelpMenuItemDebug.LocalizedText"
         AutoEnabled = True
         AutoEnable = True
         Visible = False
      End
   End
End
#tag EndMenu
