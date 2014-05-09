<%@LANGUAGE="VBSCRIPT" %>
<!--#include file="common/includes/header.asp"-->
                         <h2>Currencies</h2><!-- #include file="common/includes/db_open.asp" -->
      <%
SQLdate = "select top(1) * from tRates where rate_id in (select rate_id from vRateCurrencies) order by updated_at desc"	  
	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQLdate,Conn
	
	rateDate = FormatDateTime(Rec("rate_date"),1)
	response.Write(rateDate)
	
	set Rec = Nothing


%>


<div class="rmb-currency-mobi">

	<select id="rmb-currency-mobi-select">
		<option value="null">Select currency</option>

	</select>

	<div id="rmb-currency-mobi-output">

	</div>

</div>


<%         
SQL = "select * from tRates where rate_id in (select rate_id from vRateCurrencies) order by description"
	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQL,Conn
	if Rec.EOF then
		response.Write("There are currently no currency prices to display")
	else
%>
  <%

		Do while Not Rec.EOF	
		
		
		instrumentDesc = Rec("description")
		Select Case instrumentDesc
			case "Australian dollar"

				if Rec("instrument_name") = "AUD/USD " then
					audDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "AUD/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							audSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							aud1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							aud2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							aud3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							aud6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							aud9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							aud12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					

			case "Botswana pula"

				if Rec("instrument_name") = "BWP/USD " then
					bwpDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "BWP/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							bwpSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							bwp1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							bwp2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							bwp3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							bwp6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							bwp9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							bwp12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if	
				
			case "Brazilian real"

				if Rec("instrument_name") = "BRL/USD " then
					brlDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "BRL/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							brlSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							brl1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							brl2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							brl3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							brl6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							brl9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							brl12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Canadian dollar"

				if Rec("instrument_name") = "CAD/USD " then
					cadDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "CAD/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							cadSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							cad1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							cad2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							cad3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							cad6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							cad9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							cad12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if	
				
			case "Chinese renminbi"

				if Rec("instrument_name") = "CNY/USD " then
					cnyDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "CNY/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							cnySpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							cny1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							cny2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							cny3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							cny6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							cny9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							cny12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Danish krone"

				if Rec("instrument_name") = "DKK/USD " then
					dkkDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "DKK/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							dkkSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							dkk1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							dkk2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							dkk3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							dkk6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							dkk9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							dkk12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Euro"

				if Rec("instrument_name") = "EUR/USD " then
					eurDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "EUR/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							eurSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							eur1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							eur2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							eur3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							eur6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							eur9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							eur12M = FormatNumber(FormatNumber(Round(Rec("quote_mid"),4),4),4)					
					end Select
				end if					
				
			case "Hong Kong dollar"

				if Rec("instrument_name") = "HKD/USD " then
					hkdDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "HKD/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							hkdSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							hkd1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							hkd2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							hkd3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							hkd6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							hkd9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							hkd12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Indian rupee"

				if Rec("instrument_name") = "INR/USD " then
					inrDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "INR/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							inrSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							inr1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							inr2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							inr3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							inr6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							inr9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							inr12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Indonesian rupiah"

				if Rec("instrument_name") = "IDR/USD " then
					idrDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "IDR/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							idrSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							idr1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							idr2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							idr3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							idr6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							idr9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							idr12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Malawian kwacha"

				if Rec("instrument_name") = "MWK/USD " then
					mwkDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "MWK/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							mwkSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							mwk1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							mwk2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							mwk3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							mwk6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							mwk9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							mwk12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Mozambiquan metical"

				if Rec("instrument_name") = "MZN/USD " then
					mznDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "MZN/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							mznSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							mzn1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							mzn2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							mzn3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							mzn6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							mzn9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							mzn12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if									
				
			case "New Zealand dollar"

				if Rec("instrument_name") = "NZD/USD " then
					nzdDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "NZD/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							nzdSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							nzd1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							nzd2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							nzd3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							nzd6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							nzd9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							nzd12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Nigerian naira"

				if Rec("instrument_name") = "NGN/USD " then
					ngnDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "NGN/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							ngnSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							ngn1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							ngn2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							ngn3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							ngn6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							ngn9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							ngn12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Norwegian krone"

				if Rec("instrument_name") = "NOK/USD " then
					nokDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "NOK/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							nokSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							nok1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							nok2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							nok3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							nok6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							nok9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							nok12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Pounds sterling"

				if Rec("instrument_name") = "GBP/USD " then
					gbpDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "GBP/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							gbpSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							gbp1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							gbp2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							gbp3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							gbp6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							gbp9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							gbp12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Singapore dollar"

				if Rec("instrument_name") = "SGD/USD " then
					sgdDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "SGD/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							sgdSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							sgd1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							sgd2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							sgd3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							sgd6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							sgd9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							sgd12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Swedish krona"

				if Rec("instrument_name") = "SEK/USD " then
					sekDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "SEK/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							sekSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							sek1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							sek2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							sek3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							sek6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							sek9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							sek12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if						
							
			case "Mauritius Rupee"

				if Rec("instrument_name") = "MUR/USD " then
					murDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "MUR/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							murSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							mur1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							mur2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							mur3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							mur6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							mur9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							mur12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if	
			
			case "Zambian Kwacha"

				if Rec("instrument_name") = "ZMK/USD " then
					zmkDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "ZMK/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							zmkSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							zmk1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							zmk2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							zmk3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							zmk6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							zmk9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							zmk12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if				
				
			case "Swiss frank"

				if Rec("instrument_name") = "CHF/USD " then
					chfDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "CHF/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							chfSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							chf1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							chf2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							chf3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							chf6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							chf9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							chf12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Tanzanian shilling"

				if Rec("instrument_name") = "TZS/USD " then
					tzsDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "TZS/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							tzsSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							tzs1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							tzs2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							tzs3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							tzs6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							tzs9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							tzs12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Thai baht"

				if Rec("instrument_name") = "THB/USD " then
					thbDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "THB/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							thbSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							thb1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							thb2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							thb3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							thb6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							thb9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							thb12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "US dollar"

				if Rec("instrument_name") = "USD/USD " then
					usdDollar = FormatNumber(FormatNumber(Round(Rec("quote_mid"),4),4),4)
				elseif Rec("instrument_name") = "USD/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							usdSpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							usd1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							usd2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							usd3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							usd6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							usd9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							usd12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					
				
			case "Japanese yen"

				if Rec("instrument_name") = "JPY/USD " then
					jpyDollar = FormatNumber(Round(Rec("quote_mid"),4),4)
				elseif Rec("instrument_name") = "JPY/ZAR " then

					tenor = Rec("tenor")
					
					Select Case tenor
						case "Spot"
							jpySpot = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "1M"
							jpy1M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "2M"
							jpy2M = FormatNumber(Round(Rec("quote_mid"),4),4)
						case "3M"
							jpy3M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "6M"
							jpy6M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "9M"
							jpy9M = FormatNumber(Round(Rec("quote_mid"),4),4)						
						case "12M"
							jpy12M = FormatNumber(Round(Rec("quote_mid"),4),4)						
					end Select
				end if					

			case Else
				'response.Write(currencies)
		End Select
		
		
		
		Rec.MoveNext
		loop

	
	
	end if

