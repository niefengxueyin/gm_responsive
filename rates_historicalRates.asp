<%@LANGUAGE="VBSCRIPT" %>
<!--#include file="common/includes/header.asp"-->
            
                   <h2>Fixed Income rates<a name="topMenu" id="topMenu"></a></h2>
                   <h3>Historical data</h3>
                   <%
       		if request.QueryString("product") = "Bonds" then
				displayBonds = "display:block;"
			else
				displayBonds = "display:none;"
			end if
			
			if request.QueryString("product") = "Swaps" then
				displaySwaps = "display:block;"		
			else
				displaySwaps = "display:none;"	
			end if
			
			if request.QueryString("product") = "FRAS" then
				displayFras = "display:block;"
			else
				displayFras = "display:none;"			
			end if		
				
			if request.QueryString("product") = "JIBAR" then
				displayJibar = "display:block;"
			else
				displayJibar = "display:none;"			
			end if
		%>	       
         <%
		if request.QueryString("firsttime") = 1 then 
		%>
        Please select an option from the menu below.<br /><br />
        <% end if %>
        <div id="historicalOptions" style="float:left; width:100;">

        	<table width="100" border="0" cellpadding="0" cellspacing="0">
            	<tr>
                	<td valign="baseline" onmouseover="HideDIV('swapsOptions');HideDIV('SwapsGT');HideDIV('jibarOptions');HideDIV('jibarGT');HideDIV('FrasGT');HideDIV('frasOptions');DisplayDIV('bondsOptions'); DisplayDIV('bondsGT'); DisplayDIV('BondsGT'); "><span onmouseout="this.style.fontWeight='normal';" ><a href="#" style="text-decoration:none;"><span class="blueContactView"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Bonds </span></a></span></td>
                	<td><div id="bondsGT" style="<%=displayBonds%>"></div></td>
                </tr>
                
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><img src="images/spacer.gif" alt="spacer" width="10" height="10" /></td>
                  <td><img src="images/spacer.gif" alt="spacer" width="10" height="10" /></td>
                </tr>
                <tr>
                	<td valign="baseline" onmouseover="HideDIV('bondsOptions');HideDIV('bondsGT');HideDIV('FrasGT');HideDIV('jibarOptions');HideDIV('jibarGT');HideDIV('frasOptions');DisplayDIV('swapsOptions');DisplayDIV('SwapsGT');"><a href="#" style="text-decoration:none;"><span class="blueContactView"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Swaps </span></a></td>
                	<td><div id="SwapsGT" style="<%=displaySwaps%>"></div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><img src="images/spacer.gif" alt="spacer" width="10" height="10" /></td>
                  <td><img src="images/spacer.gif" alt="spacer" width="10" height="10" /></td>
              </tr>
                <tr>
                	<td valign="baseline" onmouseover="HideDIV('bondsOptions');HideDIV('bondsGT');HideDIV('SwapsGT');HideDIV('swapsOptions');HideDIV('jibarOptions');HideDIV('jibarGT');DisplayDIV('frasOptions');DisplayDIV('FrasGT');"><a href="#" style="text-decoration:none;"><span class="blueContactView"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;FRAS </span></a></td>
                	<td><div id="FrasGT" style="<%=displayFras%>"></div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><img src="images/spacer.gif" alt="spacer" width="10" height="10" /></td>
                  <td><img src="images/spacer.gif" alt="spacer" width="10" height="10" /></td>
              </tr>
                <tr>
                	<td valign="baseline" onmouseover="HideDIV('bondsOptions');HideDIV('bondsGT');HideDIV('SwapsGT');HideDIV('swapsOptions');HideDIV('frasOptions');HideDIV('FrasGT');DisplayDIV('jibarOptions');DisplayDIV('jibarGT');"><a href="#" style="text-decoration:none;"><span class="blueContactView"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;JIBAR </span></a></td>
                	<td><div id="jibarGT" style="<%=displayJibar%>"></div></td>
                </tr>                
            </table>
        </div>

        <div id="bondsOptions" style="float:left; clear:right; width:550; <%=displayBonds%>">

        	<table width="550" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><span class="h7">Government</span></td>
                <td><a href="rates_historicalRates.asp?product=Bonds&amp;instrument=R157&amp;rateDisplay=R157#topMenu" class="submenu"  style="text-decoration:none;">R157</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=R186&amp;rateDisplay=R186#topMenu" class="submenu"  style="text-decoration:none;">R186</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=R201&amp;rateDisplay=R201#topMenu" class="submenu"  style="text-decoration:none;">R201</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=R203&amp;rateDisplay=R203#topMenu" class="submenu" style="text-decoration:none;">R203</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=R204&amp;rateDisplay=R204#topMenu" class="submenu" style="text-decoration:none;">R204</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=R207&amp;rateDisplay=R207#topMenu" class="submenu" style="text-decoration:none;">R207</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=R208&amp;rateDisplay=R208#topMenu" class="submenu" style="text-decoration:none;">R208</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=R209&amp;rateDisplay=R209#topMenu" class="submenu" style="text-decoration:none;">R209</a></td>
              </tr>
              <!--tr>
                <td><span class="h7">FirstRand</span></td>
                <td><a href="historicalRates.asp?product=Bonds&amp;instrument=FRX11&amp;rateDisplay=FRX11" class="submenu" style="text-decoration:none;">FRX11</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=FRX15&amp;rateDisplay=FRX15" class="submenu"  style="text-decoration:none;">FRX15</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=FRX18&amp;rateDisplay=FRX18" class="submenu"  style="text-decoration:none;">FRX18</a>  | <a href="historicalRates.asp?product=Bonds&amp;instrument=FRX24&amp;rateDisplay=FRX24" class="submenu"  style="text-decoration:none;">FRX24</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=FRJ11&amp;rateDisplay=FRJ11" class="submenu"  style="text-decoration:none;">FRJ11</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=FRJ14&amp;rateDisplay=FRJ14" class="submenu" style="text-decoration:none;">FRJ14</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=FRJ16&amp;rateDisplay=FRJ16" class="submenu" style="text-decoration:none;">FRJ16</a></td>
              </tr-->
              <!--tr>
                    <td>&nbsp;</td>
                    <td class="breadcrumbsmall"><span class="h7">Transnet </span></td>
                    <td><a href="historicalRates.asp?product=Bonds&amp;instrument=T011&amp;rateDisplay=T011" class="submenu">T011</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=TN17&amp;rateDisplay=TN17" class="submenu">TN17</a> |<a href="historicalRates.asp?product=Bonds&amp;instrument=TN27&amp;rateDisplay=TN27" class="submenu">TN27</a></td>
              </tr-->
               <tr>
                <td><span class="h7">FirstRand</span></td>
                <td><a href="rates_historicalRates.asp?product=Bonds&amp;instrument=FRX15&amp;rateDisplay=FRX15#topMenu" class="submenu"  style="text-decoration:none;">FRX15</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=FRX18&amp;rateDisplay=FRX18#topMenu" class="submenu"  style="text-decoration:none;">FRX18</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=FRX24&amp;rateDisplay=FRX24#topMenu" class="submenu"  style="text-decoration:none;">FRX24</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=FRJ11&amp;rateDisplay=FRJ11#topMenu" class="submenu"  style="text-decoration:none;">FRJ11</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=FRJ14&amp;rateDisplay=FRJ14#topMenu" class="submenu" style="text-decoration:none;">FRJ14</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=FRJ16&amp;rateDisplay=FRJ16#topMenu" class="submenu" style="text-decoration:none;">FRJ16</a></td>
              </tr>        
              <tr>
                <td><span class="h7">Eskom</span></td>
                <td><a href="rates_historicalRates.asp?product=Bonds&amp;instrument=E170&amp;rateDisplay=E170#topMenu" class="submenu" style="text-decoration:none;">E170</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=ES18&amp;rateDisplay=ES18#topMenu" class="submenu" style="text-decoration:none;">ES18</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=ES26&amp;rateDisplay=ES26#topMenu" class="submenu" style="text-decoration:none;">ES26</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=ES33&amp;rateDisplay=ES33#topMenu" class="submenu" style="text-decoration:none;">ES33</a></td>
              </tr>
              <tr>
                <td><span class="h7">Telkom </span></td>
                <td><a href="rates_historicalRates.asp?product=Bonds&amp;instrument=T011&amp;rateDisplay=T011#topMenu" class="submenu" style="text-decoration:none;">T011</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=TN17&amp;rateDisplay=TN17#topMenu" class="submenu" style="text-decoration:none;">TN17</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=TN27&amp;rateDisplay=TN27#topMenu" class="submenu" style="text-decoration:none;">TN27</a></td>
              </tr>
              <tr>
                <td><span class="h7">TCTA </span></td>
                <td><a href="rates_historicalRates.asp?product=Bonds&amp;instrument=WS03&amp;rateDisplay=WS03#topMenu" class="submenu" style="text-decoration:none;">WS03</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=WS04&amp;rateDisplay=WS04#topMenu" class="submenu" style="text-decoration:none;">WS04</a></td>
              </tr>
              <tr>
                <td><span class="h7">Umgeni </span></td>
                <td><a href="rates_historicalRates.asp?product=Bonds&amp;instrument=UG65&amp;rateDisplay=UG65#topMenu" class="submenu" style="text-decoration:none;">UG65</a></td>
              </tr>
              <tr>
                <td><span class="h7">Rand Water</span></td>
                <td><a href="rates_historicalRates.asp?product=Bonds&amp;instrument=RW02&amp;rateDisplay=RW02#topMenu" class="submenu" style="text-decoration:none;">RW02</a></td>
              </tr>
              <tr>
                <td><span class="h7">Land Bank</span></td>
                <td><a href="rates_historicalRates.asp?product=Bonds&amp;instrument=LB01&amp;rateDisplay=LB01#topMenu" class="submenu" style="text-decoration:none;">LB01</a></td>
              </tr>
              <tr>
                <td><span class="h7">Development Bank</span></td>
                <td><a href="rates_historicalRates.asp?product=Bonds&amp;instrument=DV07&amp;rateDisplay=DV07#topMenu" class="submenu" style="text-decoration:none;">DV07</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=DV21&amp;rateDisplay=DV21#topMenu" class="submenu" style="text-decoration:none;">DV21</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=DV23&amp;rateDisplay=DV23#topMenu" class="submenu" style="text-decoration:none;">DV23</a></td>
              </tr>
              <tr>
                <td><span class="h7">INCA </span></td>
                <td><a href="rates_historicalRates.asp?product=Bonds&amp;instrument=IN03&amp;rateDisplay=IN03#topMenu" class="submenu" style="text-decoration:none;">IN03</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=IN04&amp;rateDisplay=IN04#topMenu" class="submenu" style="text-decoration:none;">IN04</a></td>
              </tr>
              <tr>
                <td><span class="h7">Inflation Linked</span></td>
                <td><a href="rates_historicalRates.asp?product=Bonds&amp;instrument=R189&amp;rateDisplay=R189#topMenu" class="submenu" style="text-decoration:none;">R189</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=R197&amp;rateDisplay=R197#topMenu" class="submenu" style="text-decoration:none;">R197</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=R202&amp;rateDisplay=R202#topMenu" class="submenu" style="text-decoration:none;">R202</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=R210&amp;rateDisplay=R210#topMenu" class="submenu" style="text-decoration:none;">R210</a> | <a href="rates_historicalRates.asp?product=Bonds&amp;instrument=WS05&amp;rateDisplay=WS05#topMenu" class="submenu" style="text-decoration:none;">WS05</a></td>
              </tr>
            </table>
        </div>
        
		 <div id="swapsOptions" style="float:left; clear:right; padding-top:2px; width:625; <%=displaySwaps%>"> 
        
          <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!--tr>
                    <td>&nbsp;</td>
                    <td class="breadcrumbsmall"><h7><span class="h7">Transnet </span></h7></td>
                    <td><a href="historicalRates.asp?product=Bonds&amp;instrument=T011&amp;rateDisplay=T011" class="submenu">T011</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=TN17&amp;rateDisplay=TN17" class="submenu">TN17</a> |<a href="historicalRates.asp?product=Bonds&amp;instrument=TN27&amp;rateDisplay=TN27" class="submenu">TN27</a></td>
              </tr-->
            <tr>
              <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2"><img src="images/spacer.gif" alt="spacer" width="10" height="10" /></td>
            </tr>
            <tr><tr>
              <td colspan="2">&nbsp;</td>
            </tr>
              <td colspan="2"><a href="rates_historicalRates.asp?product=Swaps&amp;instrument=1 Year&amp;rateDisplay=1 Year#topMenu" class="submenu" style="text-decoration:none;">1 Year</a> | <a href="rates_historicalRates.asp?product=Swaps&amp;instrument=2 Year&amp;rateDisplay=2 Year#topMenu" class="submenu" style="text-decoration:none;">2 Year</a> | <a href="rates_historicalRates.asp?product=Swaps&amp;instrument=3 Year&amp;rateDisplay=3 Year#topMenu" class="submenu" style="text-decoration:none;">3 Year</a> | <a href="rates_historicalRates.asp?product=Swaps&amp;instrument=4 Year&amp;rateDisplay=4 Year#topMenu" class="submenu" style="text-decoration:none;">4 Year</a> | <a href="rates_historicalRates.asp?product=Swaps&amp;instrument=5 Year&amp;rateDisplay=5 Year#topMenu" class="submenu" style="text-decoration:none;">5 Year</a> | <a href="rates_historicalRates.asp?product=Swaps&amp;instrument=6 Year&amp;rateDisplay=6 Year#topMenu" class="submenu" style="text-decoration:none;">6 Year</a> | <a href="rates_historicalRates.asp?product=Swaps&amp;instrument=7 Year&amp;rateDisplay=7 Year#topMenu" class="submenu" style="text-decoration:none;">7 Year</a> | <a href="rates_historicalRates.asp?product=Swaps&amp;instrument=8 Year&amp;rateDisplay=8 Year#topMenu" class="submenu" style="text-decoration:none;">8 Year</a> | <a href="rates_historicalRates.asp?product=Swaps&amp;instrument=9 Year&amp;rateDisplay=9 Year#topMenu" class="submenu" style="text-decoration:none;">9 Year</a></td>
            </tr>
            <tr>
              <td colspan="2"><a href="rates_historicalRates.asp?product=Swaps&amp;instrument=10 Year&amp;rateDisplay=10 Year#topMenu" class="submenu" style="text-decoration:none;">10 Year</a> | <a href="rates_historicalRates.asp?product=Swaps&amp;instrument=12 Year&amp;rateDisplay=12 Year#topMenu" class="submenu" style="text-decoration:none;">12 Year</a> | <a href="rates_historicalRates.asp?product=Swaps&amp;instrument=15 Year&amp;rateDisplay=15 Year#topMenu" class="submenu" style="text-decoration:none;">15 Year</a> | <a href="rates_historicalRates.asp?product=Swaps&amp;instrument=20 Year&amp;rateDisplay=20 Year#topMenu" class="submenu" style="text-decoration:none;">20 Year</a> | <a href="rates_historicalRates.asp?product=Swaps&amp;instrument=25 Year&amp;rateDisplay=25 Year#topMenu" class="submenu" style="text-decoration:none;">25 Year</a></td>
            </tr>
          </table>
      	</div>
        
		  <div id="frasOptions" style="float:left; clear:right; padding-top:4px; width:625; <%=displayFras%>">    

          <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!--tr>
                    <td>&nbsp;</td>
                    <td class="breadcrumbsmall"><h7><span class="h7">Transnet </span></h7></td>
                    <td><a href="historicalRates.asp?product=Bonds&amp;instrument=T011&amp;rateDisplay=T011" class="submenu">T011</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=TN17&amp;rateDisplay=TN17" class="submenu">TN17</a> |<a href="historicalRates.asp?product=Bonds&amp;instrument=TN27&amp;rateDisplay=TN27" class="submenu">TN27</a></td>
              </tr-->
            <tr>
              <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2"><img src="images/spacer.gif" alt="spacer" width="10" height="10" /></td>
            </tr>
            <tr>
              <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2"><img src="images/spacer.gif" alt="spacer" width="10" height="10" /></td>
            </tr>
            <tr><tr>
              <td colspan="2">&nbsp;</td>
            </tr><tr>
              <td colspan="2">&nbsp;</td>
            </tr>
              <td colspan="2"><a href="rates_historicalRates.asp?product=FRAS&amp;instrument=1x4 FRA&amp;rateDisplay=1x4 FRA#topMenu" class="submenu" style="text-decoration:none;">1x4</a> | <a href="rates_historicalRates.asp?product=FRAS&amp;instrument=2x5 FRA&amp;rateDisplay=2x5 FRA#topMenu" class="submenu" style="text-decoration:none;">2x5</a> | <a href="rates_historicalRates.asp?product=FRAS&amp;instrument=3x6 FRA&amp;rateDisplay=3x6 FRA#topMenu" class="submenu" style="text-decoration:none;">3x6</a> | <a href="rates_historicalRates.asp?product=FRAS&amp;instrument=4x7 FRA&amp;rateDisplay=4x7 FRA#topMenu" class="submenu" style="text-decoration:none;">4x7</a> | <a href="rates_historicalRates.asp?product=FRAS&amp;instrument=5x8 FRA&amp;rateDisplay=5x8 FRA#topMenu" class="submenu" style="text-decoration:none;">5x8</a> | <a href="rates_historicalRates.asp?product=FRAS&amp;instrument=6x9 FRA&amp;rateDisplay=6x9 FRA#topMenu" class="submenu" style="text-decoration:none;">6x9</a> | <a href="rates_historicalRates.asp?product=FRAS&amp;instrument=7x10 FRA&amp;rateDisplay=7x10 FRA#topMenu" class="submenu" style="text-decoration:none;">7x10</a> | <a href="rates_historicalRates.asp?product=FRAS&amp;instrument=8x11 FRA&amp;rateDisplay=8x11 FRA#topMenu" class="submenu" style="text-decoration:none;">8x11</a> | <a href="rates_historicalRates.asp?product=FRAS&amp;instrument=9x12 FRA&amp;rateDisplay=9x12 FRA#topMenu" class="submenu" style="text-decoration:none;">9x12</a> | <a href="rates_historicalRates.asp?product=FRAS&amp;instrument=12x15 FRA&amp;rateDisplay=12x15 FRA#topMenu" class="submenu" style="text-decoration:none;">12x15</a> | <a href="rates_historicalRates.asp?product=FRAS&amp;instrument=15x18 FRA&amp;rateDisplay=15x18 FRA#topMenu" class="submenu" style="text-decoration:none;">15x18</a> | <a href="rates_historicalRates.asp?product=FRAS&amp;instrument=21x24 FRA&amp;rateDisplay=21x24 FRA#topMenu" class="submenu" style="text-decoration:none;">21x24</a></td>
            </tr>
          </table>     
        </div>    
		  <div id="jibarOptions" style="float:left; clear:right; padding-top:6px; width:625; <%=displayJibar%>">    

          <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!--tr>
                    <td>&nbsp;</td>
                    <td class="breadcrumbsmall"><h7><span class="h7">Transnet </span></h7></td>
                    <td><a href="historicalRates.asp?product=Bonds&amp;instrument=T011&amp;rateDisplay=T011" class="submenu">T011</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=TN17&amp;rateDisplay=TN17" class="submenu">TN17</a> |<a href="historicalRates.asp?product=Bonds&amp;instrument=TN27&amp;rateDisplay=TN27" class="submenu">TN27</a></td>
              </tr-->
                          <tr>
              <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2"><img src="images/spacer.gif" alt="spacer" width="10" height="10" /></td>
            </tr>            
            <tr>
              <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2"><img src="images/spacer.gif" alt="spacer" width="10" height="10" /></td>
            </tr>
            <tr>
              <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2"><img src="images/spacer.gif" alt="spacer" width="10" height="10" /></td>
            </tr>
            <tr><tr>
              <td colspan="2">&nbsp;</td>
            </tr><tr>
              <td colspan="2">&nbsp;</td>
            </tr><tr>
              <td colspan="2">&nbsp;</td>
            </tr>
            
              <td colspan="2" style="alignment-baseline:"><a href="rates_historicalRates.asp?product=JIBAR&amp;instrument=3 Month&amp;rateDisplay=3 Month#topMenu" class="submenu" style="text-decoration:none;">3 Month</a></td>
            </tr>
          </table>     
        </div>            
    <div id="ratesDisclaimer" style="clear:both;">
      <p>&nbsp;</p>
      <p>Rates displayed are indicative only and are delayed by 15 minutes.<br />
      	FirstRand floating rate bond spreads are relative to 3 Month JIBAR.</p>
      </div>
        <!--div id="menuItems" style="float:left;">
          <table width="80" border="0" cellspacing="2">
            <tr>
              <td><span class="h7" onclick="MM_effectBlind('bondsData', 400, '0%', '100%', true)">BONDS &gt;&gt; </span></td>
            </tr>
            <tr>
              <td><span class="h7" onclick="MM_effectBlind('swapsData', 400, '0%', '100%', true)">SWAPS &gt;&gt; </span></td>
            </tr>
            <tr>
              <td><span class="h7" onclick="MM_effectBlind('frasData', 400, '0%', '100%', true)">FRAS &gt;&gt; </span></td>
            </tr>
          </table>
        </div>
        <div id="bondsData" style="float:right; display:none;">
        <table width="645" border="0" cellspacing="2">
          <tr>
            <td width="15%"><span class="h7">Government</span></td>
            <td width="74%"><a href="historicalRates.asp?product=Bonds&amp;instrument=R153&amp;rateDisplay=R153" class="submenu">R153</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=R157&amp;rateDisplay=R157" class="submenu">R157</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=R186&amp;rateDisplay=R186" class="submenu">R186</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=R197&amp;rateDisplay=R197" class="submenu">R197</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=R201&amp;rateDisplay=R201" class="submenu">R201</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=R202&amp;rateDisplay=R202" class="submenu">R202</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=R203&amp;rateDisplay=R203" class="submenu">R203</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=R204&amp;rateDisplay=R204" class="submenu">R204</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=R206&amp;rateDisplay=R206" class="submenu">R206</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=R207&amp;rateDisplay=R207" class="submenu">R207</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=R208&amp;rateDisplay=R208" class="submenu">R208</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=R209&amp;rateDisplay=R209" class="submenu">R209</a></td>
          </tr>
          <tr>
            <td class="breadcrumbsmall"><span class="h7">Transnet </span></td>
            <td><a href="historicalRates.asp?product=Bonds&amp;instrument=T011&amp;rateDisplay=T011" class="submenu">T011</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=TN17&amp;rateDisplay=TN17" class="submenu">TN17</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=TN23&amp;rateDisplay=TN23" class="submenu">TN23</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=TN27&amp;rateDisplay=TN27" class="submenu">TN27</a></td>
          </tr>
          <tr>
            <td><span class="h7">Eskom</span></td>
            <td><a href="historicalRates.asp?product=Bonds&amp;instrument=E170&amp;rateDisplay=E170" class="submenu">E170</a></td>
          </tr>
          <tr>
            <td><span class="h7">Telkom </span></td>
            <td><a href="historicalRates.asp?product=Bonds&amp;instrument=TK01&amp;rateDisplay=TK01" class="submenu">TK01</a></td>
          </tr>
          <tr>
            <td><span class="h7">TCTA </span></td>
            <td><a href="historicalRates.asp?product=Bonds&amp;instrument=WS03&amp;rateDisplay=WS03" class="submenu">WS03</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=WS04&amp;rateDisplay=WS04" class="submenu">WS04</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=WS05&amp;rateDisplay=WS05" class="submenu">WS05</a></td>
          </tr>
          <tr>
            <td><span class="h7">Umgeni </span></td>
            <td><a href="historicalRates.asp?product=Bonds&amp;instrument=UG65&amp;rateDisplay=UG65" class="submenu">UG65</a></td>
          </tr>
          <tr>
            <td><span class="h7">Rand Water</span></td>
            <td><a href="historicalRates.asp?product=Bonds&amp;instrument=RW02&amp;rateDisplay=RW02" class="submenu">RW02</a></td>
          </tr>
          <tr>
            <td><span class="h7">Land Bank</span></td>
            <td><a href="historicalRates.asp?product=Bonds&amp;instrument=LB01&amp;rateDisplay=LB01" class="submenu">LB01</a></td>
          </tr>
          <tr>
            <td><span class="h7">Development Bank</span></td>
            <td><a href="historicalRates.asp?product=Bonds&amp;instrument=DV07&amp;rateDisplay=DV07" class="submenu">DV07</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=DV21&amp;rateDisplay=DV21" class="submenu">DV21</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=DV23&amp;rateDisplay=DV23" class="submenu">DV23</a></td>
          </tr>
          <tr>
            <td><span class="h7">INCA </span></td>
            <td><a href="historicalRates.asp?product=Bonds&amp;instrument=IN03&amp;rateDisplay=IN03" class="submenu">IN03</a> | <a href="historicalRates.asp?product=Bonds&amp;instrument=IN04&amp;rateDisplay=IN04" class="submenu">IN04</a></td>
          </tr>
        </table>
        </div>    
		<div id="swapsData" style="float:right; display:none;">   
             <table width="645" border="0" cellspacing="2">
              <tr>
                <td colspan="2"><a href="historicalRates.asp?product=Swaps&amp;instrument=1 Year&amp;rateDisplay=1 Year" class="submenu">1 Year</a> | <a href="historicalRates.asp?product=Swaps&amp;instrument=2 Year&amp;rateDisplay=2 Year" class="submenu">2 Year</a> | <a href="historicalRates.asp?product=Swaps&amp;instrument=3 Year&amp;rateDisplay=3 Year" class="submenu">3 Year</a> | <a href="historicalRates.asp?product=Swaps&amp;instrument=4 Year&amp;rateDisplay=4 Year" class="submenu">4 Year</a> | <a href="historicalRates.asp?product=Swaps&amp;instrument=5 Year&amp;rateDisplay=5 Year" class="submenu">5 Year</a> | <a href="historicalRates.asp?product=Swaps&amp;instrument=6 Year&amp;rateDisplay=6 Year" class="submenu">6 Year</a> | <a href="historicalRates.asp?product=Swaps&amp;instrument=7 Year&amp;rateDisplay=7 Year" class="submenu">7 Year</a> | <a href="historicalRates.asp?product=Swaps&amp;instrument=8 Year&amp;rateDisplay=8 Year" class="submenu">8 Year</a> | <a href="historicalRates.asp?product=Swaps&amp;instrument=9 Year&amp;rateDisplay=9 Year" class="submenu">9 Year</a></td>
              </tr>
              <tr>
                <td colspan="2"><a href="historicalRates.asp?product=Swaps&amp;instrument=10 Year&amp;rateDisplay=10 Year" class="submenu">10 Year</a> | <a href="historicalRates.asp?product=Swaps&amp;instrument=12 Year&amp;rateDisplay=12 Year" class="submenu">12 Year</a> | <a href="historicalRates.asp?product=Swaps&amp;instrument=15 Year&amp;rateDisplay=15 Year" class="submenu">15 Year</a> | <a href="historicalRates.asp?product=Swaps&amp;instrument=20 Year&amp;rateDisplay=20 Year" class="submenu">20 Year</a> | <a href="historicalRates.asp?product=Swaps&amp;instrument=25 Year&amp;rateDisplay=25 Year" class="submenu">25 Year</a></td>
              </tr>
            </table>       
        
        </div>      
		<div id="frasData" style="float:right; display:none;">   
            <table width="645" border="0" cellspacing="2">
              <tr>
                <td colspan="2"><a href="historicalRates.asp?product=FRAS&amp;instrument=1x4 FRA&amp;rateDisplay=1x4 FRA" class="submenu">1x4</a> | <a href="historicalRates.asp?product=FRAS&amp;instrument=2x5 FRA&amp;rateDisplay=2x5 FRA" class="submenu">2x5</a> | <a href="historicalRates.asp?product=FRAS&amp;instrument=3x6 FRA&amp;rateDisplay=3x6 FRA" class="submenu">3x6</a> | <a href="historicalRates.asp?product=FRAS&amp;instrument=4x7 FRA&amp;rateDisplay=4x7 FRA" class="submenu">4x7</a> | <a href="historicalRates.asp?product=FRAS&amp;instrument=5x8 FRA&amp;rateDisplay=5x8 FRA" class="submenu">5x8</a> | <a href="historicalRates.asp?product=FRAS&amp;instrument=6x9 FRA&amp;rateDisplay=6x9 FRA" class="submenu">6x9</a> | <a href="historicalRates.asp?product=FRAS&amp;instrument=7x10 FRA&amp;rateDisplay=7x10 FRA" class="submenu">7x10</a> | <a href="historicalRates.asp?product=FRAS&amp;instrument=8x11 FRA&amp;rateDisplay=8x11 FRA" class="submenu">8x11</a> | <a href="historicalRates.asp?product=FRAS&amp;instrument=9x12 FRA&amp;rateDisplay=9x12 FRA" class="submenu">9x12</a> | <a href="historicalRates.asp?product=FRAS&amp;instrument=12x15 FRA&amp;rateDisplay=12x15 FRA" class="submenu">12x15</a> | <a href="historicalRates.asp?product=FRAS&amp;instrument=15x18 FRA&amp;rateDisplay=15x18 FRA" class="submenu">15x18</a> | <a href="historicalRates.asp?product=FRAS&amp;instrument=21x24 FRA&amp;rateDisplay=21x24 FRA" class="submenu">21x24</a></td>
              </tr>
            </table>      
        
        </div-->

        
          <!-- #include file="common/includes/db_open.asp" -->
