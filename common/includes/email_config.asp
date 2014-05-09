<%
serverName = Request.ServerVariables("Server_Name")

If serverName = "rmb.amorphouscorporate.net" Then
	emailConfig = "127.0.0.1"
Else
	emailConfig = "mailhost.rmb.co.za"
end if
%>