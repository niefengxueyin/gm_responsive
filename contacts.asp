<%@LANGUAGE="VBSCRIPT" %>
<!--#include file="common/includes/header.asp"-->
     <script type="text/javascript">
	 		 function goToGoogle(){

			 window.open('https://maps.google.co.za/maps/ms?msid=217715443872355631320.0004cefd342a48faa7782&msa=0&ll=-26.101063,28.056952&spn=0.001366,0.002642');
			 }
	 function changeLocation(n){
		 
		thisOffice = n;
		 
		 
		hideLocations();
		switch(n)
			{
			case "0":
			  document.getElementById('allLocations').style.display = 'block';
			  break;
			  
			case "1":
			  document.getElementById('johburg').style.display = 'block';
			  break;
			  
			case "2":
			  document.getElementById('capeTown').style.display = 'block';
			  break;
			  
			case "3":
			  document.getElementById('durban').style.display = 'block';
			  break;  
			  
			case "4":
			  document.getElementById('pe').style.display = 'block';
			  break;
			  
			  case "5":
			  document.getElementById('stellen').style.display = 'block';
			  break;
			  
			case "7":
			  document.getElementById('namibia').style.display = 'block';
			  break;	
			  
			case "8":
			  document.getElementById('nigeria').style.display = 'block';
			  break;
			  
			case "9":
			  document.getElementById('mozam').style.display = 'block';
			  break;
			  
			case "10":
			  document.getElementById('lesotho').style.display = 'block';
			  break;
			  
			case "11":
			  document.getElementById('bots').style.display = 'block';
			  break;
			  
			case "12":
			  document.getElementById('swazi').style.display = 'block';
			  break;
			  
			  case "13":
			  document.getElementById('tanz').style.display = 'block';
			  break;
			  
			  case "14":
			  document.getElementById('zam').style.display = 'block';
			  break;
			
			case "16":
			  document.getElementById('china').style.display = 'block';
			  break;
			  
			case "17":
			  document.getElementById('india').style.display = 'block';
			  break;
			  
		    case "18":
			  document.getElementById('uk').style.display = 'block';
			  break;			  				  			  		  
			      
			default:
			  break; 
			}
			
	 }
	 function showMap(){

		document.getElementById('contactMap').style.display = 'block'; 
		 //$("contactMap").fadeIn();
		 }
	function hideMap(){
		document.getElementById('contactMap').style.display = 'none'; 
		}
		
	 function showMap2(){
		 document.getElementById('contactMap2').style.display = 'block'; 
		//document.getElementById('contactMap').fadeIn(1000); //= 'block'; 
		 //$("contactMap").fadeIn();
		 }
	function hideMap2(){
		document.getElementById('contactMap2').style.display = 'none'; 
		}
function hideLocations(){
	
			  	document.getElementById('allLocations').style.display = 'none';
				document.getElementById('capeTown').style.display = 'none';
				document.getElementById('johburg').style.display = 'none';
				document.getElementById('durban').style.display = 'none';
				document.getElementById('pe').style.display = 'none';
				document.getElementById('stellen').style.display = 'none';
				
				document.getElementById('namibia').style.display = 'none';
				document.getElementById('nigeria').style.display = 'none';
				document.getElementById('mozam').style.display = 'none';
				document.getElementById('lesotho').style.display = 'none';
				document.getElementById('bots').style.display = 'none';
				document.getElementById('swazi').style.display = 'none';
				document.getElementById('tanz').style.display = 'none';
				document.getElementById('zam').style.display = 'none';
				
				document.getElementById('china').style.display = 'none';
				document.getElementById('india').style.display = 'none';
				document.getElementById('uk').style.display = 'none';
	
	}
