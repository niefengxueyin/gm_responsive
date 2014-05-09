<%
On error resume next	 	
serverName = Request.ServerVariables("Server_Name")

If serverName = "dev.zoobiscuit.co.za" Then

	Set Conn = server.createobject("ADODB.connection")
	Conn.ConnectionString ="DRIVER={SQL SERVER};SERVER=10.1.0.1;UID=sa;PWD=corporate100;DATABASE=FICC_Rates;"
	Conn.Open
Elseif serverName = "localhost" Then
	Set Conn = server.createobject("ADODB.connection")
	Conn.ConnectionString ="DRIVER={SQL SERVER};SERVER=localhost;UID=sa;PWD=password;DATABASE=FICC_Rates;"
	Conn.Open
Else
	Set Conn = server.createobject("ADODB.connection")
	Conn.ConnectionString ="DRIVER={SQL SERVER};SERVER=ESSONITE;UID=Ficc_Web;PWD=web.2008;DATABASE=FICC_Rates;"
	Conn.Open
End If

%>