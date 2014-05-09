
<%
rateDisplayHead = request.QueryString("rateDisplay")
productHead = request.QueryString("product")
if isnull(productHead) or productHead = "" then

%>
<meta name="description" content="Historical fixed income rates for a selection of Bonds, SWAPS, and FRAS." />
<title>RMB Global Markets | Historical Fixed Income Rates</title>
<% else %>
<meta name="description" content="Historical <%=rateDisplayHead%><%=" "%><%=productHead%> Fixed Income Rates provided by RMB Global Markets." />
<title>RMB Global Markets | <%=rateDisplayHead%><%=" "%><%=productHead%> Income Rates</title>
<% end if %>

<%

' Start Injection Prevention
dim form_name
dim form_value
dim query_name
dim query_value
for each form_name in request.Form
form_value = request.Form(form_name)

if instr(form_value,"'") > 0 or instr(form_value,"--") > 0 or instr(form_value,"/") > 0 or instr(form_value,"\") > 0 or instr(form_value,"%") > 0 or instr(form_value," or ") > 0 OR instr(form_value,"<") > 0 or instr(form_value,">") > 0 then 
response.redirect "rates_historicalRates.asp"
end if    

next

for each query_name in request.QueryString
query_value = request.QueryString(query_name)

if instr(query_value,"'") > 0 or instr(query_value,"--") > 0 or instr(query_value,"/") > 0 or instr(form_value,"\") > 0 or instr(query_value,"%") > 0 or instr(query_value," or ") > 0 OR instr(query_value,"<") > 0 OR instr(query_value,">") > 0 then 
response.redirect "rates_historicalRates.asp"
end if    

next
                                                
' End Injection Prevention

%>
<%

Session.LCID = 2057	

product = Request.QueryString("product")
instrument = Request.QueryString("instrument")
rateDisplay = Request.QueryString("rateDisplay")

if (rateDisplay = "" or instrument ="" or product ="") then
	response.Redirect("rates_historicalRates.asp?product=Bonds&instrument=R157&rateDisplay=R157&firsttime=1")
end if


%>
