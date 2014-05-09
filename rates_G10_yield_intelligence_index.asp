<%@LANGUAGE="VBSCRIPT" %>
<!--#include file="common/includes/header.asp"-->
            
            
            
            <!-- #include file="common/includes/db_open.asp" -->
            <%
            
			SQL = "select top(1) * from tRates where product_type='Index' and instrument_name='INDEX."+rateToDisplayC+".G10Intelligence."+rateToDisplay+ ".RMB' ORDER BY rate_date desc, updated_at desc, rate_id asc"

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
                       <h2>RMB <%=rateToDisplayC%> G10 Yield Intelligence Index - <%=updatedTime2%></h2>
                       <table width="100%" border="0" cellpadding="0" cellspacing="0">
                         <tr>
                           <td width="32" valign="bottom" class="borderBottomPaddingTop"><a href="rates_fixedIncome.asp?rate=swaps#menuAnchor"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a></td>
                           <td width="315" valign="bottom" class="borderBottomPaddingTop"><span class="flushText"><a href="rates_G10_yield_intelligence_index.asp?q=USD" class="breadcrumb">RMB USD G10 Yield Intelligence Index</a></span></td>
                           <td width="20" valign="bottom">&nbsp;</td>
                           <td width="32" valign="bottom" class="borderBottomPaddingTop"><a href="rates_fixedIncome.asp?rate=swaps#menuAnchor"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a></td>
                           <td width="315" valign="bottom" class="borderBottomPaddingTop"><span class="flushText"><a href="rates_G10_yield_intelligence_index.asp?q=EUR" class="breadcrumb">RMB EUR G10 Yield Intelligence Index</a></span></td>
                         </tr>
                         <tr>
                           <td valign="bottom" class="borderBottomPaddingTop"><a href="rates_fixedIncome.asp?rate=swaps#menuAnchor"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a></td>
                           <td valign="bottom" class="borderBottomPaddingTop"><span class="flushText"><a href="rates_G10_yield_intelligence_index.asp?q=GBP" class="breadcrumb">RMB GBP G10 Yield Intelligence Index</a></span></td>
                           <td valign="top">&nbsp;</td>
                           <td valign="bottom" class="borderBottomPaddingTop"><a href="rates_fixedIncome.asp?rate=swaps#menuAnchor"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a></td>
                           <td valign="bottom" class="borderBottomPaddingTop"><span class="flushText"><a href="rates_G10_yield_intelligence_index.asp?q=ZAR" class="breadcrumb">RMB ZAR G10 Yield Intelligence Index </a></span></td>
                         </tr>
                         <tr>
                           <td valign="bottom" class="borderBottomPaddingTop"><a href="rates_fixedIncome.asp?rate=swaps#menuAnchor"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a></td>
                           <td valign="bottom" class="borderBottomPaddingTop"><span class="flushText"><a href="rates_G10_yield_intelligence_index.asp?q=AUD" class="breadcrumb">RMB AUD G10 Yield Intelligence Index</a></span></td>
                           <td valign="top">&nbsp;</td>
                           <td valign="bottom">&nbsp;</td>
                           <td valign="bottom">&nbsp;</td>
                         </tr>
                         </table>
                       <br />
                       <br/>
            	<table width="600" cellpadding="0" cellspacing="0" border="0">
                
                <%
				curr = request.QueryString("q")
				if curr = "" then
					curr = "USD"
				end if
                
			if	curr <> "AUD" AND curr <> "ZAR" then
			response.Write("<tr><td width=""120"" valign=""baseline"" ><span class=""blueContactView""><img src=""images/arrowButton.png"" width=""18"" height=""17"" align=""left"" />&nbsp;&nbsp;Read more </span></td><td width=""558"" valign=""baseline"" class=""ratesPaddingBottom""><a href=""pdfs/G10/RMB_" & curr & "_G10_Yield_Intelligence_Index_TR.pdf"" target=""_blank"">RMB " & curr & " G10 Yield Intelligence Index TR fact sheet for 31 March 2014</a></td></tr>")
