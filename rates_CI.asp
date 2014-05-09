<%@LANGUAGE="VBSCRIPT" %>
<!--#include file="common/includes/header.asp"-->
            <!-- #include file="common/includes/db_open.asp" -->
            <%
            
			SQL = "select top(1) tr8.rate_date, max(tr7.quote_mid) as quote_mid1,max(tr8.quote_mid) as quote_mid2 FROM (select * from tRates where 	product_type='Index' and  instrument_name='CI_INDEX'  ) as tr7 INNER JOIN (select * from tRates where product_type='Index' and instrument_name='CI_INDEX_YIELD') as tr8 on tr7.rate_date = tr8.rate_date group by tr8.quote_mid, tr8.rate_date order by tr8.rate_date desc"

	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQL,Conn
	if Rec.EOF then
		overNight= "fail"
	else
	currentRate = formatnumber(Rec("quote_mid1"),4)

	currentYield = formatnumber(Rec("quote_mid2"),6)
	currentYield = currentYield * 100
	currentYield = formatnumber(currentYield,4)
	
	updatedTime = Rec("rate_date")
	updatedTime2 = FormatDateTime(updatedTime,1)
     end if        
	 set Rec = nothing
            %>
            <h2>RMB Cash Intelligence  Index TR  - <%=updatedTime2%></h2>
            <br />
            <table width="600" cellpadding="0" cellspacing="0" border="0">
            <tr>
            <td width="113"><span class="blueContactView"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Read more </span></td>
            <td width="487"><a href="pdfs/RMB_Cash_Intelligence_Index.pdf" target="_blank">RMB Cash Intelligence Index fact sheet for 31 March 2014</a></td></tr>
            </table>
            <br />			
            <h3>Current rate<br />
            </h3>
            <table cellpadding="0" cellspacing="0" border="0">
            <tr><td width="120"><h6 class="borderBottomCommoditiesMain">Date</h6></td>
            <td width="100" align="center"><h6 class="borderBottomCommoditiesMain">Spot</h6></td>
              <td width="100" align="right"><h6 class="borderBottomCommoditiesMain">Yield</h6></td>
            	
             </tr>
            
           <% response.Write("<tr><td class=""borderBottomInside"" height=""25"">"&updatedTime&"</td><td class=""borderBottomInside"" height=""25"" align=""center"">"&currentRate&"</td><td class=""borderBottomInside"" height=""25"" align=""right"">"&currentYield&"%</td></tr>") %>
			</table>
           <p><h3>Historical rates<br />
            </h3>
           <table cellpadding="0" cellspacing="0" border="0">
            <tr><td width="120"><h6 class="borderBottomCommoditiesMain">Date</h6></td>
            	<td width="100" align="center"><h6 class="borderBottomCommoditiesMain">Spot</h6></td>
                <td width="100" align="right"><h6 class="borderBottomCommoditiesMain">Yield 7 day</h6></td>
              <td width="100" align="right"><h6 class="borderBottomCommoditiesMain">Yield 32 day</h6></td>
             </tr>
            
            <%
            SQL2 = "SELECT tr8.rate_date, max(tr7.quote_mid) as quote_mid1,max(tr8.quote_mid) as quote_mid2, max(tr9.quote_mid) as quote_mid3 FROM (select * from tRates where product_type='Index' and  instrument_name='CI_INDEX'  ) as tr7 INNER JOIN (select * from tRates where product_type='Index' and instrument_name='CI_INDEX_YIELD') as tr8 on tr7.rate_date = tr8.rate_date LEFT JOIN (select * from tRates where product_type='Index' and instrument_name = 'INDEX.CashIntelligenceYield7Day.ZAR.RMB') as tr9 on DATEADD(d,0,DATEDIFF(d,0,tr7.rate_date)) = DATEADD(d,0,DATEDIFF(d,0,tr9.rate_date)) group by tr8.quote_mid, tr8.rate_date order by tr8.rate_date desc"
			
	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQL2,Conn
	if Rec.EOF then
		response.Write("There are currently no rates to display")   
	else
		Do while Not Rec.EOF	
		ratedate = formatdatetime(Rec("rate_date"),2)
		if isnull(ratedate) then
			ratedate="&nbsp;"
		end if 
		quotemid = formatnumber(Rec("quote_mid1"),4)
		if isnull(quotemid) then
			quotemid = "&nbsp;"
		end if
		
		
		if isnull(yield7day) then
			yield7day = "&nbsp;"
			else
		yield7day = yield7day * 100
		yield7day = formatnumber(yield7day,4)
		
		yield7day = formatnumber(Rec("quote_mid3"),6)
		end if 
		
		
		
		if isnull(yield) then
			yield = "&nbsp;"
			else
		yield = yield * 100
		yield = formatnumber(yield,4)
		end if		
		response.Write("<tr><td class=""borderBottomInside"" height=""25"">"&ratedate&"</td><td class=""borderBottomInside"" height=""25"" align=""center"">"&quotemid&"</td><td class=""borderBottomInside"" height=""25"" align=""right"">"&yield7day&"%</td><td class=""borderBottomInside"" height=""25"" align=""right"">"&yield&"%</td></tr>")
				
		
		Rec.MoveNext
		loop	        
			
	
	
	
	end if
           
		   
		   
		   %>
            </table></p>
     
            
              <!-- #include file="common/includes/db_close.asp" --><br />
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
                <td width="90" valign="baseline"><span class="blueContactView" onmouseover="this.style.cursor='pointer';" onclick="window.open('http://www.firstrand.co.za/AboutUs/Pages/governance-and-compliance.aspx');" > <img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;View</span></td>
                <td width="621" valign="baseline"><a href="pdfs/RMB_Cash_Intelligence_Index_Rulebook.pdf" target="_blank">View Index rulebook</a></td>
              </tr>
            </table>
            <br />
            
            <div><a href="#" class="backToTop"><img src="images/top.png" alt="" width="36" height="18" /></a><br />
            </div>
               <!--#include file="common/includes/footer.asp"-->