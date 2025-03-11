#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin SignProjectStep Sign
				  DeveloperID=Vianna van Bergen
				End
				Begin CopyFilesBuildStep CopyFilesToResources
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vUmVzb3VyY2VzL0Fzc2V0cy5jYXI=
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
#tag EndBuildAutomation