response.Write("<tr><td width=""30""></td><td width=""558""><a href=""pdfs/G10/RMB_" & curr & "_G10_Yield_Intelligence_Index_ER.pdf"" target=""_blank"">RMB " & curr & " G10 Yield Intelligence Index ER fact sheet for 31 March 2014</a></td></tr>")		
			
            else
response.Write("<tr><td width=""120"" valign=""baseline"" ><span class=""blueContactView""><img src=""images/arrowButton.png"" width=""18"" height=""17"" align=""left"" />&nbsp;&nbsp;Read more </span></td><td width=""558""><a href=""pdfs/G10/RMB_" & curr & "_G10_Yield_Intelligence_Index_TR.pdf"" target=""_blank"">RMB " & curr & " G10 Yield Intelligence Index TR fact sheet for 31 March 2014</a></td></tr>")
			end if 
            
            %>
            </table><br/><h3>Historical rates</h3> 
            <table cellpadding="0" cellspacing="0" border="0">
            <tr><td width="120"><h6 class="borderBottomCommoditiesMain">Date</h6></td><td width="100" align="center"><h6 class="borderBottomCommoditiesMain">TR</h6></td>
			<%
			if	request.QueryString("q") <> "AUD" AND request.QueryString("q") <> "ZAR" then
           	 response.Write("<td class=""borderBottomCommoditiesMain"" width=""100"" align=""right""><h6>ER</h6></td>")
			end if %>
            </tr>
            
            
            <%
			product = "Index"
			instrument = "INDEX."+rateToDisplayC+".G10Intelligence.TR.RMB"
			instrument2 = "INDEX."+rateToDisplayC+".G10Intelligence.ER.RMB"
            SQL2 = "Select TR.instrument_name, TR.quote_mid as TR, TR.rate_date, ER.instrument_name, ER.quote_mid as ER "
SQL3 = "from(SELECT     TOP (1000) tRates.rate_id,"
SQL4 = "max(tRates.instrument_name) as instrument_name,max(tRates.quote_mid) as quote_mid," 
SQL5 = "cast(floor(cast(tRates.rate_date as float)) as datetime) as rate_date "	
SQL6 = "FROM tRates WHERE (tRates.instrument_name = '"&instrument&"')"
SQL7 = "and datediff(day,tRates.rate_date,getDate()) <= 365 and datediff(day,tRates.rate_date,getDate()) >= 1 "
SQL8 = "group by cast(floor(cast(tRates.rate_date as float)) as datetime), tRates.rate_id "
SQL9 = "order by cast(floor(cast(tRates.rate_date as float)) as datetime) desc) as TR "
SQL10 = "left join(SELECT TOP(1000) tRates.rate_id,max(tRates.instrument_name) as instrument_name, "
SQL11 = "max(tRates.quote_mid) as quote_mid, cast(floor(cast(tRates.rate_date as float)) as datetime) as rate_date "
SQL12 = "FROM tRates WHERE(tRates.instrument_name = '"&instrument2&"')and datediff(day,tRates.rate_date,getDate()) <= 365 and "
SQL13 = "datediff(day,tRates.rate_date,getDate()) >= 1 group by cast(floor(cast(tRates.rate_date as float)) as datetime), tRates.rate_id "
SQL14 = "order by cast(floor(cast(tRates.rate_date as float)) as datetime) desc) as ER on TR.rate_date = ER.rate_date"
			SQLQuery = SQL2 & SQL3 & SQL4 & SQL5 & SQL6 & SQL7 & SQL8 & SQL9 & SQL10 & SQL11 & SQL12 & SQL13 & SQL14
			
	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQLQuery,Conn
	if Rec.EOF then
		response.Write("<p>There are currently no rates to display</p>")   
	else
		Do while Not Rec.EOF	
		
		ratedate = formatdatetime(Rec("rate_date"),2)
		if isnull(ratedate) then
			ratedate="&nbsp;"			
		end if 
		
		quotemid = formatnumber(Rec("TR"),4)
		if isnull(quotemid) then
			quotemid = "&nbsp;"			
		end if
		
		erquotemid = formatnumber(Rec("ER"),4)
		if isnull(erquotemid) then
			erquotemid = "&nbsp;"
			response.Write("<tr><td class=""borderBottomInside"" height=""25"">"&ratedate&"</td><td class=""borderBottomInside""height=""25"" align=""right"">"&quotemid&"</td></tr>")		
		else
		response.Write("<tr><td class=""borderBottomInside"" height=""25"">"&ratedate&"</td><td class=""borderBottomInside""height=""25"" align=""center"">"&quotemid&"</td><td class=""borderBottomInside"" height=""25"" align=""right"">"&erquotemid&"</td></tr>")
		end if
		
		Rec.MoveNext
		loop	        
			
	
	
	
	end if
           
		   
		   
		   %>
            </table></p>
     
  <!-- #include file="common/includes/db_close.asp" -->