</script>       
            
 
      <h2>Contact us</h2><table width="500" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="393"><table width="500" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="107"><strong>                Email address :</strong></td>
              <td width="393"><a href="mailto:globalmarkets@rmb.co.za">                globalmarkets@rmb.co.za</a></td>
            </tr>
          </table>            <a href="mailto:globalmarkets@rmb.co.za"></a></td>
        </tr>
      </table></p></p>
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="50%" valign="top"><p><strong>Africa Sales and Trading</strong><br />
            +27 11 282-8664/4412</p>
            <p><strong>Agricultural Trading and Hedging</strong><br />
              +27 11 269-9800</p>
            <p><strong>Cross-Asset Solutions</strong><br />
              +27 11 269 9030</p>
            <p><strong>Customer Dealing and Sales</strong><br />
              +27 11 269-9230/9175</p>
            <p><strong>Distribution and Institutional Solutions </strong><br />
              +27 11 269-9295 </p>
            <p><strong>Energy and Metals Trading </strong><br />
              +27 11 269-9140</p>
            <p><strong>Equities Prime Broking</strong><br />
              +27 11 282-1941</p>
            <p><strong>Equity Sales and Research</strong><br />
              +27 11 282 8286</p>
            <p><strong>Fixed Income Derivatives Trading</strong><br />
              +27 11 269 9065</p>
            <p><strong>Fixed Income Prime Broking </strong><br />
              +27 11 282-1941            </p>
            <p><strong>Fixed Income Sales </strong><br />
              +27 11 269-9040/9100<br />
              +27 21 658-9375</p>
            <p><strong>Fixed Income Trading </strong><br />
              +27 11 269-9040<br />
              </p>
            <p><strong>Foreign Exchange Forwards </strong><br />
              +27 11 269-9130</p>
            <p><strong>Foreign Exchange Options Trading</strong><br />
              +27 11 269-9150</p>
            
            <td width="50%" valign="top"><p><strong>Funding </strong><br />
              +27 11 269-9075</p>
              <p><strong>Global Markets Fund Solutions</strong><br />
              +27 11 269 9520</p>
              <p><strong>Futures Clearing</strong><br />
              +27 11 282 8375</p>
              <p><strong>Global Markets Structuring </strong><br />
              +27 11 269 9150/9030</p>
              <p><strong>Inflation</strong><br />
              +27 11 269-9300</p>
              <p><strong>Money Market Trading </strong><br />
              +27 11 269-9075</p>
              <p><strong>Nostro Services </strong><br />
              +27 11 282-1284</p>
              <p><strong>Prime Broking </strong><br />
              +27 11 282-1941</p>
              <p><strong>Reporting Solutions</strong><br />
              +27 11 282-1941/4472</p>
              <p><strong>RMB Morgan Stanley Trading</strong><br />
              +27 11 269-9260</p>
              <p><strong>RMB Stockbroking Operations</strong><br />
              +27 11 282-8401</p>
              <p><strong>Securities Lending</strong><br />
              +27 11 269-9719</p>
              <p><strong>Structured Credit Trading</strong><br />
              +27 11 269-9295</p>
              <p><strong>Structured Trade and Commodity Finance</strong><br />
              +27 11 282-8542</p></td>
        </tr>
    </table>
      <h2>Our offices</h2>
      <form id="form1" name="form1" method="post" action="">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="28%" height="25" align="left"><h3 class="blueContactView"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Select a location</h3></td>
    <td width="24%" height="25" align="left"><h3>South African offices</h3></td>
    <td width="24%" height="25" align="left"><h3>African offices</h3></td>
    <td width="24%" height="25" align="left"><h3>International offices</h3></td>
  </tr>
  <tr>
    <td height="25" align="left">&nbsp;</td>
    <td height="25" align="left">
      <label for="lstContactUs" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#666666; font-weight:bold;"> </label>
      <select name="lstContactUs" id="lstContactUs" onchange="changeLocation(this.value);" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#666666; font-weight:bold; width:150px;">
        <option value="1" selected="selected">Johannesburg</option>
        <option value="2">Cape Town</option>
        <option value="3">Durban</option>
        <option value="4">Port Elizabeth</option>
         <option value="5">Stellenbosch</option>
        
        </select></td>
    <td height="25" align="left"> <label for="lstContactUs2" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#666666; font-weight:bold;"> </label>
      <select name="lstContactUs2" id="lstContactUs2" onchange="changeLocation(this.value);" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#666666; font-weight:bold; width:150px;">
        <option value="6" selected="selected">Please select</option>
        <option value="7">Namibia</option>
        <option value="8">Nigeria</option>
         <option value="9">Mozambique</option>
        <option value="10">Lesotho</option> 
        <option value="11">Botswana</option>
        <option value="12">Swaziland</option>
         <option value="13">Tanzania</option>
        <option value="14">Zambia</option>
       
       
        </select></td>
    <td height="25" align="left"> <label for="lstContactUs3" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#666666; font-weight:bold;"></label>
      <select name="lstContactUs3" id="lstContactUs3" onchange="changeLocation(this.value);" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#666666; font-weight:bold; width:150px;">
        <option value="15" selected="selected">Please select</option>
        <option value="16">China</option>
        <option value="17">India</option>
        <option value="18">United Kingdom</option>
        </select>
  </td>
  </tr>
