<%
On error resume next	 	
serverName = Request.ServerVariables("Server_Name")


If serverName = "dev.zoobiscuit.co.za" Then

	Set Conn2 = server.createobject("ADODB.connection")
	Conn2.ConnectionString ="DRIVER={SQL SERVER};SERVER=10.1.0.1;UID=sa;PWD=corporate100;DATABASE=FICC_Rates;"
	Conn2.Open
Else
	Set Conn2 = server.createobject("ADODB.connection")
	Conn2.ConnectionString ="DRIVER={SQL SERVER};SERVER=ESSONITE;UID=Ficc_Web;PWD=web.2008;DATABASE=FICC_Rates;"
	Conn2.Open
End If




%>