Set Rec=Nothing	

%>
  <!-- #include file="common/includes/db_close.asp" -->
<br />
<br />
<br />
            <div id="ratesTable">
     
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr class="borderBottomDeals">
      <td width="79" height="25" class="borderBottomDeals"><strong>&nbsp;&nbsp;&nbsp;</strong></td>
      <td height="25"  colspan="7" align="center" class="borderBottomDeals"><h6>Currency price against the rand<strong>&nbsp;&nbsp;</strong></h6></td>
      <td width="75" height="25" align="center" class="borderBottomDeals"><h6><strong>&nbsp;&nbsp;</strong><strong>&nbsp;&nbsp;</strong></h6></td>
    </tr>
    <tr>
      <td height="25" class="borderBottomDeals"><strong>&nbsp;&nbsp;&nbsp;</strong></td>
      <td width="80" height="25" align="center" valign="bottom" class="borderBottomDeals"><h6>Spot<strong>&nbsp;&nbsp;</strong></h6></td>
      <td width="80" height="25" align="center" valign="bottom" class="borderBottomDeals"><h6>1-m<strong>&nbsp;&nbsp;</strong></h6></td>
      <td width="80" height="25" align="center" valign="bottom" class="borderBottomDeals"><h6>2-m<strong>&nbsp;&nbsp;</strong></h6></td>
      <td width="80" height="25" align="center" valign="bottom" class="borderBottomDeals"><h6>3-m&nbsp;&nbsp;</h6></td>
      <td width="80" height="25" align="center" valign="bottom" class="borderBottomDeals"><h6>6-m<strong>&nbsp;&nbsp;</strong></h6></td>
      <td width="80" height="25" align="center" valign="bottom" class="borderBottomDeals"><h6>9-m&nbsp;&nbsp;</h6></td>
      <td width="80" height="25" align="center" valign="bottom" class="borderBottomDeals"><h6>12-m<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderBottomDeals" align="center" ><h6>Spot vs.<br />
        USD<strong >&nbsp;&nbsp;</strong></h6></td>
    </tr>
    <tr>
      <td height="25" title="US dollar" class="borderRightBottomLight"><h6>USD<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=usdSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=usd1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=usd2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=usd3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=usd6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=usd9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=usd12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=FormatNumber(1,4)%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Euro" class="borderRightBottomLight"><h6>EUR<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=eurSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=eur1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=eur2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=eur3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=eur6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=eur9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=eur12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=eurDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Pounds sterling" class="borderRightBottomLight" ><h6>GBP<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=gbpSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=gbp1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=gbp2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=gbp3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=gbp6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=gbp9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=gbp12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=gbpDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Yen" class="borderRightBottomLight" ><h6>JPY<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=jpySpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=jpy1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=jpy2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=jpy3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=jpy6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=jpy9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=jpy12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=jpyDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Australian dollar" class="borderRightBottomLight"><h6>AUD<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=audSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=aud1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=aud2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=aud3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=aud6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=aud9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=aud12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=audDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Swiss franc" class="borderRightBottomLight"><h6>CHF<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"  ><%=chfSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=chf1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=chf2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=chf3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=chf6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=chf9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=chf12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=chfDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="New Zealand dollar" class="borderRightBottomLight" ><h6>NZD<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nzdSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nzd1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nzd2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nzd3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nzd6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nzd9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nzd12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=nzdDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Danish krone" class="borderRightBottomLight"><h6>DKK<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=dkkSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=dkk1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=dkk2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=dkk3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=dkk6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=dkk9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=dkk12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=dkkDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Norwegian krone" class="borderRightBottomLight"><h6>NOK<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nokSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nok1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nok2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nok3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nok6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nok9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=nok12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=nokDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Swedish krona" class="borderRightBottomLight"><h6>SEK<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sekSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sek1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sek2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sek3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sek6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sek9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sek12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=sekDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Hong Kong dollar" class="borderRightBottomLight"><h6>HKD<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=hkdSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=hkd1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=hkd2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=hkd3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=hkd6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=hkd9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=hkd12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=hkdDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Singapore dollar" class="borderRightBottomLight"><h6>SGD<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sgdSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sgd1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sgd2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sgd3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sgd6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sgd9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=sgd12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=sgdDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Canadian dollar" class="borderRightBottomLight"><h6>CAD<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cadSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cad1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cad2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cad3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cad6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cad9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cad12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=cadDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Indian rupee" class="borderRightBottomLight"><h6>INR<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=inrSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=inr1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=inr2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=inr3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=inr6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=inr9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=inr12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=inrDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Mozambiquan metical" class="borderRightBottomLight"><h6>MZN<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mznSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mzn1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mzn2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mzn3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mzn6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mzn9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mzn12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=mznDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Tanzanian shilling" class="borderRightBottomLight"><h6>TZS<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=tzsSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=tzs1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=tzs2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=tzs3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=tzs6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=tzs9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=tzs12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=tzsDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Botswana pula" class="borderRightBottomLight"><h6>BWP<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=bwpSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=bwp1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=bwp2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=bwp3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=bwp6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=bwp9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=bwp12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=bwpDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Malawian kwacha" class="borderRightBottomLight"><h6>MWK<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mwkSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mwk1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mwk2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mwk3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mwk6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mwk9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=mwk12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=mwkDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Thai baht" class="borderRightBottomLight"><h6>THB&nbsp;<strong>&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=thbSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=thb1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=thb2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=thb3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=thb6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=thb9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=thb12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=thbDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Indonesian rupiah" class="borderRightBottomLight"><h6>IDR<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=idrSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=idr1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=idr2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=idr3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=idr6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=idr9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=idr12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=idrDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Nigerian naira" class="borderRightBottomLight"><h6>NGN<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=ngnSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=ngn1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=ngn2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=ngn3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=ngn6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=ngn9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=ngn12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=ngnDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Chinese renminbi" class="borderRightBottomLight"><h6>CNY<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cnySpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cny1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cny2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cny3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cny6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cny9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=cny12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=cnyDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Brazilian real" class="borderRightBottomLight"><h6>BRL<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=brlSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=brl1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=brl2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=brl3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=brl6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=brl9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=brl12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=brlDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Mauritius rupee" class="borderRightBottomLight"><h6>MUR<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" class="borderRightBottomLight" align="right"><%=murSpot%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=murl1M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=murl2M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=murl3M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=murl6M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=murl9M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderRightBottomLight" align="right"><%=murl12M%>&nbsp;&nbsp;</td>
      <td height="25" class="borderBottomLight" align="right"><%=murDollar%>&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td height="25" title="Zambian kwacha" class="borderBottomRight"><h6>ZMK<strong>&nbsp;&nbsp;</strong></h6></td>
      <td height="25" align="right" class="borderBottomRight"><%=zmkSpot%>&nbsp;&nbsp;</td>
      <td height="25" align="right" class="borderBottomRight"><%=zmk1M%>&nbsp;&nbsp;</td>
      <td height="25" align="right" class="borderBottomRight"><%=zmk2M%>&nbsp;&nbsp;</td>
      <td height="25" align="right" class="borderBottomRight"><%=zmk3M%>&nbsp;&nbsp;</td>
      <td height="25" align="right" class="borderBottomRight"><%=zmk6M%>&nbsp;&nbsp;</td>
      <td height="25" align="right" class="borderBottomRight"><%=zmk9M%>&nbsp;&nbsp;</td>
      <td height="25" align="right" class="borderBottomRight"><%=zmk12M%>&nbsp;&nbsp;</td>
      <td height="25" align="right" class="borderBottomDeals"><%=zmkDollar%>&nbsp;&nbsp;</td>
    </tr>
  </table>
  <!-- this is where the div was -->
  