<%
'SQL = "select * from tRates where product_type='"&product&"' and instrument_name='"&instrument&"' and datediff(day,rate_date,getDate()) <= 365  and datediff(day,rate_date,getDate()) >= 2 order by rate_date desc"

'SQL = "select distinct max(rate_date) as rate_date,product_type, instrument_name, quote_mid, quote_bid, quote_offer from tRates where product_type='"&product&"' and instrument_name='"&instrument&"' and datediff(day,rate_date,getDate()) <= 365 and datediff(day,rate_date,getDate()) >= 1 group by rate_date order by rate_date desc"

'SQL = "select max(rate_date) as rate_date, max(product_type) as product_type, max(instrument_name) as instrument_name, max(quote_mid) as quote_mid from tRates where product_type='"&product&"' and instrument_name='"&instrument&"' and datediff(day,rate_date,getDate()) <= 365 and datediff(day,rate_date,getDate()) >= 1 group by rate_date order by rate_date desc"

SQL = "select max(cast(floor(cast(rate_date as float)) as datetime)) as rate_date, max(product_type) as product_type, max(instrument_name) as instrument_name, max(quote_mid) as quote_mid from tRates where product_type='"&product&"' and instrument_name='"&instrument&"' and datediff(day,rate_date,getDate()) <= 365 and datediff(day,rate_date,getDate()) >= 1 group by cast(floor(cast(rate_date as float)) as datetime) order by cast(floor(cast(rate_date as float)) as datetime) desc"

	Set Rec = server.createobject("ADODB.Recordset")
	Rec.Open SQL,Conn
	if Rec.EOF then
		response.Write("No rate data to display")
	else
	

