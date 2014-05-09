<div id="topRatesDropdown" class="ratesTransparency">
<!-- #include file="db_openRates.asp" -->
<%
serverName = Request.ServerVariables("Server_Name")

If serverName <> "dev.zoobiscuit.co.za" Then
%>
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
 
<%

else

%>
<%

USDZAR = "9.2799"
GBPZAR = "14.1390"
EURZAR = "12.1066"

ICEBRENT = "100.59"
ICERB = "83.41"
XAU = "1442.32"

JIBAR = "5.291"
ONEYEAR = "4.9895"
R157 = "5.298"

%>

<%
end if
%>
<div style="float:right; width:18px; height:17px;" onmouseover="this.style.cursor='pointer';" onclick="slideRates();"><img src="images/iconography/close.png" width="18" height="17" alt="Close" /></div>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" colspan="2"><h6 style="color:#fff !important;" onmouseover="this.style.cursor='pointer';" onclick="window.open('http://www.rmb.co.za/GlobalMarkets/rates_commodities.asp');">Commodities</h6></td>
    </tr>
  <tr>
    <td width="59%" height="25">ICE Brent front month (USD per barrel):</td>
    <td width="41%" height="25"><%=ICEBRENT%></td>
  </tr>
  <tr>
    <td height="25">ICE RB Coal - close (USD per tonne):</td>
    <td height="25"><%=ICERB%></td>
  </tr>
  <tr>
    <td height="25">XAU/USD - Gold (USD per troy ounce):</td>
    <td height="25"><%=XAU%></td>
  </tr>
</table>
<br />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" colspan="2"><h6 style="color:#fff !important;" onmouseover="this.style.cursor='pointer';" onclick="window.open('http://www.rmb.co.za/GlobalMarkets/rates_fixedIncome.asp');">Fixed Income rates</h6></td>
    </tr>
  <tr>
    <td width="31%" height="25">3-month JIBAR:</td>
    <td width="69%" height="25"><%=JIBAR%></td>
  </tr>
  <tr>
    <td height="25">1-year swap (bid):</td>
    <td height="25"><%=ONEYEAR%></td>
  </tr>
  <tr>
    <td height="25">R157:</td>
    <td height="25"><%=R157%></td>
  </tr>
</table>
<br />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" colspan="2"><h6 style="color:#fff !important;" onmouseover="this.style.cursor='pointer';" onclick="window.open('http://www.rmb.co.za/GlobalMarkets/rates_Currencies.asp');">Currencies</h6></td>
    </tr>
  <tr>
    <td width="31%" height="25">EUR/ZAR:</td>
    <td width="69%" height="25"><%=EURZAR%></td>
  </tr>
  <tr>
    <td height="25">GBP/ZAR:</td>
    <td height="25"><%=GBPZAR%></td>
  </tr>
  <tr>
    <td height="25">USD/ZAR:</td>
    <td height="25"><%=USDZAR%></td>
  </tr>
</table>

<p>Rates displayed are indicative only and are delayed by 15 minutes.
Click on a rate heading to view additional detail or visit <a href="http://www.rmb.co.za/GlobalMarkets" target="_blank" class="ratesLink">RMB Global 
Markets</a> to view all available rates.</p>







<!-- #include file="db_closeRates.asp" -->
</div>