<p><br />
  Rates displayed are indicative only and  are delayed by 15 minutes.<br />
  Currency pairs quoted according to  standard South African market conventions. <br />
  For ease of use, the AUD and NZD are  quoted as the inverse of the standard South African market convention.<br />
  <br />
  </p>
<table width="711" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="baseline"><span class="blueContactView"> <a href="rates_historicalCurrencies.asp"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" /></a>&nbsp;&nbsp;<a href="rates_historicalCurrencies.asp" class="blueLink">View</a></span></td>
    <td valign="baseline"><a href="rates_historicalCurrencies.asp">Historical data</a><a href="http://www.firstrand.co.za" target="_blank"></a></td>
  </tr>
  <tr>
    <td valign="baseline">&nbsp;</td>
    <td valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td width="90" valign="baseline"><span class="blueContactView"> <img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Contact </span></td>
    <td width="621" valign="baseline">Corporate desk, RMB Global Markets at +27 11 269 9230, +27 11 269 9120 or +27 11 269 9175 or email <a href="mailto:rmbcorporatedesk@rmb.co.za">rmbcorporatedesk@rmb.co.za</a>.</td>
  </tr>
</table>
<br />
<div><a href="#" class="backToTop"><img src="images/top.png" alt="" width="36" height="18" /></a><br />
            </div></div>