</table>
      
      </form>  
       
      
       
      <br />
<div id="johburg" style="display:block;" >
 <div id="contactMap" style="display:none; background:url(images/RMBMap.png) no-repeat;">
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  	<tr >
 		<td width="67%" height="316" >&nbsp;</td>
 		<td width="22%" >&nbsp;</td>
        <td width="11%" >&nbsp;</td>
 	</tr>
 	<tr >
 		<td width="67%" height="28" >&nbsp;</td>
 		<td width="22%"  onclick="goToGoogle();" onmouseover="this.style.cursor='pointer'">&nbsp;</td>
        <td width="11%" >&nbsp;</td>
 	</tr>
 	<tr >
 	  <td height="16" align="right" style="padding-top:3px;">&nbsp;</td>
 	  <td align="right" style="padding-top:3px;">&nbsp;</td>
 	  <td align="right" style="padding-top:3px;">&nbsp;</td>
 	  </tr>
 	<tr >
 		<td width="67%" height="23" align="right" style="padding-top:3px;">&nbsp;</td>
 		<td width="22%" align="right" style="padding-top:3px;"><a href="#" onclick="hideMap();">Hide map</a>&nbsp;</td>
        <td width="11%" align="right" style="padding-top:3px;">&nbsp;</td>
 	</tr>
 </table>
 </div>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="2%"  height="20"><h4>&nbsp;</h4></td>
          <td width="33%" ><h4>Johannesburg</h4></td>
          <td width="28%" ><h4>&nbsp;</h4></td>
          <td width="37%" >&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><strong>Physical  address</strong><br />
            1 Merchant Place<br />
            Cnr Fredman Drive <br />
            &amp; Rivonia Road<br />
            Sandton 2196<br />
            South Africa</td>
          <td valign="top"><strong>Postal address</strong><br />
            PO Box 786273<br />
            Sandton 2146<br />
            South Africa</td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="38%"><strong>Switchboard:</strong></td>
              <td width="62%">+27 11 282 8000</td>
            </tr>
            <tr>
              <td><strong>Fax:</strong></td>
              <td>+27 11 282 8008</td>
            </tr>
            <tr>
              <td><strong>Email:</strong></td>
              <td><a href="mailto:info@rmb.co.za">info@rmb.co.za</a></td>
            </tr>
            <tr>
              <td><strong>Directions:</strong></td>
              <td><a href="#" onclick="showMap();">View map</a></td>
            </tr>
            </table></td>
        </tr>
        </table>
        
        <p>&nbsp;</p>

</div>
<div id="capeTown" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="2%" height="20"><h4>&nbsp;</h4></td>
          <td width="33%"><h4><strong>Cape Town</strong></h4></td>
          <td width="28%"><h4>&nbsp;</h4></td>
          <td width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><strong>Physical  address</strong><br />
            3rd Floor<br />
            Great Westerford<br />
            Main Road<br />
            Rondebosch 7700<br />
            South Africa</td>
          <td valign="top"><strong>Postal address</strong><br />
            PO Box 911<br />
            Cape Town 8000<br />
            South Africa</td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="38%"><strong>Phone:</strong></td>
              <td width="62%">+27 21 658 9305</td>
            </tr>
            <tr>
              <td><strong>Fax:</strong></td>
              <td>+27 21 658 9316</td>
            </tr>
            </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>
<div id="durban" style="display:none;" >
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="2%" height="20"><h4>&nbsp;</h4></td>
          <td width="33%"><h4><strong>Durban</strong></h4></td>
          <td width="28%"><h4>&nbsp;</h4></td>
          <td width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><strong>Physical  address</strong><br />
            Rydall Vale Park<br />
            Douglas Saunders Drive<br />
            La Lucia Ridge<br />
            KwaZulu-Natal<br />
            South Africa</td>
          <td valign="top"><strong>Postal address</strong><br />
            PO Box 4130<br />
            The Square<br />
            Umhlanga Rocks 4320<br />
            South Africa</td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><strong>Phone:</strong></td>
              <td>+27 31 580 6390</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><em>(Money Market)</em></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>+27 31 580 6410</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><em>(Forex)</em></td>
            </tr>
            <tr>
              <td width="38%">&nbsp;</td>
              <td width="62%">&nbsp;</td>
            </tr>
          </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>
