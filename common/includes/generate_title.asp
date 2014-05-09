<%

'This function will take a particular level, traverse it, and output the appropriate HTML
Public Sub traverseTitleNodes(ByRef Nodes, ByVal level, ByRef titleString) 
	Dim xNode 'As MSXML.IXMLDOMNode
	
	level = level + 1

	For Each xNode in Nodes
		if xNode.nodeTypeString = "element" Then
			

			if xNode.tagName = "node" Then ' we have something that contains other items
			
				If xNode.hasChildNodes Then 'We have children - put them in their own UL
					
					traverseTitleNodes xNode.childNodes, level, titleString
				
					Exit For
				End if

			ElseIf xNode.tagName = "leaf" Then

				if xNode.getAttribute("href") = currentScript Then
					 conditionalTitle = xNode.getAttribute("title")', xNode.getAttribute("value")) 

					if isNull(conditionalTitle) Then
						titleString = xNode.getAttribute("value")
					Else
						titleString	= conditionalTitle
					End if

					Exit For
				End If

			ElseIf xNode.tagName = "menu" Then
				
				if xNode.hasChildNodes Then
					traverseTitleNodes xNode.childNodes, level, titleString
				End If	
			
			End If 

		End If
	Next
End Sub


titleString = "Traditional values. Innovative ideas"
traverseTitleNodes xmlMenuData.childNodes, 0, titleString

%>