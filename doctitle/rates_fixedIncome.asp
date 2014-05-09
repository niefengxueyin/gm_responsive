
<title>RMB Global Markets | Live Fixed Income Rates</title>
<meta name="description" content="Live rates for swaps from RMB Global Markets. Note these rates are delayed by 15 mins." />
<%
dim rateHead
dim rateHeadSplit
rateHead = request.QueryString("rate")
rateHeadSplit = Split(rateHead, "/")
if isnull(rateHead) or rateHead = "" then

%>
<meta name="description" content="Live Fixed Income and Bond rates provided by RMB Global Markets." />
<title>RMB Global Markets | Live Fixed Income Rates</title>
<% else %>

<meta name="description" content="Live rates for <%=join(rateHeadSplit," ")%> from RMB Global Markets. Note these rates are delayed by 15 mins." />
<title>RMB Global Markets |  <%=join(rateHeadSplit," ")%> Income Rates</title>
<% end if %>

<%

' Start Injection Prevention
dim form_name
dim form_value
dim query_name
dim query_value
for each form_name in request.Form
form_value = request.Form(form_name)

if instr(form_value,"'") > 0 or instr(form_value,"--") > 0 or instr(form_value,".") > 0 or instr(form_value,"\") > 0 or instr(form_value,"%") > 0 or instr(form_value," or ") > 0 OR instr(form_value,"<") > 0 or instr(form_value,">") > 0 then 
response.redirect "fixedIncome.asp"
end if    

next

for each query_name in request.QueryString
query_value = request.QueryString(query_name)

if instr(query_value,"'") > 0 or instr(query_value,"--") > 0 or instr(query_value,".") > 0 or instr(form_value,"\") > 0 or instr(query_value,"%") > 0 or instr(query_value," or ") > 0 OR instr(query_value,"<") > 0 OR instr(query_value,">") > 0 then 
response.redirect "fixedIncome.asp"
end if    

next
                                                
' End Injection Prevention

%>
<%
liveRate = Request.QueryString("rate")
Session.LCID = 2057	
%>
