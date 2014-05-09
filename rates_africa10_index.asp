<%@LANGUAGE="VBSCRIPT" %>
<!--#include file="common/includes/header.asp"-->
            
            
            
            <!-- #include file="common/includes/db_open.asp" -->
            <%
            
			SQL = "select top(1) * from tRates where product_type='Index' and instrument_name='INDEX.Africa10Intelligence."+rateToDisplay+"."+rateToDisplayC+ ".RMB' ORDER BY rate_date desc, updated_at desc, rate_id asc"

	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQL,Conn
	if Rec.EOF then
		updatedTime2= ""
		quote_mid= "No data"
	else
		updatedTime = Rec("updated_at")
		updatedTime2 = FormatDateTime(updatedTime,1)
		quote_mid=Rec("quote_mid")
     end if        
	 set Rec = nothing
            %>
            <h2>RMB <%=rateToDisplayC%> Africa 10 Yield Intelligence Index <%=rateToDisplay%> - <%=updatedTime2%></h2>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="30" valign="bottom" class="borderBottomPaddingTop"><a href="rates_fixedIncome.asp?rate=swaps#menuAnchor"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a></td>
                <td width="314" valign="bottom" class="borderBottomPaddingTop"><span class="flushText"><a href="rates_africa10_index.asp?q=USD&amp;r=TR" class="breadcrumb">RMB USD Africa 10 Yield Intelligence Index TR</a><a href="rates_G10_yield_intelligence_index.asp?q=USD" class="breadcrumb"></a></span></td>
                <td width="233" valign="bottom">&nbsp;</td>
                <td width="9" valign="bottom">&nbsp;</td>
                <td width="128" valign="bottom">&nbsp;</td>
              </tr>
              <tr>
                <td valign="bottom" class="borderBottomPaddingTop"><a href="rates_fixedIncome.asp?rate=swaps#menuAnchor"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a></td>
                <td valign="bottom" class="borderBottomPaddingTop"><span class="flushText"><a href="rates_africa10_index.asp?q=ZAR&amp;r=TR" class="breadcrumb">RMB ZAR Africa 10 Yield Intelligence Index TR</a><a href="rates_G10_yield_intelligence_index.asp?q=GBP" class="breadcrumb"></a></span></td>
                <td valign="top">&nbsp;</td>
                <td valign="bottom">&nbsp;</td>
                <td valign="bottom">&nbsp;</td>
              </tr>
            </table>
           <br/><br/>
            <table width="600" cellpadding="0" cellspacing="0" border="0">
            <tr><td width="120" valign="baseline" ><span class="blueContactView"><img src="images/arrowButton.png" width="18" height="17" align="left" />&nbsp;&nbsp;Read more</span></td>
            <td width="558"><a href="pdfs/Africa10/RMB_<%=rateToDisplayC%>_Africa_10_Yield_Intelligence_Index_<%=rateToDisplay%>.pdf" target="_blank">RMB <%=rateToDisplayC%> Africa 10 Yield Intelligence Index <%=rateToDisplay%> fact sheet for 31 March 2014</a></td></tr>
            </table>
            <br/>	
            <p><h3>Historical rates</h3> 
            <table cellpadding="0" cellspacing="0" border="0">
            <tr><td class="borderBottomInside" width="120"><strong>Date</strong></td>
            	<td class="borderBottomInside"width="100" align="right"><strong>Spot</strong></td>
                 <!--td class="borderBottomInside" width="100" align="right"><strong>Yield</strong></td-->
             </tr>
            
            <%
			product = "Index"
			instrument = "INDEX.Africa10Intelligence."+rateToDisplay+"."+rateToDisplayC+ ".RMB"
            SQL2 = "select max(cast(floor(cast(rate_date as float)) as datetime)) as rate_date, max(product_type) as product_type, max(instrument_name) as instrument_name, max(quote_mid) as quote_mid from tRates where product_type='"&product&"' and instrument_name='"&instrument&"' and datediff(day,rate_date,getDate()) <= 365 and datediff(day,rate_date,getDate()) >= 1 group by cast(floor(cast(rate_date as float)) as datetime) order by cast(floor(cast(rate_date as float)) as datetime) desc"
			
	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQL2,Conn
	if Rec.EOF then
		response.Write("<p>There are currently no rates to display</p>")   
	else
		Do while Not Rec.EOF	
		ratedate = formatdatetime(Rec("rate_date"),2)
		if isnull(ratedate) then
			ratedate="&nbsp;"
		end if 
		quotemid = formatnumber(Rec("quote_mid"),4)
		if isnull(quotemid) then
			quotemid = "&nbsp;"
		end if
		
	
		response.Write("<tr><td class=""borderBottomInside"" height=""25"">"&ratedate&"</td><td class=""borderBottomInside"" height=""25"" align=""right"">"&quotemid&"</td></tr>")
				
		
		Rec.MoveNext
		loop	        
			
	
	
	
	end if
           
		   
		   
		   %>
            </table></p>
     
  <!-- #include file="common/includes/db_close.asp" -->

<br/>
<br />
<table width="711" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="90" valign="baseline"><span class="blueContactView"> <img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Contact </span></td>
    <td width="621" valign="baseline">Cross Asset Trading on +27 11 269 9300 or email <a href="mailto:globalmarkets@rmb.co.za">globalmarkets@rmb.co.za</a></td>
  </tr>
</table>

<% if rateToDisplayC = "USD" and rateToDisplay = "TR" Then
%>
<table width="711" border="0" cellpadding="0" cellspacing="0" id="rulebook-USD-africa">
  <tr>
    <td width="90" valign="baseline" >&nbsp;</td>
    <td width="621" valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="pdfs/Africa10/RMB_USD_Africa_10_Yield_Intelligence_Index_rulebook.pdf" target="_blank"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="pdfs/Africa10/RMB_USD_Africa_10_Yield_Intelligence_Index_rulebook.pdf" target="_blank" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="pdfs/Africa10/RMB_USD_Africa_10_Yield_Intelligence_Index_rulebook.pdf" target="_blank">View Index rulebook</a></td>
  </tr>
</table>
<% End if %>

<% if rateToDisplayC = "ZAR" and rateToDisplay = "TR" Then
%>
<table width="711" border="0" cellpadding="0" cellspacing="0" id="rulebook-ZAR-africa">
  <tr>
    <td width="90" valign="baseline" >&nbsp;</td>
    <td width="621" valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="pdfs/Africa10/RMB_ZAR_Africa_10_Yield_Intelligence_Index_rulebook.pdf" target="_blank"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="pdfs/Africa10/RMB_ZAR_Africa_10_Yield_Intelligence_Index_rulebook.pdf" target="_blank" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="pdfs/Africa10/RMB_ZAR_Africa_10_Yield_Intelligence_Index_rulebook.pdf" target="_blank">View Index rulebook</a></td>
  </tr>
</table>
<% End if %>



<br />
<div><a href="#" class="backToTop"><img src="images/top.png" alt="" width="36" height="18" /></a><br />
</div>

               <!--#include file="common/includes/footer.asp"-->