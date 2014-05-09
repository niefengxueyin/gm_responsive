<%@LANGUAGE="VBSCRIPT" %>
<!--#include file="common/includes/header.asp"-->
            
           
            <h2>Commodities</h2>

            <!-- #include file="common/includes/db_open.asp" -->

            

   <%
SQLdate = "select top(1) * from tRates where rate_id in (select rate_id from vRateCommodities)"	  
	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQLdate,Conn
	
	rateDate = Rec("rate_date")
	response.Write(formatdatetime(rateDate,1))
	
	set Rec = Nothing


%></h3>
       <%         
SQL = "select * from tRates where rate_id in (select rate_id from vRateCommodities)"
	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQL,Conn
	if Rec.EOF then
		response.Write("There are currently no commodity prices to display")
	else
%>      
<p>&nbsp;</p>
<table width="500" height="29" border="0" cellpadding="0" cellspacing="0">
<tr class="borderBottomDeals">
	<td width="360" height="25" class="borderBottomCommoditiesMain"><h6>Instrument name</h6></td><td align="right" class="borderBottomDeals"><h6>USD</h6></td></tr>
 
 
 


<%

		Do while Not Rec.EOF	
		
		if Rec("description") = "" then
			theDescription = "" 
		else theDescription = " - "&Rec("description")
		end if
		
		if (Rec("instrument_name") = "White maize front month SAFEX (per tonne) ") then
			whiteMaize = Rec("instrument_name")
			whiteMaizeMid = formatnumber(Rec("quote_mid"),2)
		elseif (Rec("instrument_name") = "Yellow maize front month SAFEX (per tonne) ") then
			yellowMaize = Rec("instrument_name")
			yellowMaizeMid = formatnumber(Rec("quote_mid"),2)
		else		
			response.Write("<tr><td class=""borderBottomInside"" height=""25"" >"&Rec("instrument_name")&theDescription&"</td><td class=""borderBottomInside"" height=""25"" align=""right"">"&formatnumber(Rec("quote_mid"),2)&"</td></tr>")
		end if	
		
		
		Rec.MoveNext
		loop
	
	
	end if

Set Rec=Nothing	

%>   
<tr>
  <td colspan="2">&nbsp;</td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>

<tr>
  <td height="25" class="borderBottomCommoditiesMain"><h6>Instrument name</h6></td><td align="right" class="borderBottomDeals"><h6>ZAR</h6></td></tr>

<tr><td height="25" class="borderBottomInside"><%=whiteMaize%></td><td align="right" class="borderBottomInside"><%=whiteMaizeMid%></td></tr>

<tr><td height="25" class="borderBottomInside"><%=yellowMaize%></td><td align="right" class="borderBottomInside"><%=yellowMaizeMid%></td></tr>


 </table>
<br />
Rates displayed are indicative only and are delayed by 15 minutes.<br />
<br />
<br />
<table width="711" border="0" cellpadding="0" cellspacing="0">
  <tr>
     <td width="90" valign="baseline"><span class="blueContactView" > <img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Contact </span></td>
     <td width="621" valign="baseline">Commodities desk, RMB Global Markets on +27 11 269 9140</td>
   </tr>
 </table>
<br />

<!-- #include file="common/includes/db_close.asp" -->  
            
            <div><a href="#" class="backToTop"><img src="images/top.png" alt="" width="36" height="18" /></a><br />
            </div>
               <!--#include file="common/includes/footer.asp"-->