<br />
<br />
<table width="711" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="90" valign="baseline"><span class="blueContactView"> <img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Contact </span></td>
    <td width="621" valign="baseline">Cross Asset Trading on +27 11 269 9300 or email <a href="mailto:globalmarkets@rmb.co.za">globalmarkets@rmb.co.za</a></td>
  </tr>
</table>

<% if rateToDisplayC = "USD" and rateToDisplay = "TR" Then
%>
<table width="711" border="0" cellpadding="0" cellspacing="0" id="rulebook-USD">
  <tr>
    <td width="90" valign="baseline" >&nbsp;</td>
    <td width="621" valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="pdfs/G10/RMB_USD_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="pdfs/G10/RMB_USD_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="pdfs/G10/RMB_USD_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank">View Index rulebook</a></td>
  </tr>
</table>
<% End if %>

<% if rateToDisplayC = "GBP" and rateToDisplay = "TR" Then
%>
<table width="711" border="0" cellpadding="0" cellspacing="0" id="rulebook-USD">
  <tr>
    <td width="90" valign="baseline" >&nbsp;</td>
    <td width="621" valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="pdfs/G10/RMB_GBP_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="pdfs/G10/RMB_GBP_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="pdfs/G10/RMB_GBP_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank">View Index rulebook</a></td>
  </tr>
</table>
<% End if %>

<% if rateToDisplayC = "AUD" and rateToDisplay = "TR" Then
%>
<table width="711" border="0" cellpadding="0" cellspacing="0" id="rulebook-USD">
  <tr>
    <td width="90" valign="baseline" >&nbsp;</td>
    <td width="621" valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="pdfs/G10/RMB_AUD_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="pdfs/G10/RMB_AUD_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="pdfs/G10/RMB_AUD_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank">View Index rulebook</a></td>
  </tr>
</table>
<% End if %>

<% if rateToDisplayC = "EUR" and rateToDisplay = "TR" Then
%>
<table width="711" border="0" cellpadding="0" cellspacing="0" id="rulebook-USD">
  <tr>
    <td width="90" valign="baseline" >&nbsp;</td>
    <td width="621" valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="pdfs/G10/RMB_EUR_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="pdfs/G10/RMB_EUR_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="pdfs/G10/RMB_EUR_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank">View Index rulebook</a></td>
  </tr>
</table>
<% End if %>

<% if rateToDisplayC = "ZAR" and rateToDisplay = "TR" Then
%>
<table width="711" border="0" cellpadding="0" cellspacing="0" id="rulebook-USD">
  <tr>
    <td width="90" valign="baseline" >&nbsp;</td>
    <td width="621" valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="pdfs/G10/RMB_ZAR_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="pdfs/G10/RMB_ZAR_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="pdfs/G10/RMB_ZAR_G10_Yield_Intelligence_Index_rulebook.pdf" target="_blank">View Index rulebook</a></td>
  </tr>
</table>
<% End if %>


<br />
<div><a href="#" class="backToTop"><img src="images/top.png" alt="" width="36" height="18" /></a><br />
</div>
               <!--#include file="common/includes/footer.asp"-->