%>
<br />
<br />

<table border="0" cellpadding="0" cellspacing="0" width="175">
  <tr>
	<td width="100" height="20" class="borderBottomInside"><h6>Date</h6></td><td width="75" align="right" class="borderBottomInside"><h6>Mid</h6></td></tr>
    


<%

		Do while Not Rec.EOF	
		
		if (isnull(Rec("quote_mid"))) then
			quoteMid = "&nbsp;"
		else 
			quoteMid = formatnumber(Rec("quote_mid"),2)
		end if
		
		'if (isnull(Rec("quote_bid"))) then
		'	quoteBid = "&nbsp;"
		'else 
		'	quoteBid = formatnumber(Rec("quote_bid"),2)
		'end if

		'if (isnull(Rec("quote_offer"))) then
		'	quoteOffer = "&nbsp;"
		'else 
		'	quoteOffer = formatnumber(Rec("quote_offer"),2)
		'end if
			

		
			response.Write("<td height=""20"" class=""borderBottomInside"">"&Rec("rate_date")&"</td><td class=""borderBottomInside""  align=""right"">"&quoteMid&"</td></tr>")
					
		
		
		Rec.MoveNext
		loop

	
	
	end if

Set Rec=Nothing	

%>
<!-- #include file="common/includes/db_close.asp" -->
</table>
<br />
<br />
<table width="711" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="90" valign="baseline"><span class="blueContactView" > <img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Contact </span></td>
    <td width="621" valign="baseline">Fixed Income sales, RMB Global Markets on +27 11 269 9040</td>
  </tr>
</table>
<br />
<div><a href="#" class="backToTop"><img src="images/top.png" alt="" width="36" height="18" /></a><br />
               </div><!--#include file="common/includes/footer.asp"-->