<div id="pe" style="display:none;" >
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="2%" height="20"><h4>&nbsp;</h4></td>
          <td width="33%"><h4><strong>Port Elizabeth</strong></h4></td>
          <td width="28%"><h4>&nbsp;</h4></td>
          <td width="37%">&nbsp;</td> 
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td valign="top"><strong>Physical  address</strong><br />
            Rand Merchant Bank <br />
            FNB Newton Place<br />
            6th Floor, 16 Newton Street<br />
            Newton Park<br />
            6045 <br />
            Port Elizabeth<br />
            South Africa</td>
          <td valign="top"><strong>Postal address</strong><br />
            PO Box 64083<br />
            Greenacres<br />
            Port Elizabeth 6057<br />
            South Africa</td>
          <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="38%"><strong>Phone:</strong></td>
              <td width="62%">+27 41 394 2511</td>
            </tr>
            <tr>
              <td><strong>Fax:</strong></td>
              <td>+27 41 394 2510</td>
            </tr>
          </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>

<div id="stellen" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td  width="61%"><h4><strong>Stellenbosch </strong></h4></td>
          <td  width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td valign="top"><strong>Physical  address</strong><br />
           3rd floor<br />
Anglo African Building<br />
4 Plein Street<br />
Stellenbosch<br />
7599 
</td>
          <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="38%"><strong>Phone:</strong></td>
              <td width="62%">+27 21 888 8311</td>
            </tr>
            <tr>
              <td valign="top"><strong>Fax:</strong></td>
              <td> 	+27 21 886 5034<br /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              </tr>
            <tr>
              <td valign="top">&nbsp;</td>
              <td valign="top">&nbsp;</td>
              </tr>
          </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>

<div id="namibia" style="display:none;" >
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="2%" height="20"><h4>&nbsp;</h4></td>
          <td width="61%"><h4><strong>Namibia</strong></h4></td>
          <td width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td valign="top"><strong>Physical  address</strong><br />
            209 - 211 Independence Ave<br />
FNB Building<br />
Windhoek<br />
9000<br />
Namibia
</td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
           
            </tr>
            <tr>
              <td width="38%"><strong>Phone:</strong></td>
              <td width="62%"> +264  61 299 2265</td>
            </tr>
            <tr>
              <td><strong>Email:</strong></td>
              <td><a href="mailto:michellevw@fnbnamibia.com.na">michellevw@fnbnamibia.com.na</a></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>

<div id="nigeria" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td  width="61%"><h4><strong>Nigeria </strong></h4></td>
          <td  width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td valign="top"><strong>Physical  address</strong><br />
           FirstRand Bank Representative office (Nigeria) Limited<br />
Maersk House (3rd Floor)<br />
121 Louis Solomon Close <br />
Victoria Island<br />
Lagos<br />
Nigeria	 	
</td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="38%"><strong>Phone:</strong></td>
              <td width="62%">+234 1 280 2005</td>
            </tr>
            <tr>
              <td valign="top"><strong>Fax:</strong></td>
              <td>+234 1 280 2004<br /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              </tr>
            <tr>
              <td valign="top">&nbsp;</td>
              <td valign="top">&nbsp;</td>
              </tr>
          </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>



<div id="mozam" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td  width="61%"><h4><strong>Mozambique </strong></h4></td>
          <td  width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td valign="top"><strong>Physical  address</strong><br />
          JAT Building<br />
1 Floor, Room 8<br />
Av. 25 de Stembro, n420<br />
Maputo<br />
Mozambique	 	
</td>
          <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="38%"><strong>Phone:</strong></td>
              <td width="62%">+258 21 356921</td>
            </tr>
            <tr>
              <td valign="top"><strong>Email:</strong></td>
              <td><a href="mailto:jeronimo.defarialopes@fnb.co.mz">jeronimo.defarialopes@fnb.co.mz</a><br /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              </tr>
            <tr>
              <td valign="top">&nbsp;</td>
              <td valign="top">&nbsp;</td>
              </tr>
          </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>




<div id="lesotho" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td  width="61%"><h4><strong>Lesotho </strong></h4></td>
          <td  width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td valign="top"><strong>Physical  address</strong><br />
     Corner Kingsway and Parliament Road<br />
Maseru
</td>
          <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="38%"><strong>Phone:</strong></td>
              <td width="62%">+267 364 2686 </td>
            </tr>
            <tr>
              <td valign="top"><strong></strong></td>
              <td> <br /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              </tr>
            <tr>
              <td valign="top">&nbsp;</td>
              <td valign="top">&nbsp;</td>
              </tr>
          </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>


<div id="bots" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td  width="61%"><h4><strong>Botswana </strong></h4></td>
          <td  width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td valign="top"><strong>Physical  address</strong><br />
           Plot 5543<br />
