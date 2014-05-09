
<title>RMB Global Markets | RMB G10 Yield Intelligence Index</title>
<meta name="description" content="Daily G10 Intelligence Index prices with a 15 minute delay provided by RMB Global Markets." />

<%

' Start Injection Prevention
dim form_name
dim form_value
dim query_name
dim query_value
for each form_name in request.Form
form_value = request.Form(form_name)

if instr(form_value,"'") > 0 or instr(form_value,"--") > 0 or instr(form_value,"/") > 0 or instr(form_value,"\") > 0 or instr(form_value,"%") > 0 or instr(form_value," or ") > 0 OR instr(form_value,"<") > 0 or instr(form_value,">") > 0 then 
response.redirect "rates_G10_yield_intelligence_index.asp"
end if    

next

for each query_name in request.QueryString
query_value = request.QueryString(query_name)

if instr(query_value,"'") > 0 or instr(query_value,"--") > 0 or instr(query_value,"/") > 0 or instr(form_value,"\") > 0 or instr(query_value,"%") > 0 or instr(query_value," or ") > 0 OR instr(query_value,"<") > 0 OR instr(query_value,">") > 0 then 
response.redirect "rates_G10_yield_intelligence_index.asp"
end if    

next
                                                
' End Injection Prevention   

%>

<%Session.LCID = 2057 %>
<%

rateToDisplayC = request.QueryString("q")
rateToDisplay = request.QueryString("r")

if rateToDisplayC = "" then
	rateToDisplayC = "USD"
end if
if rateToDisplay = "" then
	rateToDisplay = "TR"
end if


%>
