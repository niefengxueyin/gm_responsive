<%

'General includes
%>
<!--#include file="stack_ops.asp"-->
<%

'which directory in the wwwroot this instance of the app is installed on
virtualDirectory = "gm_responsive"

currentUrl ="http://" & Request.ServerVariables("SERVER_NAME") & Request.ServerVariables("URL")


' set default header strip
If headerStripImage = "" then
	headerStripImage = "images/header_strip/aboutGlance.jpg"
End If


'Grab the page name ONLY (no leading dirs, no params etc.)
currentScript = Request.ServerVariables("SCRIPT_NAME")
currentScript = Right(currentScript, Len(currentScript) - instrRev(currentScript, "/"))
if inStr(currentScript,"?") > 0 then
	currentScript = Left(currentScript,inStr(currentScript,"?") - 1)
End If


' load breadcrumb xml into memory (used for both menu and breadcrumb)
Dim xmlMenuData
Set xmlMenuData = Server.CreateObject("Microsoft.XMLDOM")
xmlMenuData.async = False

xmlMenuFile = Request.ServerVariables("APPL_PHYSICAL_PATH") + virtualDirectory + "\common\includes\menu.xml"

Dim xmlMenuFs 'Before anything else, we check the file exists
Set xmlMenuFs = Server.CreateObject("Scripting.FileSystemObject")

if xmlMenuFs.FileExists(xmlMenuFile) <> true then
	response.write "FILE DOES NOT EXIST: menu.xml cannot be loaded" 'TODO: perhaps throw 500?
end if

xmlMenuData.load xmlMenuFile

if xmlMenuData.parseError.errorCode <> 0 then
	response.write "There was an error " + xmlMenuData.parseError.reason
	response.write "PARSE ERROR: menu.xml format incorrect"
end if

%>