Central Business District<br />
First Place<br />
Gaborone<br />
Botswana</td>
          <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="38%"><strong>Phone:</strong></td>
              <td width="62%">+234 (0)1 463 7900</td>
            </tr>
            <tr>
              <td valign="top"><strong>Email:</strong></td>
              <td><a href="mailto:treasury@fnbbotswana.co.bw">treasury@fnbbotswana.co.bw</a><br /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              </tr>
            <tr>
              <td valign="top">&nbsp;</td>
              <td valign="top">&nbsp;</td>
              </tr>
          </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>


<div id="swazi" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td  width="61%"><h4><strong>Swaziland</strong></h4></td>
          <td  width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td valign="top"><strong>Physical address</strong><br />
            Sales House Building <br />
            2nd Floor<br />
           Swazi Plaza<br />
            Mbabane<br />
            Swaziland</td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                       <tr>
              <td width="38%"><strong>Office:</strong></td>
              <td width="62%">+268 404 2800</td>
            </tr>
            <tr>
              <td height="13"><strong>Email:</strong></td>
              <td><a href="mailto:kdlamini@fnb.co.za">kdlamini@fnb.co.za</a></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>





<div id="tanz" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td width="61%"><h4><strong>Tanzania</strong></h4></td>
          <td width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><strong>Physical address</strong><br />
            2nd Floor<br />
FNB House<br />
Ohio Street<br />
Dar es Salaam<br />
Tanzania
</td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="38%"><strong>Office:</strong></td>
              <td width="62%">+255 768 989 049</td>
            </tr>
            <tr>
              <td><strong>Email:</strong></td>
              <td><a href="mailto:kblakeway@fnb.co.tz">kblakeway@fnb.co.tz</a></td>
            </tr>
            </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>

<div id="zam" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td width="61%"><h4><strong>Zambia</strong></h4></td>
          <td width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><strong>Physical address</strong><br />
            Plot No. 22768<br />
Corner Great East &<br />
Thabo Mbeki Rd <br />
Lusaka<br />
Zambia
</td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="38%"><strong>Phone:</strong></td>
              <td width="62%">+260 (211) 366 800</td>
            </tr>
            <tr>
              <td><strong>Email:</strong></td>
              <td><a href="mailto:amuyaba@fnbzambia.co.zm">amuyaba@fnbzambia.co.zm</a></td>
            </tr>
            </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>


<div id="india" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td  width="61%"><h4><strong>India</strong></h4></td>
          <td  width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><strong>Physical Address</strong><br />
          MistryBhavan Building<br />
122 DinshaVachha Road<br />
Churchgate<br />
Mumbai - 400 020<br />

            India</td>
          <td valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><strong>Phone:</strong></td>
                <td>+91 22 6625 8703</td>
              </tr>
              <tr>
                <td width="38%"><strong>Email:</strong></td>
                <td width="62%"><a href="mailto:harihar.krishnamoorthy@firstrand.co.in">harihar.krishnamoorthy@firstrand.co.in</a></td>
              </tr>
            </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>

<div id="china" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td  width="61%"><h4><strong>China</strong></h4></td>
          <td  width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><strong>FirstRand  Bank Limited <br />
            Shanghai representative office</strong><br />
            Unit B, 20/F Huamin Empire Plaza<br />
            No 726 Yan An Rd West<br />
            Shanghai 200050 </td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td colspan="2"></td>
              </tr>
            <tr>
              <td width="38%"><strong>Office:</strong></td>
              <td width="62%">+86 216 210 0909</td>
            </tr>
            <tr>
              <td><strong>Fax:</strong></td>
              <td>+86 216 210 0993</td>
            </tr>
            <tr>
              <td><strong>Email:</strong></td>
              <td><a href="mailto:zhu.jin@firstrand.co.za">zhu.jin@firstrand.co.za</a></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>


<div id="uk" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td  width="61%"><h4><strong>United Kingdom </strong></h4></td>
          <td  width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td valign="top"><strong>Physical  address</strong><br />
     Austin Friars House<br />2-6 Austin Friars<br/>
London<br />
EC2N 2HD
</td>
          <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="38%"><strong>Phone:</strong></td>
              <td width="62%">+44 20 7939 1700 </td>
            </tr>
            
            <tr>
              <td width="38%"><strong>Fax:</strong></td>
              <td width="62%">+44 20 7939 1728 </td>
            </tr>
            <tr>
              <td valign="top"><strong></strong></td>
              <td> <br /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              </tr>
            <tr>
              <td valign="top">&nbsp;</td>
              <td valign="top">&nbsp;</td>
              </tr>
          </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>

