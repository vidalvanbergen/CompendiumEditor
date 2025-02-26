#tag Class
Protected Class rhChart
	#tag Method, Flags = &h0
		Function chartColumn(picWidth As Integer, picHeight As Integer, chartTitle As String, yMinScale As Double, yMaxScale As Double, yScaleSpacing as Double, dataItem() As Double, dataLabel() As String, dataLegend() As String, dataColor() As Color, textOrientation As Integer, gridStyle as Integer, bgColor as Color) As Picture
		  
		  ' enable GDI +
		  App.UseGDIPlus = True
		  
		  ' Draw Picture Width & Height
		  dim pic as new Picture (picWidth, picHeight, 32)
		  
		  ' Background Color
		  drawBackgroundColor(pic, bgColor, picWidth, picHeight)
		  
		  ' Chart Title
		  drawChartTitle(pic, chartTitle, picWidth)
		  
		  ' Draw Grid
		  drawYGrid(pic, picWidth, picHeight, yMinScale, yMaxScale, yScaleSpacing, dataLabel, dataLegend, textOrientation, gridStyle)
		  
		  ' Draw Labels
		  drawXGrid1(pic, picWidth, picHeight, dataItem, dataLabel, textOrientation, gridStyle)
		  
		  ' Draw Legend
		  drawLegend(pic, picWidth, dataLegend, dataColor)
		  
		  ' Draw Column
		  drawColumn(pic, picWidth, picHeight, yMinScale, yMaxScale, dataItem, dataLabel, dataColor)
		  
		  ' disable GDI+
		  App.UseGDIPlus = False
		  
		  ' Return picture to canvas
		  Return pic
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function chartLine1(picWidth As Integer, picHeight As Integer, chartTitle As String, yMinScale As Double, yMaxScale As Double, yScaleSpacing as Double, dataItem() As Double, dataLabel() As String, dataLegend() As String, dataColor() As Color, textOrientation As Integer, gridStyle as Integer, bgColor as Color) As Picture
		  
		  ' enable GDI +
		  App.UseGDIPlus = True
		  
		  ' Draw Picture Width & Height
		  dim pic as new Picture (picWidth, picHeight, 32)
		  
		  ' Background Color
		  drawBackgroundColor(pic, bgColor, picWidth, picHeight)
		  
		  ' Chart Title
		  drawChartTitle(pic, chartTitle, picWidth)
		  
		  ' Draw Grid
		  drawYGrid(pic, picWidth, picHeight, yMinScale, yMaxScale, yScaleSpacing, dataLabel, dataLegend, textOrientation, gridStyle)
		  
		  ' Draw Labels
		  drawXGrid1(pic, picWidth, picHeight, dataItem, dataLabel, textOrientation, gridStyle)
		  
		  ' Draw Legend
		  drawLegend(pic, picWidth, dataLegend, dataColor)
		  
		  ' Draw Line
		  drawLine(pic, picWidth, yMinScale, yMaxScale, dataItem, dataLabel, dataColor)
		  
		  ' disable GDI+
		  App.UseGDIPlus = False
		  
		  ' Return picture to canvas
		  Return pic
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function chartLine2(picWidth As Integer, picHeight As Integer, chartTitle As String, yMinScale As Double, yMaxScale As Double, yScaleSpacing as Double, dataItem() As Double, dataLabel() As String, dataLegend() As String, dataColor() As Color, textOrientation As Integer, gridStyle as Integer, bgColor as Color) As Picture
		  
		  ' enable GDI +
		  App.UseGDIPlus = True
		  
		  ' Draw Picture Width & Height
		  dim pic as new Picture (picWidth, picHeight, 32)
		  
		  ' Background Color
		  drawBackgroundColor(pic, bgColor, picWidth, picHeight)
		  
		  ' Chart Title
		  drawChartTitle(pic, chartTitle, picWidth)
		  
		  ' Draw Grid
		  drawYGrid(pic, picWidth, picHeight, yMinScale, yMaxScale, yScaleSpacing, dataLabel, dataLegend, textOrientation, gridStyle)
		  
		  ' Draw Labels
		  drawXGrid2(pic, picWidth, picHeight, dataItem, dataLabel, textOrientation, gridStyle)
		  
		  ' Draw Legend
		  drawLegend(pic, picWidth, dataLegend, dataColor)
		  
		  ' Draw Line
		  drawLine(pic, picWidth, yMinScale, yMaxScale, dataItem, dataLabel, dataColor)
		  
		  ' disable GDI+
		  App.UseGDIPlus = False
		  
		  ' Return picture to canvas
		  Return pic
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawBackgroundColor(pic As Picture, bgColor as Color, picWidth As Integer, picHeight As Integer)
		  
		  dim bgShape As new RectShape
		  
		  bgShape.X = picWidth / 2 - 5
		  bgShape.Y = picHeight / 2 - 5
		  bgShape.Width = picWidth + 10
		  bgShape.Height = picHeight + 10
		  bgShape.FillColor = bgColor
		  
		  pic.Graphics.DrawObject bgShape
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawChartTitle(pic As Picture, chartTitle As String, picWidth As Integer)
		  
		  ' Chart Title
		  dim chartTitleText As New StringShape
		  
		  chartTitleText.Text = chartTitle
		  chartTitleText.TextFont = "Helvetica"
		  chartTitleText.TextSize = 16
		  chartTitleText.Bold= True
		  chartTitleText.X = picWidth / 2
		  chartTitleText.Y = 20
		  chartTitleText.HorizontalAlignment = StringShape.Alignment.Center
		  
		  pic.Graphics.DrawObject chartTitleText
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawColumn(pic As Picture, picWidth As Integer, picHeight As Integer, yMinScale As Double, yMaxScale As Double, dataItem() As Double, dataLabel() As String, dataColor() As Color)
		  
		  dim barHeight, barWidth, barSectionWidth, barPosition, barSpacing As Double
		  dim barCount, barSectionSpacing, startCount, endCount, firstCount As Integer
		  dim bar As new RectShape
		  
		  startCount = 0
		  endCount = ((dataItem.Ubound+1) / (dataColor.Ubound+1)) - 1
		  
		  barSpacing = (((picWidth - yStartPosition - yEndPosition)  / (dataLabel.Ubound+1)))
		  barWidth = (((picWidth - yStartPosition - yEndPosition - 50)  / (dataLabel.Ubound+1)))
		  
		  barSectionWidth = (barWidth / (dataColor.Ubound+1))
		  barPosition = yStartPosition + (barSpacing / 2) - (barWidth / 2)
		  
		  for firstCount = 0 to dataColor.Ubound
		    for barCount = startCount to endCount
		      
		      barHeight = (((dataItem(barCount) - yMinScale) * (gridBottom - gridTop) / (yMaxScale - yMinScale))) * -1
		      
		      bar.FillColor  = dataColor(firstCount)
		      bar.Width = barSectionWidth
		      bar.Height = barHeight
		      
		      bar.X = barPosition + (barSectionWidth / 2)
		      bar.Y = gridBottom + (barHeight / 2)
		      
		      bar.Border = 100
		      bar.BorderWidth = 1
		      
		      pic.Graphics.DrawObject bar
		      
		      barPosition = barPosition + barSpacing
		      
		    next
		    
		    startCount = startCount + (dataItem.Ubound + 1) / (dataColor.Ubound + 1)
		    endCount = endCount + (dataItem.Ubound + 1) / (dataColor.Ubound + 1)
		    
		    barSectionSpacing = barSectionSpacing + barSectionWidth
		    barPosition = yStartPosition + (barSpacing / 2) - (barWidth / 2) + barSectionSpacing
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawLegend(pic As Picture, picWidth As Integer, dataLegend() As String, dataColor() As Color)
		  
		  dim legendRow, legendCount as Integer
		  dim legendRect as new RectShape
		  dim legendText as new StringShape
		  
		  if dataLegend is nil then Exit
		  
		  legendRow = 34
		  
		  for legendCount = 0 to dataLegend.Ubound
		    
		    legendRect.FillColor = dataColor(legendCount)
		    legendRect.Width = 8
		    legendRect.Height = 8
		    legendRect.Border = 100
		    legendRect.BorderWidth = 1
		    legendRect.X = picWidth - yEndPosition + 14
		    legendRect.Y = legendRow
		    
		    legendText.Text = dataLegend(legendCount)
		    legendText.TextFont = "Helvetica"
		    legendText.Bold = False
		    legendText.TextSize = 12
		    legendText.X = picWidth - yEndPosition + 25
		    legendText.Y = legendRow + 5
		    legendText.HorizontalAlignment = StringShape.Alignment.Left
		    
		    pic.Graphics.DrawObject legendRect
		    pic.Graphics.DrawObject legendText
		    
		    legendRow = legendRow + 20
		    
		    
		  next
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawLine(pic As Picture, picWidth As Integer, yMinScale As Double, yMaxScale As Double, dataItem() As Double, dataLabel() As String, dataColor() As Color)
		  
		  dim startPosition, endPosition, startLineHeight, endLineHeight, lineSpacing as Double
		  dim startCount, endCount, firstCount, secondCount as integer
		  
		  startCount = 0
		  endCount = ((dataItem.Ubound+1) / (dataColor.Ubound+1))
		  
		  for firstCount = 0 to dataColor.Ubound
		    lineSpacing = (((picWidth - yStartPosition - yEndPosition)  / (dataLabel.Ubound+1)))
		    startPosition = yStartPosition  + (lineSpacing/2)
		    
		    for secondCount = startCount to (endCount-1)
		      
		      if secondCount <> (endCount-1) then ' Draw Points
		        
		        startLineHeight = (gridBottom - gridTop) - (((dataItem(secondCount) - yMinScale) * (gridBottom - gridTop) / (yMaxScale - yMinScale))) + gridTop
		        endLineHeight = (gridBottom - gridTop) - (((dataItem(secondCount+1) - yMinScale) * (gridBottom - gridTop) / (yMaxScale - yMinScale))) + gridTop
		        
		        endPosition = startPosition + (lineSpacing)
		        
		        ' Draw Line
		        pic.Graphics.ForeColor = dataColor(firstCount)
		        pic.Graphics.PenWidth = 5
		        pic.Graphics.DrawLine(startPosition - 2,startLineHeight,endPosition - 2,endLineHeight)
		        
		        'Draw Oval
		        pic.Graphics.FillRect(startPosition - 4, startLineHeight - 4, 9, 9)
		        pic.Graphics.FillRect(endPosition - 4, endLineHeight - 4, 9, 9)
		        
		        pic.Graphics.ForeColor = &c000000
		        pic.Graphics.PenWidth = 1
		        pic.Graphics.DrawRect(startPosition - 4, startLineHeight - 4, 9, 9)
		        pic.Graphics.DrawRect(endPosition - 4, endLineHeight - 4, 9, 9)
		        
		      end if
		      
		      startPosition = startPosition + (lineSpacing)
		      
		    next
		    
		    startCount = startCount + (dataItem.Ubound + 1) / (dataColor.Ubound + 1)
		    endCount = endCount + (dataItem.Ubound + 1) / (dataColor.Ubound + 1)
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawXGrid1(pic As Picture, picWidth As Integer, picHeight As Integer, dataItem() As Double, dataLabel() As String, textOrientation as Integer, gridStyle as Integer)
		  
		  dim startPosition, lineSpacing as Double
		  dim firstCount as integer
		  dim labelText as new StringShape
		  
		  lineSpacing = ((((picWidth-yEndPosition) - yStartPosition)  / (dataLabel.Ubound+1)))
		  startPosition = yStartPosition + (lineSpacing/2)
		  
		  for firstCount = 0 to dataItem.Ubound
		    
		    if firstCount < (dataLabel.Ubound+1) then ' Draw Ticks & Text
		      pic.Graphics.ForeColor = &c999999
		      pic.Graphics.PenWidth = 1
		      
		      if gridStyle >= 4 then ' column 
		        pic.Graphics.DrawLine(startPosition, 30, startPosition, (picHeight - labelHeightSpacing))
		        
		      else
		        pic.Graphics.DrawLine(startPosition, (picHeight - labelHeightSpacing + 5), startPosition, (picHeight - labelHeightSpacing))
		        
		      end if
		      
		      
		      if textOrientation = 0 then
		        labelText.X = startPosition
		        labelText.Rotation = 0
		        
		      else
		        labelText.X = startPosition + 4
		        labelText.Rotation = -90*0.0174532925
		        
		      end if
		      
		      labelText.Text = dataLabel(firstCount)
		      labelText.TextFont = "Helvetica"
		      labelText.Bold = False
		      labelText.TextSize = 12
		      labelText.Y = picHeight - labelHeightSpacing + 8
		      labelText.VerticalAlignment = StringShape.Alignment.Left
		      
		      pic.Graphics.DrawObject labelText
		      
		    end if
		    
		    startPosition = startPosition + (lineSpacing)
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawXGrid2(pic As Picture, picWidth As Integer, picHeight As Integer, dataItem() As Double, dataLabel() As String, textOrientation as Integer, gridStyle as Integer)
		  
		  dim startPosition, lineSpacing as Double
		  dim firstCount as integer
		  dim labelText as new StringShape
		  
		  lineSpacing = ((((picWidth-yEndPosition) - yStartPosition)  / (dataLabel.Ubound+1)))
		  startPosition = yStartPosition + (lineSpacing/2)
		  
		  for firstCount = 0 to dataItem.Ubound
		    
		    if firstCount < (dataLabel.Ubound+1) then ' Draw Ticks & Text
		      pic.Graphics.ForeColor = &c999999
		      pic.Graphics.PenWidth = 1
		      
		      if gridStyle >= 4 then ' column 
		        pic.Graphics.DrawLine(startPosition, 30, startPosition, (picHeight - labelHeightSpacing))
		        
		      else
		        pic.Graphics.DrawLine(startPosition, (picHeight - labelHeightSpacing + 5), startPosition, (picHeight - labelHeightSpacing))
		        
		      end if
		      
		      
		      if textOrientation = 0 then
		        labelText.X = startPosition
		        labelText.Rotation = 0
		        
		      else
		        labelText.X = startPosition + 4
		        labelText.Rotation = -90*0.0174532925
		        
		      end if
		      
		      labelText.Text = dataLabel(firstCount)
		      labelText.TextFont = "Helvetica"
		      labelText.Bold = False
		      labelText.TextSize = 12
		      labelText.Y = picHeight - labelHeightSpacing + 8
		      labelText.VerticalAlignment = StringShape.Alignment.Left
		      
		      pic.Graphics.DrawObject labelText
		      
		    end if
		    
		    startPosition = startPosition + (lineSpacing)
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawYGrid(pic as Picture, picWidth As Integer, picHeight As Integer, yMinScale As Double, yMaxScale As Double, yScaleSpacing As Double, dataLabel() as String, dataLegend() As String, textOrientation as Integer, gridStyle as Integer)
		  
		  dim scaleHeight, rowCount, rowIncrement, yScaleIncrement , yRangeIncrement, labelCount, legendCount as Double
		  dim rowText As New StringShape
		  
		  pic.Graphics.ForeColor = &C999999
		  
		  for legendCount = 0 to dataLegend.Ubound
		    
		    if dataLegend(legendCount).Len > yEndPosition then
		      yEndPosition = dataLegend(legendCount).Len
		      
		    end if
		    
		  next
		  
		  for labelCount = 0 to dataLabel.Ubound
		    
		    if dataLabel(labelCount).Len > labelHeightSpacing then
		      labelHeightSpacing = dataLabel(labelCount).Len
		      
		    end if
		    
		  next
		  
		  if textOrientation = 1 then
		    labelHeightSpacing = (labelHeightSpacing * 7) + 25
		    
		  else
		    labelHeightSpacing = 32
		    
		  end if
		  
		  yStartPosition = 10 + (str(yMaxScale).Len * 12)
		  yEndPosition = (yEndPosition * 7) + 25
		  
		  yRangeIncrement = (yMaxScale - yMinScale) / yScaleSpacing
		  scaleHeight = (picHeight - labelHeightSpacing)
		  gridBottom = scaleHeight
		  yScaleIncrement  = yMinScale
		  
		  for rowCount = 0 to yScaleSpacing
		    
		    if gridStyle >= 1 then
		      pic.Graphics.DrawLine(yStartPosition, scaleHeight, picWidth-yEndPosition, scaleHeight) ' Row Line
		      
		    end if
		    
		    rowText.Text = str(Ceil(yScaleIncrement *100)/100)
		    rowText.TextFont = "Helvetica"
		    rowText.TextSize = 12
		    rowText.Bold= False
		    rowText.X = 10
		    rowText.Y = (scaleHeight+5)
		    rowText.HorizontalAlignment = StringShape.Alignment.Left
		    pic.Graphics.DrawObject rowText
		    
		    if rowCount = yScaleSpacing then
		      
		      if gridStyle >= 2 then
		        pic.Graphics.DrawLine(yStartPosition, scaleHeight, yStartPosition, picHeight  - labelHeightSpacing) ' Left Side Line
		      end if
		      
		      if gridStyle >= 3 then
		        pic.Graphics.DrawLine(picWidth-yEndPosition, scaleHeight, picWidth-yEndPosition, picHeight  - labelHeightSpacing) ' Right Side Line
		      end if
		      
		    end if
		    
		    yScaleIncrement  = yScaleIncrement  + yRangeIncrement
		    rowIncrement = rowIncrement + ((picHeight - 30  - labelHeightSpacing) / yScaleSpacing)
		    scaleHeight = ((picHeight  - labelHeightSpacing) - rowIncrement)
		    
		  next
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private gridBottom As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private gridTop As Integer = 30
	#tag EndProperty

	#tag Property, Flags = &h21
		Private labelHeightSpacing As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private xEndPosition As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private xStartPosition As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private yEndPosition As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private yStartPosition As Integer
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
	#tag EndViewBehavior
End Class
#tag EndClass
