
var country1 = 0;
var country2 = 0;
var country3 = 0;
var country4 = 0;
var country5 = 0;
var country6 = 0;
var country7 = 0;
var country8 = 0;
var country9 = 0;
var country10 = 0;
var country11 = 0;


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

function countryExpand(x) {
	n = 'country' + x;
	
	switch(n)
	{
		case 'country1':
			if (country1 == 0){
				$("#country1button").attr("src","images/arrowButtonDown.png");
				DisplayDIV('country1details');
				country1 = 1;

			} else {
				$("#country1button").attr("src","images/arrowButton.png");
				HideDIV('country1details');	
				country1 = 0;
			}
		break;
		case 'country2':
			if (country2 == 0){
				$("#country2button").attr("src","images/arrowButtonDown.png");
				DisplayDIV('country2details');
				country2 = 1;
	
			} else {
				$("#country2button").attr("src","images/arrowButton.png");
				HideDIV('country2details');	
				country2 = 0;
						
			}
		break;		
		
		case 'country3':
			if (country3 == 0){
				$("#country3button").attr("src","images/arrowButtonDown.png");
				DisplayDIV('country3details');
				country3 = 1;
			} else {
				$("#country3button").attr("src","images/arrowButton.png");
				HideDIV('country3details');	
				country3 = 0;
			}
		break;
		
		case 'country4':
			if (country4 == 0){
				$("#country4button").attr("src","images/arrowButtonDown.png");
				DisplayDIV('country4details');
				country4 = 1;
			} else {
				$("#country4button").attr("src","images/arrowButton.png");
				HideDIV('country4details');	
				country4 = 0;
			}
		break;				
		
		case 'country5':
			if (country5 == 0){
				$("#country5button").attr("src","images/arrowButtonDown.png");
				DisplayDIV('country5details');
				country5 = 1;
			} else {
				$("#country5button").attr("src","images/arrowButton.png");
				HideDIV('country5details');	
				country5 = 0;
			}
		break;				
		
		case 'country6':
			if (country6 == 0){
				$("#country6button").attr("src","images/arrowButtonDown.png");
				DisplayDIV('country6details');
				country6 = 1;
			} else {
				$("#country6button").attr("src","images/arrowButton.png");
				HideDIV('country6details');	
				country6 = 0;
			}
		break;				
		
		case 'country7':
			if (country7 == 0){
				$("#country7button").attr("src","images/arrowButtonDown.png");
				DisplayDIV('country7details');
				country7 = 1;
			} else {
				$("#country7button").attr("src","images/arrowButton.png");
				HideDIV('country7details');	
				country7 = 0;
			}
		break;				
		
		
		case 'country8':
			if (country8 == 0){
				$("#country8button").attr("src","images/arrowButtonDown.png");
				DisplayDIV('country8details');
				country8 = 1;
			} else {
				$("#country8button").attr("src","images/arrowButton.png");
				HideDIV('country8details');	
				country8 = 0;
			}
		break;				
		
		case 'country9':
			if (country9 == 0){
				$("#country9button").attr("src","images/arrowButtonDown.png");
				DisplayDIV('country9details');
				country9 = 1;
			} else {
				$("#country9button").attr("src","images/arrowButton.png");
				HideDIV('country9details');	
				country9 = 0;
			}
		break;				
		
		
		case 'country10':
			if (country10 == 0){
				$("#country10button").attr("src","images/arrowButtonDown.png");
				DisplayDIV('country10details');
				country10 = 1;
			} else {
				$("#country10button").attr("src","images/arrowButton.png");
				HideDIV('country10details');	
				country10 = 0;
			}
		break;				
		
		
		case 'country11':
			if (country11 == 0){
				$("#country11button").attr("src","images/arrowButtonDown.png");
				DisplayDIV('country11details');
				country11 = 1;
			} else {
				$("#country11button").attr("src","images/arrowButton.png");
				HideDIV('country11details');	
				country11 = 0;
			}
		break;							
	}

	
	
}
