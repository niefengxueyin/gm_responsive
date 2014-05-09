<%@LANGUAGE="VBSCRIPT" %>
<!--#include file="common/includes/header.asp"-->
            
            
            
            <!-- #include file="common/includes/db_open.asp" -->

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

            <%
            
			SQL = "select top(1) * from tRates where product_type='Index' and instrument_name='INDEX."+rateToDisplayC+".CommodityIntelligence."+rateToDisplay+ ".RMB' ORDER BY rate_date desc, updated_at desc, rate_id asc"

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
            <h2>RMB <%=rateToDisplayC%> Commodity Intelligence Index <%=rateToDisplay%> - <%=updatedTime2%></h2>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="29" valign="bottom" class="borderBottomPaddingTop"><a href="rates_fixedIncome.asp?rate=swaps#menuAnchor"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a></td>
                <td width="304" valign="bottom" class="borderBottomPaddingTop"><span class="flushText" ><a href="rates_G10_yield_intelligence_index.asp?q=USD" class="breadcrumb"><span class="ratesPaddingBottom"><a href="rates_CommoditiesIndex.asp?q=USD&amp;r=TR" class="breadcrumb">RMB USD Commodity Intelligence Index TR</a></span></a></span></td>
                <td width="22" valign="bottom">&nbsp;</td>
                <td width="29" valign="bottom" class="borderBottomPaddingTop"><a href="rates_fixedIncome.asp?rate=swaps#menuAnchor"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a></td>
                <td width="330" valign="bottom" class="borderBottomPaddingTop"><span class="flushText"><a href="rates_G10_yield_intelligence_index.asp?q=EUR" class="breadcrumb"><span class="ratesPaddingBottom"><a href="rates_CommoditiesIndex.asp?q=ZAR&amp;r=ER" class="breadcrumb">RMB ZAR Commodity Intelligence Index ER</a><a href="pdf/RMB_Cash_Intelligence_Index.pdf" target="_blank"> </a></span></a></span></td>
              </tr>
              <tr>
                <td valign="bottom" class="borderBottomPaddingTop"><a href="rates_fixedIncome.asp?rate=swaps#menuAnchor"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a></td>
                <td valign="bottom" class="borderBottomPaddingTop"><span class="flushText"><a href="rates_CommoditiesIndex.asp?q=USD&amp;r=ER" class="breadcrumb">RMB USD Commodity Intelligence Index ER</a><a href="rates_G10_yield_intelligence_index.asp?q=GBP" class="breadcrumb"></a></span></td>
                <td valign="top">&nbsp;</td>
                <td valign="bottom" class="borderBottomPaddingTop"><a href="rates_fixedIncome.asp?rate=swaps#menuAnchor"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a></td>
                <td valign="bottom" class="borderBottomPaddingTop"><span class="flushText"><a href="rates_G10_yield_intelligence_index.asp?q=ZAR" class="breadcrumb"><a href="rates_CommoditiesIndex.asp?q=ZAR&amp;r=TR" class="breadcrumb">RMB ZAR Commodity Intelligence Index TR</a><a href="rates_G10_yield_intelligence_index.asp?q=AUD" class="breadcrumb"></a></a></span></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <table width="600" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="113" valign="top"><span class="blueContactView"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Read more </span></td>
                <td width="487" class="ratesPaddingBottom"><a href="pdfs/commoditiesIndex/RMB_<%=rateToDisplayC%>_Commodity_Intelligence_Index_<%=rateToDisplay%>.pdf" target="_blank">RMB <%=rateToDisplayC%> Commodity Intelligence Index <%=rateToDisplay%> fact sheet for 31 March 2014</a></td>
              </tr>
            </table>
            <br />
            <h3>Historical rates</h3> 
            <table cellpadding="0" cellspacing="0" border="0">
            <tr><td width="120"><h6 class="borderBottomCommoditiesMain" >Date</h6></td>
           	  <td width="100" align="right"><h6 class="borderBottomCommoditiesMain" >Spot</h6></td>
                 <!--td class="borderBottomInside" width="100" align="right"><strong>Yield</strong></td-->
             </tr>
            
            <%
			product = "Index"
			instrument = "INDEX."+rateToDisplayC+".CommodityIntelligence."+rateToDisplay+".RMB"
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

