
<%

'Use the same name as the file names - example conferenceTest.asp, conferenceTestAction.asp, conferenceTestRegistered.asp
conferenceName = "Test" 

'The name here is used to identify which conference it is in the database. Use a people friendly name - for example - Test - 31 October 2012
conferenceDBName = "Test - 31 October 2012"

'Cookie expiry date, set this to a week after the conference call in the CORRECT format as below:
'Month day,year
weekAfterConference = "November 05,2012"



'''''''''''''''''''''''''''''''''''''''''''''''''''

' Start Injection Prevention
dim form_name
dim form_value
dim query_name
dim query_value
for each form_name in request.Form
form_value = request.Form(form_name)

if instr(form_value,"'") > 0 or instr(form_value,"--") > 0 or instr(form_value,"/") > 0 or instr(form_value,"\") > 0 or instr(form_value,"%") > 0 or instr(form_value," or ") > 0 OR instr(form_value,"<") > 0 or instr(form_value,">") > 0 then 
response.redirect "conference"+conferenceName+".asp?invalid=1"
end if    

next

for each query_name in request.QueryString
query_value = request.QueryString(query_name)

if instr(query_value,"'") > 0 or instr(query_value,"--") > 0 or instr(query_value,"/") > 0 or instr(form_value,"\") > 0 or instr(query_value,"%") > 0 or instr(query_value," or ") > 0 OR instr(query_value,"<") > 0 OR instr(query_value,">") > 0 then 
response.redirect "conference"+conferenceName+".asp?invalid=1"
end if    

next
                                                
' End Injection Prevention   



%>

<!-- #include file="common/includes/db_openConferenceRegistration.asp" -->
<%

emailaddress =  request.QueryString("emailaddress")


if (isnull(emailaddress)) then
	response.Redirect("conference"+conferenceName+".asp")
end if

if (emailaddress="") then
	response.Redirect("conference"+conferenceName+".asp")
end if

existsSQL = "SELECT * FROM tRegistration WHERE sEmailAddress='"&emailaddress&"' AND sConferenceName='"&conferenceDBName&"'"
	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open existsSQL,Conn
	if Rec.EOF then
		Set Rec = Nothing	
		response.Cookies("conferenceRegistered"+conferenceName) = ""
		response.Cookies("conferenceRegistered"+conferenceName).Expires = Date() - 1
		response.Redirect("conference"+conferenceName+".asp")
		
	else
			
	end if

response.Cookies("conferenceRegistered"+conferenceName)=emailaddress
response.Cookies("conferenceRegistered"+conferenceName).Expires=weekAfterConference
%>

<!-- #include file="common/includes/db_close.asp" -->