<div id="allLocations"  >



</div>
              
      <table width="100" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="28%" height="25" align="left" onclick="printThisOffice();" onmouseover="this.style.cursor='pointer';"><h3 class="blueContactView"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Print</h3></td>
        </tr>
        </table>
      <div><a href="#" class="backToTop"><img src="images/top.png" alt="" width="36" height="18" /></a><br />
    </div>
      
      <div id="printThisOfficeLayout" style="display:none;" >
        <div style="clear:both; height:99px;">
        	<div id="contactLogo"><img src="images/inside/contactPrint/logoWhite.gif" width="134" height="61" alt="RMB" />
            </div>
            <div id="contactWording">
            Rand Merchant Bank (RMB) is a diversified financial services brand encompassing 
investment banking, fund management, corporate banking and advisory services. <br />
All businesses in the RMB brand stable form part of the wider FirstRand Group. 
			</div>
            <div id="contactService"><table cellpadding="0" cellspacing="0" border="0"><tr><td><a href="javascript:void(0);" onclick="$('#maskOuter').remove();">Close&nbsp;&nbsp;</a></td><td><a href="javascript:void(0);" onclick="$('#maskOuter').remove();"><img src="images/inside/contactPrint/close.gif" width="19" height="19" alt="Close" /></a></td></tr></table></div> 
        </div>
        <div style="clear:both; padding-top:65px; margin-left:11px; padding-left:220px; border-bottom:1px solid #e8e8e8; width:717px;">
        	<h1>How to contact us</h1>
        
        
        </div>
        <div style="clear:both; padding-bottom:25px;"></div>
      </div>
      <div id="printThisOfficeLayoutBottom" style="display:none;" >

        <div style="clear:both; margin-top:20px; width:937px; margin-left:11px; border-top:1px solid #e8e8e8;">
        	<div style="float:left; width:180px; margin-top:10px; margin-left:23px;" onmouseover="this.style.cursor='pointer';" onclick="printDiv();"><h3 class="blueContactView"><img src="images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Print</h3></div><div style="width:537px; float:right; text-align:right; margin-top:10px;">Copyright &copy; FirstRand 2013. All rights reserved.&nbsp;&nbsp;&nbsp;&nbsp;</div>
        	<script type="text/javascript">
<!--//

var thisOffice = "1";

function printThisOffice()
 {
	
	x = thisOffice;
	style = $( "div#printThisOfficeLayout" ).html();
	
	styleBottom = $( "div#printThisOfficeLayoutBottom" ).html();
	
	
	
	switch(x)
	{
		case "1":
			y =  $( "div#johburg" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		
		break;
		
		case "2":
			y =  $( "div#capeTown" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		
		break;
		
		case "3":
			y =  $( "div#durban" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;  
		  
		case "4":
			y =  $( "div#pe" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		  
		  case "5":
			y =  $( "div#stellen" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		  
		case "7":
			y =  $( "div#namibia" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;	
		  
		case "8":
			y =  $( "div#nigeria" ).html();
			newText = style  + "<div class='contactAddress'>" +  y + "</div>" +  styleBottom;
		  break;
		  
		case "9":
			y =  $( "div#mozam" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		  
		case "10":
			y =  $( "div#lesotho" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		  
		case "11":
			y =  $( "div#bots" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		  
		case "12":
			y =  $( "div#swazi" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		  
		case "13":
			y =  $( "div#tanz" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		  
		case "14":
			y =  $( "div#zam" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;	
		  
		  
		  case "16":
			y =  $( "div#china" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		  
		case "17":
			y =  $( "div#india" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		  
		case "18":
			y =  $( "div#uk" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;						
		
		  					
		
	}

	
	$('body').append('<div id="maskOuter"><div id="maskInner">'+newText+'</div></div> ');
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();
 
    $('#maskOuter').css({ 'width': maskWidth, 'height': maskHeight, top: 0 });
		
}

function printDiv() {
	var myStyle = '<link rel="stylesheet" href="common/css/style_contact.css" />';
	
	
	w=window.open(null, 'Print_Page', 'scrollbars=yes');        
 

	w.document.write(myStyle + jQuery('#maskOuter').html());
	w.document.close();
    w.print();	
	w.window.close();

	
	
}

//-->


            </script>
        </div></div>
               <!--#include file="common/includes/footer.asp"-->