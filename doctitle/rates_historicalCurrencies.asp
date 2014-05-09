
<%
rateDisplayHead = request.QueryString("rateDisplay")
instrumentHead = request.QueryString("instrument")
if isnull(instrumentHead) or instrumentHead = "" then

%>
<meta name="description" content="Historical currency exchange rates from RMB Global Markets covering a wide range of worldwide currencies." />
<title>RMB Global Markets | Historical Currency rates & ZAR research</title>
<% else %>
<meta name="description" content="Historical <%=rateDisplayHead%> currency exchange rates with the South African Rand from RMB Global Markets." />
<title>RMB Global Markets | <%=rateDisplayHead%> Exchange Rates</title>
<% end if %>
<%
' Start Injection Prevention
dim form_name
dim form_value
dim query_name
dim query_value
for each form_name in request.Form
form_value = request.Form(form_name)

if instr(form_value,"'") > 0 or instr(form_value,"--") > 0 or instr(form_value,"\") > 0 or instr(form_value,"%") > 0 or instr(form_value," or ") > 0 OR instr(form_value,"<") > 0 or instr(form_value,">") > 0 then 
response.redirect "rates_historicalCurrencies.asp"
end if    

next

for each query_name in request.QueryString
query_value = request.QueryString(query_name)

if instr(query_value,"'") > 0 or instr(query_value,"--") > 0 or instr(form_value,"\") > 0 or instr(query_value,"%") > 0 or instr(query_value," or ") > 0 OR instr(query_value,"<") > 0 OR instr(query_value,">") > 0 then 
response.redirect "rates_historicalCurrencies.asp"
end if    

next
                                                
' End Injection Prevention

%>
<%
Session.LCID = 2057	

instrument_name = Request.QueryString("instrument")
rateDisplay = Request.QueryString("rateDisplay")

if (rateDisplay = "" or instrument_name ="") then
	instrument_name = "USD/ZAR"
	rateDisplay = "US dollar"
end if

%>
