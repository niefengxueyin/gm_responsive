var riskB = 0;
var pwcB = 0; //financial
var financialMailB = 0; //infraStructure
var awardsB = 0; //mining
var bankerB = 0; //oil
var infrastructureB = 0; //transport
var emeaAfricanB = 0;
var emeaAchieveB= 0;
var mergermarketB = 0;
var absipB = 0;
var jseB = 0;
var bloombergB = 0;
var acqB = 0;
var dealmakersB= 0;
var gtrB = 0;
var euromoneyB = 0;
var projectB = 0;
var infrastructureB = 0;
var emeaAchieve1B= 0;
var emeaProjectB= 0;
var mergermarket1B = 0;
var ernstB = 0;
var ernst2B = 0;
var dealmaker2B = 0; //financial
var risk2B = 0; //infraStructure
var euromoney2B = 0; //mining
var jse2B = 0; //oil
var africanInvestorB = 0; //transport
var accreditationB = 0;
var priceWaterB= 0;
var banker2B = 0;
var gtr2B = 0;
var otherB = 0;
var pwc1B= 0;
var riskSaRankings1 = 0;
var bankerDeal1 = 0;
var riskSaRankings1 = 0;
var saPremier1 = 0;
var alexanderB= 0;
var globalB= 0;

function HideDIV(d) { document.getElementById(d).style.display = "none"; }

function DisplayDIV(d) { document.getElementById(d).style.display = "block"; }

