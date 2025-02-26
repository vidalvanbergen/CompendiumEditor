#tag Module
Protected Module DiceCalculatorMethods
	#tag Method, Flags = &h1
		Protected Sub PrettifyMath(ByRef DisplayText as String)
		  DisplayText = PrettifyMath(DisplayText)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PrettifyMath(DisplayText as String) As String
		  DisplayText = DisplayText.ReplaceAll("+", " + ")
		  DisplayText = DisplayText.ReplaceAll("-", " − ")
		  DisplayText = DisplayText.ReplaceAll("x", " × ")
		  DisplayText = DisplayText.ReplaceAll("/", " ÷ ")
		  
		  DisplayText = DisplayText.ReplaceAll("o", "[Wo]") ' wo
		  DisplayText = DisplayText.ReplaceAll("w", "[W]") ' w
		  DisplayText = DisplayText.ReplaceAll("%10", "½LVL") ' LVL 1/2
		  DisplayText = DisplayText.ReplaceAll("%0", "SPELL") ' Spellcasting Ability
		  DisplayText = DisplayText.ReplaceAll("%1", "STR") ' STR MOD
		  DisplayText = DisplayText.ReplaceAll("%2", "DEX") ' DEX MOD
		  DisplayText = DisplayText.ReplaceAll("%3", "CON") ' CON MOD
		  DisplayText = DisplayText.ReplaceAll("%4", "INT") ' INT MOD
		  DisplayText = DisplayText.ReplaceAll("%5", "WIS") ' WIS MOD
		  DisplayText = DisplayText.ReplaceAll("%6", "CHA") ' CHA MOD
		  DisplayText = DisplayText.ReplaceAll("%7", "LVL") ' LVL
		  DisplayText = DisplayText.ReplaceAll("%8", "PROF") ' PROF
		  DisplayText = DisplayText.ReplaceAll("%9", "HP") ' current HP
		  
		  DisplayText = DisplayText.ReplaceAll( "  ", " " )
		  
		  Return DisplayText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SimplifyMath(ByRef DisplayText as String)
		  DisplayText = SimplifyMath(DisplayText)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SimplifyMath(DisplayText as String) As String
		  DisplayText = DisplayText.ReplaceAll("+", "+")
		  DisplayText = DisplayText.ReplaceAll("−", "-")
		  DisplayText = DisplayText.ReplaceAll("×", "x")
		  DisplayText = DisplayText.ReplaceAll("÷", "/")
		  
		  
		  DisplayText = DisplayText.ReplaceAll("SPELL", "%0") ' Spellcasting Ability
		  DisplayText = DisplayText.ReplaceAll("STR", "%1") ' STR MOD
		  DisplayText = DisplayText.ReplaceAll("DEX", "%2") ' DEX MOD
		  DisplayText = DisplayText.ReplaceAll("CON", "%3") ' CON MOD
		  DisplayText = DisplayText.ReplaceAll("INT", "%4") ' INT MOD
		  DisplayText = DisplayText.ReplaceAll("WIS", "%5") ' WIS MOD
		  DisplayText = DisplayText.ReplaceAll("CHA", "%6") ' CHA MOD
		  DisplayText = DisplayText.ReplaceAll("LVL", "%7") ' LVL
		  DisplayText = DisplayText.ReplaceAll("PROF", "%8") ' PROF
		  DisplayText = DisplayText.ReplaceAll("HP", "%9") ' current HP
		  DisplayText = DisplayText.ReplaceAll("½LVL", "%10") ' LVL 1/2
		  DisplayText = DisplayText.ReplaceAll("[Wo]", "o") ' 1wo
		  DisplayText = DisplayText.ReplaceAll("[W]", "w") ' 1w
		  
		  DisplayText = DisplayText.ReplaceAll(" ", "")
		  
		  Return DisplayText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SummonCalculator(DefaultCalculation as String = "", PrettyResults as Boolean = False) As String
		  Var win As New wndDiceCalc
		  win.DisplayText = PrettifyMath( DefaultCalculation )
		  win.StartRoll = PrettifyMath( DefaultCalculation )
		  win.ShowModal
		  
		  if PrettyResults then
		    Return win.DisplayText.Trim.ReplaceAll("  ", " ")
		  else
		    Return SimplifyMath( win.DisplayText ).Trim.ReplaceAll("  ", " ")
		  end if
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
