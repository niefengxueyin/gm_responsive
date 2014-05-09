<%
'@file generate_breadcrumb.asp
'@author Blaize Kaye (Zoobiscuit)
' This will take the xml loaded in defaults.asp and generate a breadcrumb for the current page


'Generates a standard looking link for the breadcrumb output
Function generateBreadcrumbLink(href,value)
	
	bcString =""

	if( value = "") Then
		bcString = ""

	ElseIf(href = "") Then 
		bcString = "<span class='bc2'>" + value + "</span>"
	Else
		bcString = "<a class='bc' href='" + href + "'>" + value + "</a>"
	End If
	
	generateBreadcrumbLink = bcString

End Function

'This function will take a particular level, traverse it, and output the appropriate HTML
' @return true if breadcrumb found, false otherwise
Public Sub traverseBCNodes(ByRef Nodes, ByVal level, ByRef breadcrumbStack, ByRef foundPage) 
	Dim xNode 'As MSXML.IXMLDOMNode
	
	level = level + 1

	if foundPage = true Then
		Exit Sub
	End if

	For Each xNode in Nodes
		if xNode.nodeTypeString = "element" Then
			

			if xNode.tagName = "node" Then ' we have something that contains other items
			
				If xNode.hasChildNodes Then 'We have children - put them in their own UL
					
					link = generateBreadcrumbLink("", xNode.getAttribute("value")) 

					bcAttr = xNode.getAttribute("breadcrumb")
					if(isNull(bcAttr)) Then
						push breadcrumbStack,  link' pop on my value in case one of my children is the present page
					Else
						push breadcrumbStack, "" 'generateBreadcrumbLink("","")
					End If

					
					traverseBCNodes xNode.childNodes, level, breadcrumbStack, foundPage
				
					if foundPage = false Then
						discarded = pop(breadcrumbStack)
					Else
						Exit For
					End if

				End If

			ElseIf xNode.tagName = "leaf" Then

				if xNode.getAttribute("href") = currentScript Then


					link = generateBreadcrumbLink(xNode.getAttribute("href"), xNode.getAttribute("value")) 

					push breadcrumbStack, link
					foundPage = true
					Exit For
				End If

			ElseIf xNode.tagName = "menu" Then
				

			
				push breadcrumbStack, generateBreadcrumbLink("/", "Home") 
				

				if xNode.hasChildNodes Then
					traverseBCNodes xNode.childNodes, level, breadcrumbStack, foundPage
				End If


			Else

				
			
			End If 

		End If
	Next
End Sub

redim breadcrumbStack(-1)
push breadcrumbStack, generateBreadcrumbLink("/", "Home") 
foundPage = false
traverseBCNodes xmlMenuData.childNodes, 0, breadcrumbStack, foundPage



If getUbound(breadcrumbStack) >= 0 Then


	' unwind the stack and build breadcrumb
	'response.write "Upper bound is " + CStr(getUbound(breadcrumbStack))
	loopCnt = getUbound(breadcrumbStack)
	firstRun = true
	
	Do While loopCnt > 0

		element = pop(breadcrumbStack)

		If firstRun = false and element <> "" Then
			breadcrumbString = "&nbsp;|&nbsp;" + breadcrumbString
		Else
			firstRun = false
		End If



		if element <> "" Then
		breadcrumbString = element + breadcrumbString
		End If
		'response.write(breadcrumbString)
		loopCnt = loopCnt - 1
	Loop

End If

%>