function hideShow(x) {
	
	switch(x)
	{
		case "riskB":	
			if (riskB == 0) {
				DisplayDIV(x);
				riskB = 1;
				MM_swapImage('riskBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				riskB = 0;
				MM_swapImage('riskBpic','','images/arrowButton.png',1);
			}
			
		break;
		
		case "ernstB":	
			if (ernstB == 0) {
				DisplayDIV(x);
				ernstB = 1;
				MM_swapImage('ernstBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				ernstB = 0;
				MM_swapImage('ernstBpic','','images/arrowButton.png',1);
			}
			
		break;
		case "absipB":	
			if (absipB == 0) {
				DisplayDIV(x);
				absipB = 1;
				MM_swapImage('absipBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				absipB = 0;
				MM_swapImage('absipBpic','','images/arrowButton.png',1);
			}
			
		break;
		case "pwcB":	
			if (pwcB == 0) {
				DisplayDIV(x);
				pwcB = 1;
				MM_swapImage('pwcBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				pwcB = 0;
				MM_swapImage('pwcBpic','','images/arrowButton.png',1);
			}
			
		break;		
		
		case "financialMailB":	
			if (financialMailB == 0) {
				DisplayDIV(x);
				financialMailB = 1;
				MM_swapImage('financialMailBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				financialMailB = 0;
				MM_swapImage('financialMailBpic','','images/arrowButton.png',1);
			}
			
		break;			
		
		case "awardsB":	
			if (awardsB == 0) {
				DisplayDIV(x);
				awardsB = 1;
				MM_swapImage('awardsBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				awardsB = 0;
				MM_swapImage('awardsBpic','','images/arrowButton.png',1);
			}
			
		break;				
		
		case "bankerB":	
			if (bankerB == 0) {
				DisplayDIV(x);
				bankerB = 1;
				MM_swapImage('bankerBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				bankerB = 0;
				MM_swapImage('bankerBpic','','images/arrowButton.png',1);
			}
			
		break;	
		
		case "infrastructureB":	
			if (infrastructureB == 0) {
				DisplayDIV(x);
				infrastructureB = 1;
				MM_swapImage('infrastructureBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				infrastructureB = 0;
				MM_swapImage('infrastructureBpic','','images/arrowButton.png',1);
			}
			
		break;			
		
		case "emeaAfricanB":	
			if (emeaAfricanB == 0) {
				DisplayDIV(x);
				emeaAfricanB = 1;
				MM_swapImage('emeaAfricanBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				emeaAfricanB = 0;
				MM_swapImage('emeaAfricanBpic','','images/arrowButton.png',1);
			}
			
		break;	
		case "mergermarket1B":	
			if (mergermarket1B == 0) {
				DisplayDIV(x);
				mergermarket1B = 1;
				MM_swapImage('mergermarket1Bpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				mergermarket1B = 0;
				MM_swapImage('mergermarket1Bpic','','images/arrowButton.png',1);
			}
			
		break;	
		case "mergermarketB":	
			if (mergermarketB == 0) {
				DisplayDIV(x);
				mergermarketB = 1;
				MM_swapImage('mergermarketBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				mergermarketB = 0;
				MM_swapImage('mergermarketBpic','','images/arrowButton.png',1);
			}
			
		break;	
		case "emeaProjectB":	
			if (emeaProjectB == 0) {
				DisplayDIV(x);
				emeaProjectB = 1;
				MM_swapImage('emeaProjectBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				emeaProjectB = 0;
				MM_swapImage('emeaProjectBpic','','images/arrowButton.png',1);
			}
			
		break;		
		case "projectB":	
			if (projectB == 0) {
				DisplayDIV(x);
				projectB = 1;
				MM_swapImage('projectBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				projectB = 0;
				MM_swapImage('projectBpic','','images/arrowButton.png',1);
			}
			
		break;		
		case "emeaAchieve1B":	
			if (emeaAchieve1B == 0) {
				DisplayDIV(x);
				emeaAchieve1B = 1;
				MM_swapImage('emeaAchieve1Bpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				emeaAchieve1B = 0;
				MM_swapImage('emeaAchieve1Bpic','','images/arrowButton.png',1);
			}
			
		break;
		case "emeaAchieveB":	
			if (emeaAchieveB == 0) {
				DisplayDIV(x);
				emeaAchieveB = 1;
				MM_swapImage('emeaAchieveBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				emeaAchieveB = 0;
				MM_swapImage('emeaAchieveBpic','','images/arrowButton.png',1);
			}
			
		break;
		case "infrastructureB":	
			if (infrastructureB == 0) {
				DisplayDIV(x);
				infrastructureB = 1;
				MM_swapImage('infrastructureBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				infrastructureB = 0;
				MM_swapImage('infrastructureBpic','','images/arrowButton.png',1);
			}
			
		break;	
		case "jseB":	
			if (jseB == 0) {
				DisplayDIV(x);
		jseB = 1;
				MM_swapImage('jseBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				jseB = 0;
				MM_swapImage('jseBpic','','images/arrowButton.png',1);
			}
			
		break;	
		case "euromoneyB":	
			if (euromoneyB == 0) {
				DisplayDIV(x);
				euromoneyB = 1;
				MM_swapImage('euromoneyBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				euromoneyB = 0;
				MM_swapImage('euromoneyBpic','','images/arrowButton.png',1);
			}
			
		break;	
		case "bloombergB":	
			if (bloombergB == 0) {
				DisplayDIV(x);
				bloombergB = 1;
				MM_swapImage('bloombergBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				bloombergB = 0;
				MM_swapImage('bloombergBpic','','images/arrowButton.png',1);
			}
			
		break;	
		case "gtrB":	
			if (gtrB == 0) {
				DisplayDIV(x);
				gtrB = 1;
				MM_swapImage('gtrBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				gtrB = 0;
				MM_swapImage('gtrBpic','','images/arrowButton.png',1);
			}
			
		break;	
		case "dealmakersB":	
			if (dealmakersB == 0) {
				DisplayDIV(x);
				dealmakersB = 1;
				MM_swapImage('dealmakersBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				dealmakersB = 0;
				MM_swapImage('dealmakersBpic','','images/arrowButton.png',1);
			}
			
		break;	
		case "acqB":	
			if (acqB == 0) {
				DisplayDIV(x);
				acqB = 1;
				MM_swapImage('acqBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				acqB = 0;
				MM_swapImage('acqBpic','','images/arrowButton.png',1);
			}
			
		break;		
	
	case "ernst2B":	
			if (ernst2B == 0) {
				DisplayDIV(x);
				ernst2B = 1;
				MM_swapImage('ernst2Bpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				ernst2B = 0;
				MM_swapImage('ernst2Bpic','','images/arrowButton.png',1);
				}
			
		break;
		case "otherB":	
			if (otherB == 0) {
				DisplayDIV(x);
				otherB = 1;
				MM_swapImage('otherBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				otherB = 0;
				MM_swapImage('otherBpic','','images/arrowButton.png',1);
			}
			
		break;
		case "banker2B":	
			if (banker2B == 0) {
				DisplayDIV(x);
				banker2B = 1;
				MM_swapImage('banker2Bpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				banker2B = 0;
				MM_swapImage('banker2Bpic','','images/arrowButton.png',1);
			}
			
		break;
		case "gtr2B":	
			if (gtr2B == 0) {
				DisplayDIV(x);
				gtr2B = 1;
				MM_swapImage('gtr2Bpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				gtr2B = 0;
				MM_swapImage('gtr2Bpic','','images/arrowButton.png',1);
			}
			
		break;
		
		case "dealmaker2B":	
			if (dealmaker2B == 0) {
				DisplayDIV(x);
				dealmaker2B = 1;
				MM_swapImage('dealmaker2Bpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				dealmaker2B = 0;
				MM_swapImage('dealmaker2Bpic','','images/arrowButton.png',1);
			}
			
		break;		
		
		case "risk2B":	
			if (risk2B == 0) {
				DisplayDIV(x);
				risk2B = 1;
				MM_swapImage('risk2Bpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				risk2B = 0;
				MM_swapImage('risk2Bpic','','images/arrowButton.png',1);
			}
			
		break;			
		
		case "euromoney2B":	
			if (euromoney2B == 0) {
				DisplayDIV(x);
				euromoney2B = 1;
				MM_swapImage('euromoney2Bpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				euromoney2B = 0;
				MM_swapImage('euromoney2Bpic','','images/arrowButton.png',1);
			}
			
		break;				
		
		case "jse2B":	
			if (jse2B == 0) {
				DisplayDIV(x);
				jse2B = 1;
				MM_swapImage('jse2Bpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				jse2B = 0;
				MM_swapImage('jse2Bpic','','images/arrowButton.png',1);
			}
			
		break;	
		
		case "africanInvestorB":	
			if (africanInvestorB == 0) {
				DisplayDIV(x);
				africanInvestorB = 1;
				MM_swapImage('africanInvestorBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				africanInvestorB = 0;
				MM_swapImage('africanInvestorBpic','','images/arrowButton.png',1);
			}
			
		break;			
		
		case "accreditationB":	
			if (accreditationB == 0) {
				DisplayDIV(x);
				accreditationB = 1;
				MM_swapImage('accreditationBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				accreditationB = 0;
				MM_swapImage('accreditationBpic','','images/arrowButton.png',1);
			}
			
		break;	
		
		case "priceWaterB":	
			if (priceWaterB == 0) {
				DisplayDIV(x);
				priceWaterB = 1;
				MM_swapImage('priceWaterBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				priceWaterB = 0;
				MM_swapImage('priceWaterBpic','','images/arrowButton.png',1);
			}
			
		break;
		
		
		case "pwc1B":	
			if (pwc1B == 0) {
				DisplayDIV(x);
				pwc1B = 1;
				MM_swapImage('pwc1Bpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				pwc1B = 0;
				MM_swapImage('pwc1Bpic','','images/arrowButton.png',1);
			}
			
		break;
		
		
		case "riskSaRankings1":	
			if (riskSaRankings1 == 0) {
				DisplayDIV(x);
				riskSaRankings1 = 1;
				MM_swapImage('riskSaRankingsPic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				riskSaRankings1 = 0;
				MM_swapImage('riskSaRankingsPic','','images/arrowButton.png',1);
			}
			
		break;
		
		
		case "saPremier1":	
			if (saPremier1 == 0) {
				DisplayDIV(x);
				saPremier1 = 1;
				MM_swapImage('saPremierPic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				saPremier1 = 0;
				MM_swapImage('saPremierPic','','images/arrowButton.png',1);
			}
			
		break;
		
		case "alexanderB":	
			if (alexanderB == 0) {
				DisplayDIV(x);
				alexanderB = 1;
				MM_swapImage('alexanderBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				alexanderB = 0;
				MM_swapImage('alexanderBpic','','images/arrowButton.png',1);
			}
			
			
		break;
		
		case "globalB":	
			if (globalB == 0) {
				DisplayDIV(x);
				globalB = 1;
				MM_swapImage('globalBpic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				globalB = 0;
				MM_swapImage('globalBpic','','images/arrowButton.png',1);
			}
			
			
		break;
		
		
		
		case "bankerDeal1":	
			if (bankerDeal1 == 0) {
				DisplayDIV(x);
				bankerDeal1 = 1;
				MM_swapImage('bankerDealPic','','images/arrowButtonDown.png',1);
				
			} else {
				HideDIV(x);
				bankerDeal1 = 0;
				MM_swapImage('bankerDealPic','','images/arrowButton.png',1);
			}
			
		break;
		
		
		
		
			}
		
		
	

	
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}


/**
* Here is a hack to make the awards display correctly when scaling
* we copy the date off the middle column and paste it into the content of the main one, with appropriate styles
*/
$(function(){
	$('.insideCopy tbody tr').each(function(i,e){
		var date = $(e).find('td:nth-child(2) strong')[0];
		console.log(e);
		if(date !== undefined){
			console.log('got one' + i);
			console.log($('.insideCopy tbody tr:eq(' + i + ') td:nth-child(2)')[0]);
			$($('.insideCopy tbody tr:eq(' + i + ') td:nth-child(2)')[0]).innerHTML = "WHAHHAHAHA";//prepend('<div class="rmb-awards-date-small">' + date + "</div>");
		}

	});
});