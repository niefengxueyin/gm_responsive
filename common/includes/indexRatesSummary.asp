<%
userAgent = Request.ServerVariables("HTTP_USER_AGENT")
userAgent = lcase(userAgent)

if Instr(userAgent, "ipad") or  Instr(userAgent, "iphone") or  Instr(userAgent, "ipod") then
%>

<style>
	.iosStyle { background-color:#000; }
</style>

<% end if %>


<div id="menuRatesSummaryDropdownDetails">
<!-- #include file="db_openRates.asp" -->

<%
serverName = Request.ServerVariables("Server_Name")

If serverName <> "rmb.amorphouscorporate.net" Then
%>
<!-- Currencies query -->
<%
SQL = "select * from tRates where rate_id in (select rate_id from vRateCurrenciesSpot)"

	
	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQL,Conn2
	if Rec.EOF then
		'response.Write("There are currently no currencies to display")
	else

		Do while Not Rec.EOF

		Dim currencies
		currencies = Rec("instrument_name")
		Select Case currencies
			case "USD/ZAR "
				USDZAR = formatnumber(Round(Rec("quote_mid"),4),4)
			case "GBP/ZAR "
				GBPZAR = formatnumber(Round(Rec("quote_mid"),4),4)
			case "EUR/ZAR "
				EURZAR = formatnumber(Round(Rec("quote_mid"),4),4)
			case Else
				'response.Write(currencies)
		End Select

		Rec.MoveNext
		loop		
	end if
	
	set Rec = Nothing
%>


<!-- commodities query -->
<%
SQL = "select * from tRates where rate_id in (select rate_id from vRateCommodities)"
	Dim errMessage
	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQL,Conn2
	if Rec.EOF then
		errMessage = "There is currently no data to display"
	else

		Do while Not Rec.EOF

		Dim commodities
		commodities = Rec("instrument_name")
		Select Case commodities
			case "ICE Brent front month (per barrel) "
				ICEBRENT = Round(Rec("quote_mid"),2)
			case "ICE RB Coal - close (per tonne) "
				ICERB = Round(Rec("quote_mid"),2)
			case "XAU "
				XAU = Round(Rec("quote_mid"),2)
			case Else
				'response.Write(commodities)
		End Select

		Rec.MoveNext
		loop		

	end if
	
	set Rec = Nothing

%>


<!-- rates query -->

<%

'3 month JIBAR
SQL = "select top(1)* from tRates where product_type='JIBAR' and instrument_name='3 Month' ORDER BY rate_date desc, updated_at desc, rate_id asc"

	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQL,Conn2
	if Rec.EOF then
		JIBAR = "-"
	else
		JIBAR = Round(Rec("quote_mid"),4)
	end if
	
	set Rec = Nothing
	
	
'1-year swap
SQL2 = "select top(1) * from tRates where product_type='swaps' and instrument_name='1 Year' ORDER BY rate_date desc, updated_at desc, rate_id asc"

	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQL2,Conn2
	if Rec.EOF then
		ONEYEAR = "-"
	else
		ONEYEAR = Round(Rec("quote_bid"),4)
	end if
	
	set Rec = Nothing	
	
'R157
SQL3 = "select top(1) * from tRates where product_type='Bonds' and instrument_name='R157' ORDER BY rate_date desc, updated_at desc, rate_id asc"

	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQL3,Conn2
	if Rec.EOF then
		R157 = "-"
	else
		R157 = Round(Rec("quote_mid"),4)
	end if
	
	set Rec = Nothing

%>
<table width="449" border="0" cellpadding="0" cellspacing="0" class="iosStyle">
	<tr>
	  <td colspan="5" height="5" class="transparencyDarker"></td>
    </tr>
  <tr>
    <td width="5" class="ratesSummaryHeading">&nbsp;</td>
    <td width="259" class="ratesSummaryHeading"><a href="http://www.rmb.co.za/GlobalMarkets/rates_commodities.asp" target="_blank" style="text-decoration:none; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#fff;">Commodities</a>&nbsp;&nbsp;&nbsp;<span id="errMsg" style="font-size:9px;"><%=errMessage%><span></td>
    <td class="ratesSummaryHeading">&nbsp;</td>
    <td class="ratesSummaryHeading">&nbsp;</td>
    <td width="115" class="ratesSummaryHeading">&nbsp;</td>
  </tr>
	<tr>
	  <td colspan="5" height="5" class="transparencyDarker"></td>
    </tr>
    <tr>
      <td class="ratesSummary">&nbsp;</td>
      <td class="ratesSummary">&nbsp;</td>
      <td align="right" class="ratesSummary">&nbsp;</td>
      <td align="right" class="ratesSummary">&nbsp;</td>
      <td class="ratesSummary">&nbsp;</td>
    </tr>
    <tr>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary"><strong>ICE Brent front month (USD per barrel)</strong>:</td>
    <td width="16" align="right" class="ratesSummary">&nbsp;</td>
    <td width="54" align="right" class="ratesSummary"><%=ICEBRENT%></td>
    <td class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td  class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary"><strong>ICE RB Coal - close (USD per tonne)</strong>: </td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary"><%=ICERB%></td>
    <td  class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td  class="ratesSummary">&nbsp;</td>
    <td  class="ratesSummary"><strong>XAU/USD - Gold (USD per troy ounce)</strong>:</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary"><%=XAU%></td>
    <td  class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
  </tr>
</table>


<table width="449" border="0" cellpadding="0" cellspacing="0" class="iosStyle">
  <tr>
    <td colspan="9" height="5" class="transparencyDarker"></td>
  </tr>
  <tr>
    <td width="5" class="ratesSummaryHeading">&nbsp;</td>
    <td colspan="3" class="ratesSummaryHeading"><a href="http://www.rmb.co.za/GlobalMarkets/rates_fixedIncome.asp" target="_blank" style="text-decoration:none; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#fff;">Fixed Income rates</a></td>
    <td width="25" class="ratesSummaryHeading">&nbsp;</td>
    <td width="25" class="ratesSummaryHeading">&nbsp;</td>
    <td width="69" class="ratesSummaryHeading"><a href="http://www.rmb.co.za/GlobalMarkets/rates_Currencies.asp" target="_blank" style="text-decoration:none; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#fff;">Currencies</a></td>
    <td width="52" class="ratesSummaryHeading">&nbsp;</td>
    <td width="115" class="ratesSummaryHeading">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="9" height="5" class="transparencyDarker"></td>
  </tr>
  <tr>
    <td class="ratesSummary">&nbsp;</td>
    <td width="107" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary" >&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary"  style="border-right:1px solid #343434;">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary"><strong>3-month JIBAR: </strong></td>
    <td width="5" align="right" class="ratesSummary">&nbsp;</td>
    <td width="46" align="right" class="ratesSummary"  ><%=JIBAR%></td>
    <td class="ratesSummary" style="border-right:1px solid #343434;">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary"><strong>EUR/ZAR</strong>:</td>
    <td align="right" class="ratesSummary"><%=EURZAR%></td>
    <td class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td  class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary"><strong>1-year swap (bid):</strong></td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary"><%=ONEYEAR%></td>
    <td  class="ratesSummary"   style="border-right:1px solid #343434;">&nbsp;</td>
    <td  class="ratesSummary">&nbsp;</td>
    <td  class="ratesSummary"><strong>GBP/ZAR</strong>:</td>
    <td align="right"  class="ratesSummary"><%=GBPZAR%></td>
    <td  class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td  class="ratesSummary">&nbsp;</td>
    <td  class="ratesSummary"><strong>R157: </strong></td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary"><%=R157%></td>
    <td  class="ratesSummary"  style="border-right:1px solid #343434;">&nbsp;</td>
    <td  class="ratesSummary">&nbsp;</td>
    <td  class="ratesSummary"><strong>USD/ZAR</strong>:</td>
    <td align="right"  class="ratesSummary"><%=USDZAR%></td>
    <td  class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
      <td class="ratesSummary">&nbsp;</td>
      <td colspan="8" class="ratesSummary">Rates displayed are indicative only and are delayed by 15 minutes.</td>
    </tr>
      <tr>
    <td colspan="9" height="5" class="ratesSummary"></td>
  </tr>
    <tr>
      <td class="ratesSummary">&nbsp;</td>
      <td colspan="8" class="ratesSummary">Click on a rate heading to view additional detail or visit <a href="http://www.rmb.co.za/GlobalMarkets/" target="_blank"  style=" font-family:Arial, Helvetica, sans-serif; font-size:11px; color:#fff;">RMB Global Markets</a> to view all available rates.</td>
    </tr>
    <tr>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
  </tr>
</table>






<% else %>

<table width="449" border="0" cellpadding="0" cellspacing="0" class="iosStyle">
	<tr>
	  <td colspan="5" height="5" class="transparencyDarker"></td>
    </tr>
  <tr>
    <td width="5" class="ratesSummaryHeading">&nbsp;</td>
    <td width="259" class="ratesSummaryHeading"><a href="http://www.rmb.co.za/GlobalMarkets/rates_commodities.asp" target="_blank" style="text-decoration:none; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#fff;">Commodities</a></td>
    <td class="ratesSummaryHeading">&nbsp;</td>
    <td class="ratesSummaryHeading">&nbsp;</td>
    <td width="115" class="ratesSummaryHeading">&nbsp;</td>
  </tr>
	<tr>
	  <td colspan="5" height="5" class="transparencyDarker"></td>
    </tr>
    <tr>
      <td class="ratesSummary">&nbsp;</td>
      <td class="ratesSummary">&nbsp;</td>
      <td align="right" class="ratesSummary">&nbsp;</td>
      <td align="right" class="ratesSummary">&nbsp;</td>
      <td class="ratesSummary">&nbsp;</td>
    </tr>
    <tr>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary"><strong>ICE Brent front month (USD per barrel)</strong>:</td>
    <td width="16" align="right" class="ratesSummary">&nbsp;</td>
    <td width="54" align="right" class="ratesSummary">108.73</td>
    <td class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td  class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary"><strong>ICE RB Coal - close (USD per tonne)</strong>:</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">94.8</td>
    <td  class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td  class="ratesSummary">&nbsp;</td>
    <td  class="ratesSummary"><strong>XAU/USD - Gold (USD per troy ounce)</strong>:</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">1578.7</td>
    <td  class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
  </tr>
</table>


<table width="449" border="0" cellpadding="0" cellspacing="0" class="iosStyle">
  <tr>
    <td colspan="9" height="5" class="transparencyDarker"></td>
  </tr>
  <tr>
    <td width="5" class="ratesSummaryHeading">&nbsp;</td>
    <td colspan="3" class="ratesSummaryHeading"><a href="http://www.rmb.co.za/GlobalMarkets/rates_fixedIncome.asp" target="_blank" style="text-decoration:none; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#fff;">Fixed Income rates</a></td>
    <td width="25" class="ratesSummaryHeading">&nbsp;</td>
    <td width="25" class="ratesSummaryHeading">&nbsp;</td>
    <td width="69" class="ratesSummaryHeading"><a href="http://www.rmb.co.za/GlobalMarkets/rates_Currencies.asp" target="_blank" style="text-decoration:none; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#fff;">Currencies</a></td>
    <td width="52" class="ratesSummaryHeading">&nbsp;</td>
    <td width="115" class="ratesSummaryHeading">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="9" height="5" class="transparencyDarker"></td>
  </tr>
  <tr>
    <td class="ratesSummary">&nbsp;</td>
    <td width="107" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary" >&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary"  style="border-right:1px solid #343434;">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary"><strong>3-month JIBAR: </strong></td>
    <td width="5" align="right" class="ratesSummary">&nbsp;</td>
    <td width="46" align="right" class="ratesSummary"  >108.73</td>
    <td class="ratesSummary" style="border-right:1px solid #343434;">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary"><strong>EUR/ZAR</strong>:</td>
    <td align="right" class="ratesSummary">10.5530</td>
    <td class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td  class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary"><strong>1-year swap (bid):</strong></td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">94.8</td>
    <td  class="ratesSummary"   style="border-right:1px solid #343434;">&nbsp;</td>
    <td  class="ratesSummary">&nbsp;</td>
    <td  class="ratesSummary"><strong>GBP/ZAR</strong>:</td>
    <td align="right"  class="ratesSummary">13.0638</td>
    <td  class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td  class="ratesSummary">&nbsp;</td>
    <td  class="ratesSummary"><strong>R157: </strong></td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">1578.7</td>
    <td  class="ratesSummary"  style="border-right:1px solid #343434;">&nbsp;</td>
    <td  class="ratesSummary">&nbsp;</td>
    <td  class="ratesSummary"><strong>USD/ZAR</strong>:</td>
    <td align="right"  class="ratesSummary">8.2782</td>
    <td  class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
  </tr>
  <tr>
      <td class="ratesSummaryDisclaimer">&nbsp;</td>
      <td colspan="8" class="ratesSummaryDisclaimer"><span id="errMsg" style="font-size:9px !important;">Rates displayed are indicative only and are delayed by 15 minutes.</span></td>
    </tr>
      <tr>
    <td colspan="9" height="5" class="ratesSummary"></td>
  </tr>
    <tr>
      <td class="ratesSummaryDisclaimer">&nbsp;</td>
      <td colspan="8" class="ratesSummaryDisclaimer"><span id="lil" style="font-size:9px;">Click on a rate heading to view additional detail or visit <a href="http://www.rmb.co.za/GlobalMarkets/" target="_blank"  style=" font-family:Arial, Helvetica, sans-serif; font-size:9px; color:#fff;">RMB Global Markets</a> to view all available rates.</span></td>
    </tr>
    <tr>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td align="right" class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
    <td class="ratesSummary">&nbsp;</td>
  </tr>
</table>
<% end if %>
<!-- #include file="db_closeRates.asp" -->

</div>