<br />
<br />
<table width="711" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="90" valign="baseline"><span class="blueContactView" onmouseover="this.style.cursor='pointer';" onclick="window.open('http://www.firstrand.co.za/AboutUs/Pages/governance-and-compliance.aspx');" > <img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Contact </span></td>
    <td width="621" valign="baseline">Cross Asset Trading on +27 11 269 9300 or email <a href="mailto:globalmarkets@rmb.co.za">globalmarkets@rmb.co.za</a></td>
  </tr>

  <tr>
    <td valign="baseline">&nbsp;</td>
    <td valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="commodities_weightings.asp"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="commodities_weightings.asp" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="commoditiesIndex/RMB_USD_Commodity_Intelligence_Index_TR_rulebook.pdf" target="_blank">RMB Commodity Intelligence Index weightings</a></td>
  </tr>
  </table>
  
<% if rateToDisplayC = "USD" and rateToDisplay = "TR" Then
%>
<table width="711" border="0" cellpadding="0" cellspacing="0" id="rulebook-USD-TR">
  <tr>
    <td width="90" valign="baseline" >&nbsp;</td>
    <td width="621" valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="pdfs/commoditiesIndex/RMB_USD_Commodity_Intelligence_Index_TR_rulebook.pdf" target="_blank"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="pdfs/commoditiesIndex/RMB_USD_Commodity_Intelligence_Index_TR_rulebook.pdf" target="_blank" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="pdfs/commoditiesIndex/RMB_USD_Commodity_Intelligence_Index_TR_rulebook.pdf" target="_blank">View Index rulebook</a></td>
  </tr>
</table>
<% End if %>

<% if rateToDisplayC = "USD" and rateToDisplay = "ER" Then
%>
<table width="711" border="0" cellpadding="0" cellspacing="0" id="rulebook-USD-ER">
  <tr>
    <td width="90" valign="baseline" >&nbsp;</td>
    <td width="621" valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="pdfs/commoditiesIndex/RMB_USD_Commodity_Intelligence_Index_ER_rulebook.pdf" target="_blank"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="pdfs/commoditiesIndex/RMB_USD_Commodity_Intelligence_Index_ER_rulebook.pdf" target="_blank" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="pdfs/commoditiesIndex/RMB_USD_Commodity_Intelligence_Index_ER_rulebook.pdf" target="_blank">View Index rulebook</a></td>
  </tr>
</table>
<% End if %>

<% if rateToDisplayC = "ZAR" and rateToDisplay = "ER" Then
%>
<table width="711" border="0" cellpadding="0" cellspacing="0" id="rulebook-ZAR-ER">
  <tr>
    <td width="90" valign="baseline" >&nbsp;</td>
    <td width="621" valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="pdfs/commoditiesIndex/RMB_ZAR_Commodity_Intelligence_Index_ER_rulebook.pdf" target="_blank"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="pdfs/commoditiesIndex/RMB_ZAR_Commodity_Intelligence_Index_ER_rulebook.pdf" target="_blank" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="pdfs/commoditiesIndex/RMB_ZAR_Commodity_Intelligence_Index_ER_rulebook.pdf" target="_blank">View Index rulebook</a></td>
  </tr>
</table>
<% End if %>

<% if rateToDisplayC = "ZAR" and rateToDisplay = "TR" Then
%>
<table width="711" border="0" cellpadding="0" cellspacing="0" id="rulebook-ZAR-TR">
  <tr>
    <td width="90" valign="baseline" >&nbsp;</td>
    <td width="621" valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="pdfs/commoditiesIndex/RMB_ZAR_Commodity_Intelligence_Index_TR_rulebook.pdf" target="_blank"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="pdfs/commoditiesIndex/RMB_ZAR_Commodity_Intelligence_Index_TR_rulebook.pdf" target="_blank" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="pdfs/commoditiesIndex/RMB_ZAR_Commodity_Intelligence_Index_TR_rulebook.pdf" target="_blank">View Index rulebook</a></td>
  </tr>
</table>
<% End if %>

<br />

<div><a href="#" class="backToTop"><img src="images/top.png" alt="" width="36" height="18" /></a><br />
</div>
               <!--#include file="common/includes/footer.asp"-->