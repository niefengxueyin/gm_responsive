<%
'@file generate_menu.asp
'@author Blaize Kaye (Zoobiscuit)
' This will take the xml loaded in defaults.asp and generate a clean UL representing the menu

'This function will take a particular level, traverse it, and output the appropriate HTML
Public Sub traverseMenuNodes(ByRef Nodes, ByVal level, ByRef outputString) 'As MSXML.IXMLDOMNodeList, ByVal level as Integer)
	Dim xNode 'As MSXML.IXMLDOMNode
	
	level = level + 1

	For Each xNode in Nodes
		if xNode.nodeTypeString = "element" Then
			'response.write xNode.attributes

			if xNode.tagName = "node" Then ' we have something that contains other items
				outputString = outputString + "<li>"
				outputString = outputString + "<span>" + xNode.getAttribute("value") + "</span>"
			
				If xNode.hasChildNodes Then 'We have children - put them in their own UL

					extraAttribs = ""

					if level > 1 Then
						extraAttribs = "data-width-offset='51'" ' we add this to subsequent menus to get the width of the menu items right
					End If

					outputString = outputString + "<ul class='rmb-full-width rmb-menu-level-" + CStr(level) + "' " + extraAttribs + ">"

					if level > 0 Then ' if this isn't the first level, then we can plonk in the close button
						outputString = outputString + "<li class='menu-close'><span><img src='images/mobi/menu-close.png'></img></span></li>"
					End If

					TraverseMenuNodes xNode.childNodes, level, outputString
				
					outputString = outputString + "</ul>"
				End If

				outputString = outputString + "</li>"

			ElseIf xNode.tagName = "leaf" Then

				theLink = xNode.getAttribute("href")
				target = ""
				if InStr(theLink,"http://") > 0 or InStr(theLink,"https://") > 0 Then
					target = "target=""blank"""
				End If

				outputString = outputString + "<li>"
					outputString = outputString + "<a href='" + xNode.getAttribute("href") + "' " + target + ">"
						outputString = outputString + "<span>" + xNode.getAttribute("value") + "</span>"
					outputString = outputString + "</a>"
				outputString = outputString + "</li>"							

			ElseIf xNode.tagName = "menu" Then

				outputString = outputString + "<ul class='rmb-full-width rmb-menu-level-" + CStr(level) + "'>"
				
				if xNode.hasChildNodes Then
					TraverseMenuNodes xNode.childNodes, level, outputString
				End If
				
				outputString = outputString + "</ul>"

			Else

				
			
			End If ' end dealing with nodes

		End If


	Next
End Sub

menuString = ""
traverseMenuNodes xmlMenuData.childNodes, 0, menuString
%>