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
			  
			case "6":
			  document.getElementById('namibia').style.display = 'block';
			  break;	
			case "7":
			  document.getElementById('nigeria').style.display = 'block';
			  break;
			case "9":
			  document.getElementById('na').style.display = 'block';
			  break;
			case "10":
			  document.getElementById('china').style.display = 'block';
			  break;
			case "11":
			  document.getElementById('india').style.display = 'block';
			  break;
			case "12":
			  document.getElementById('australia').style.display = 'block';
			  break;
			case "13":
			  document.getElementById('uae').style.display = 'block';
			  break;
		    case "14":
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
				document.getElementById('namibia').style.display = 'none';
				document.getElementById('nigeria').style.display = 'none';
				document.getElementById('na').style.display = 'none';
				document.getElementById('china').style.display = 'none';
				document.getElementById('india').style.display = 'none';
				document.getElementById('australia').style.display = 'none';
				document.getElementById('uae').style.display = 'none';
				document.getElementById('uk').style.display = 'none';
	
	}
</script>       
            
 
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
        </select></td>
    <td height="25" align="left"> <label for="lstContactUs2" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#666666; font-weight:bold;"> </label>
      <select name="lstContactUs2" id="lstContactUs2" onchange="changeLocation(this.value);" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#666666; font-weight:bold; width:150px;">
        <option value="5" selected="selected">Please select</option>
        <option value="6">Namibia</option>
        <option value="7">Nigeria</option>
        </select></td>
    <td height="25" align="left"> <label for="lstContactUs3" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#666666; font-weight:bold;"></label>
      <select name="lstContactUs3" id="lstContactUs3" onchange="changeLocation(this.value);" style="font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#666666; font-weight:bold; width:150px;">
        <option value="8" selected="selected">Please select</option>
        <option value="9">North America</option>
        <option value="10">China</option>
        <option value="11">India</option>
        <option value="12">Australia</option>
        <option value="13">United Arab Emirates</option>
        <option value="14">United Kingdom</option>
        </select>
  </td>
  </tr>
</table>
      
        </form>  
       
      
       
      <br />
<div id="johburg" style="display:block;" >
 <div id="contactMap" style="display:none; background:url(file:///Z|/RMB/2013/images/RMBMap.png) no-repeat;">
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
            The Village Unit 13<br />
            166 Robert Mugabe Ave <br />
            (Corner with Liliencron Street)<br />
            Windhoek </td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td colspan="2"><strong>Steve Galloway</strong></td>
            </tr>
            <tr>
              <td width="38%"><strong>Phone:</strong></td>
              <td width="62%">+264 61 41 6150</td>
            </tr>
            <tr>
              <td><strong>Fax:</strong></td>
              <td>+264 61 41 6155</td>
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
            12th Floor Churchgate  Towers 2 <br />
            Plot PC 31 <br />
            Churchgate Street<br />
            Victoria Island<br />
            Lagos<br />
            Nigeria</td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="38%"><strong>Phone:</strong></td>
              <td width="62%">+234 (0)1 463 7900</td>
            </tr>
            <tr>
              <td valign="top"><strong>Fax:</strong></td>
              <td>+234 (0)1 463  7901/2<br /></td>
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

<div id="na" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td  width="61%"><h4><strong>North America</strong></h4></td>
          <td  width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td valign="top"><strong>RMB Resources Inc.</strong><br />
            7114 West Jefferson Avenue <br />
            Suite 100<br />
            Lakewood<br />
            Denver Colorado 80235</td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td colspan="2"><strong>Rick Winters</strong></td>
            </tr>
            <tr>
              <td width="38%"><strong>Office:</strong></td>
              <td width="62%">+1 303 986 5135</td>
            </tr>
            <tr>
              <td height="13"><strong>Fax:</strong></td>
              <td>+1 303 986 5136</td>
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
              <td colspan="2"><strong>Julia Zhu Jin</strong></td>
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

<div id="india" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td  width="61%"><h4><strong>India</strong></h4></td>
          <td  width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><strong>FirstRand Bank Limited</strong><br />
            4th floor TCG Financial Centre<br />
            C-53 "G" Block Bandra-Kurla Complex<br />
            Bandra (E)<br />
			Mumbai – 400 051<br />
            India</td>
          <td valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><strong>Phone:</strong></td>
                <td>+91 22 6625 8600</td>
              </tr>
              <tr>
                <td width="38%"><strong>Fax:</strong></td>
                <td width="62%">+91 22 6625 8676</td>
              </tr>
            </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>