<script src="common\js\jquery.js"></script>
 <script>
 xOffset = -40;
yOffset = 20; 
        $(document).ready(function () {
            $("#ratesTable td[title]").tooltip({ 
			position: { my: "left-40 top-10", at: "right+0 top+0" },
			toggle: "fade",
			tooltipClass: "customTooltip"
			 });  			
		});
    </script>
<script type="text/javascript">  
  
  var Browser = {
  Version: function() {
    var version = 999; // Chrome or Firefox
    if (navigator.appVersion.indexOf("MSIE") != -1)
      version = parseFloat(navigator.appVersion.split("MSIE")[1]);
    return version;
  }
} 
  function tooltipper(divID, info, posLeft, w, h, i){
		var tooltip = $("#" + divID);
		document.getElementById(divID).innerHTML=info;
		//i is the difference between cells
		j = 29;
		k = parseInt(i);
		i = i * j;
		// Working on absolute positioning commented out relative
		//posTop = (-625 + i);
		posTop =  (470 + i);
		posLeft = 460;
		var blnChrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
		//alert(navigator.userAgent.toLowerCase());
		if (blnChrome == 1){	
			posTop = (posTop - 6) + k;
			}
		//alert(blnChrome);
		if (Browser.Version() < 10) { 
		 	// IE seems to draw from bottom up
			//posTop = (posTop - j) + k;
			if (Browser.Version() == 9)
			{posTop = (posTop - 5) + k;
				}
			if (Browser.Version() == 8)
			{posTop = (posTop - 7) + k;
				}	
			if (Browser.Version() == 7)
			{posTop = (posTop + 5) + k;
				}	
			
		}else //Chrome and FireFox are shup
		{
			if (blnChrome == 0){
			posTop =  (470 + i);}}
			
		//iPad 
		
		if ((navigator.userAgent.toLowerCase().indexOf('iphone') != -1) || (navigator.userAgent.toLowerCase().indexOf('ipod') != -1) || (navigator.userAgent.toLowerCase().indexOf('ipad') != -1)) {
		posTop =  (470 + i) + k;
}
		posLeft = posLeft + "px";
		posTop = posTop + "px";
		h = h + "px";
		w = w + "px";
	  	//alert(Browser.Version())
		/*tooltip.css({
            background: '#666666',
            color: '#bcbcbc',
			position: 'absolute', 
			top: posTop,
			left: posLeft,
			width: w,
			height: h
      });*/
	  tooltip.fadeIn('slow');  
	  }
  function tooltipFadeOut(divID){
		var tooltip = $("#" + divID);	
	  	tooltip.css({
            display: 'none'
      });
	  }
  </script>        
            
            <!--#include file="common/includes/footer.asp"-->