<div id="australia" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td  width="2%" height="20"><h4>&nbsp;</h4></td>
          <td width="61%"><h4><strong>Australia</strong></h4></td>
          <td width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><strong>RMB Australia Limited</strong><br />
            Level 13 60 Castlereagh Street<br />
            Sydney NSW 2000</td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="38%"><strong>Office:</strong></td>
              <td width="62%">+61 2 9256 6200</td>
            </tr>
            <tr>
              <td><strong>Fax:</strong></td>
              <td>+61 2 9256 6290</td>
            </tr>
            </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>

<div id="uae" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="2%" height="20"><h4>&nbsp;</h4></td>
          <td width="61%"><h4><strong>United Arab Emirates</strong></h4></td>
          <td width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td valign="top"><strong>FirstRand representative office</strong><br />
            Level 1, Gargash Building <br />
(next to Times Square)<br />
            Sheikh Zayed Road <br />
Dubai U.A.E. </td>
          <td valign="top"><strong>Naveen Agarwal</strong>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="38%"><strong>Office:</strong></td>
                <td width="62%">+97 14 371 3620</td>
              </tr>
            </table></td>
        </tr>
        </table>
      <p>&nbsp;</p>
</div>

<div id="uk" style="display:none;" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="2%" height="20"><h4>&nbsp;</h4></td>
          <td width="61%"><h4><strong>United Kingdom</strong></h4></td>
          <td width="37%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td valign="top">Austin Friars House<br />
            2-6 Austin Friars<br />
            London<br />EC2N 2HD</td>
          <td><strong>Patrick Smith</strong><br />
RMB International UK
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="38%"><strong>Office:</strong></td>
      <td width="62%">+44 20 7939 1700</td>
    </tr>
    <tr>
      <td><strong>Fax:</strong></td>
      <td>+44 207 939 1713</td>
    </tr>
  </table>
  <strong><br />
              <br />
              Stuart Greene</strong><br />
            RMB Resources: Mining
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="38%"><strong>Office:</strong></td>
                <td width="62%">+44 207 939 1700</td>
              </tr>
              <tr>
                <td><strong>Fax:</strong></td>
                <td>+44 207 939 1713</td>
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
      <p>&nbsp;</p>
      
      <div id="printThisOfficeLayout" style="display:none;" >
      	<div style="clear:both; height:99px;">
        	<div id="contactLogo"><img src="file:///Z|/RMB/2013/images/inside/contactPrint/logoWhite.gif" width="134" height="61" alt="RMB" /></div>
            <div id="contactWording">
            Rand Merchant Bank (RMB) is a diversified financial services brand encompassing 
investment banking, fund management, corporate banking and advisory services. <br />
All businesses in the RMB brand stable form part of the wider FirstRand Group. 
			</div>
            <div id="contactService"><table cellpadding="0" cellspacing="0" border="0"><tr><td><a href="javascript:void(0);" onclick="$('#maskOuter').remove();">Close&nbsp;&nbsp;</a></td><td><a href="javascript:void(0);" onclick="$('#maskOuter').remove();"><img src="file:///Z|/RMB/2013/images/inside/contactPrint/close.gif" width="19" height="19" alt="Close" /></a></td></tr></table></div> 
        </div>
        <div style="clear:both; padding-top:65px; margin-left:11px; padding-left:220px; border-bottom:1px solid #e8e8e8; width:717px;">
        	<h1>How to contact us</h1>
        
        
        </div>
        <div style="clear:both; padding-bottom:25px;"></div>
        
      </div>

<div id="printThisOfficeLayoutBottom" style="display:none;" >

        <div style="clear:both; margin-top:20px; width:937px; margin-left:11px; border-top:1px solid #e8e8e8;">
        	<div style="float:left; width:180px; margin-top:10px; margin-left:23px;" onmouseover="this.style.cursor='pointer';" onclick="printDiv();"><h3 class="blueContactView"><img src="file:///Z|/RMB/2013/images/arrowButton.png" alt="" width="18" height="17" align="left" />&nbsp;&nbsp;Print</h3></div><div style="width:537px; float:right; text-align:right; margin-top:10px;">Copyright &copy; FirstRand 2013. All rights reserved.&nbsp;&nbsp;&nbsp;&nbsp;</div>
        
        
        </div>
        
      </div>      
      
      
      
      <script type="text/javascript">
<!--//

var thisOffice = "1";

function printThisOffice() {
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
		  
		case "6":
			y =  $( "div#namibia" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;	
		case "7":
			y =  $( "div#nigeria" ).html();
			newText = style  + "<div class='contactAddress'>" +  y + "</div>" +  styleBottom;
		  break;
		case "9":
			y =  $( "div#na" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		case "10":
			y =  $( "div#china" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		case "11":
			y =  $( "div#india" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		case "12":
			y =  $( "div#australia" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		case "13":
			y =  $( "div#uae" ).html();
			newText = style + "<div class='contactAddress'>" +  y + "</div>" + styleBottom;
		  break;
		case "14":
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


</script><!--#include file="common/includes/footer.asp"-->