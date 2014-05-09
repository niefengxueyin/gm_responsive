/**
* @file header.js
* @author BMK (Zoobiscuit)
* Contains all logic pertaining to the menu system
*/

//Note that we wrap all the header functionality in a closure so that we don't pollute the global namespace ...


conf = {
	screen_xs: 768
};

$(function(){
	

	function showHideBackspacer() {
		if($('ul.rmb-main-menu-show-parent').length > 0) {
			$('.rmb-menu-back').addClass('rmb-menu-back-show');
		} else {
			$('.rmb-menu-back').removeClass('rmb-menu-back-show');
		}
	}


	function rmbMainMenuShowChild(menuItem) {
		//do we need to hide this child?
		console.log(menuItem);
		var child = $(menuItem).children("ul").first() || null;
		
		//if there are children, we toggle hide/show them
		if(child !== null && menuItem !== undefined) {
			if(!$(child).hasClass('rmb-main-menu-show')){ //already seen
				console.log(1);
				$(".rmb-main-menu-container > ul ul").not($(menuItem).parents('ul')).removeClass('rmb-main-menu-show-parent');
				$(".rmb-main-menu-container > ul ul").not($(child)).removeClass('rmb-main-menu-show');
				$(child).parents('ul').removeClass('rmb-main-menu-show');
				$(child).parents('ul').addClass('rmb-main-menu-show-parent');
				$(child).addClass('rmb-main-menu-show');
				
				showHideBackspacer();
				
				//here we set the width, etc, of the back element (which unfortunate)
				$heightOfMenu = $('.rmb-main-menu-container').first().height();
				
			} else {
				console.log(2);
				var closestUl = $(child).closest('ul.rmb-main-menu-show-parent');

				$(child).removeClass('rmb-main-menu-show'); //hide child
				$(closestUl).removeClass('rmb-main-menu-show-parent');
				$(closestUl).addClass('rmb-main-menu-show');
				//if(!$(closestUl).hasClass('rmb-menu-level-1')) { //if the parent ul isn't the top of the main menu
					
				//}
				showHideBackspacer();
				
				
			}
		} else {
				console.log(3);
			$(".rmb-main-menu-container ul").removeClass('rmb-main-menu-show rmb-main-menu-show-parent');
			$('.rmb-menu-back').remove;
			$('.rmb-menu-back').removeClass('rmb-menu-back-show');
			//$(".rmb-main-menu-container ul").removeClass('rmb-main-menu-show-parent');
		}
	}


	function rmbMainMenuBackOne(){

		//find which element is currently being shown
		var visibleLi = $('.rmb-main-menu-show').first();

		if(visibleLi != null) {
			console.log("Found a visible element - going to hide it")
			var visibleParent = $(visibleLi).closest('ul.rmb-main-menu-show-parent > li');
			rmbMainMenuShowChild(visibleParent);
		}else { //ostensibly nothing to do - perhaps let's just close up everything?
			console.log('NO VISIBLE ELEMENTS - CLOSE MENU JUST IN CASE!!!');
			rmbMainMenuShowChild();
		}


	}

	$(".rmb-main-menu-container > ul li a").click(function(e){
		e.stopPropagation();
	});


	$(".rmb-main-menu-container > ul li").click(function(e){
		e.stopPropagation();
		rmbMainMenuShowChild($(this));
	});

	$(".rmb-main-menu-container > ul li").mouseleave(function(e){
		//e.stopPropagation();
		if($(window).width() >= conf.screen_xs && $(this).parent('ul').hasClass('rmb-main-menu-show-parent')){
			rmbMainMenuShowChild();
		}
		//rmbMainMenuShowChild($(this).parents('ul').first());
	});

	//back menu event
	$(".rmb-menu-back-mid").click(function(e){
		rmbMainMenuBackOne();
	});

	//attach open/close menu to menu button for mobi
	$(".rmb-main-menu-mobi-nav-open, .menu-close").click(function(e){
		console.log("clicked");
		var mainMenu = $(".rmb-main-menu-container > ul");
		//check if the main element is shown or not
		
		if(mainMenu.hasClass('rmb-main-menu-show') || mainMenu.hasClass('rmb-main-menu-show-parent')) {
			rmbMainMenuShowChild();
		} else {
			rmbMainMenuShowChild();
			mainMenu.addClass('rmb-main-menu-show');
		}
	});

	//attach appropriate events to the menu
	$(".rmb-main-menu-container a").click(function(e) {
		e.stopPropogation();
		e.preventDefault();
	});

	//attach resize events to anything that needs 100% page width
	function resizeRmbFullElements() {
		

		$('.rmb-full-width').each(function(i,e){

			var newWidth = 1600;
			if($(window).width() <= 1600) {
				newWidth = $(window).width();
			}

			if($(e).attr('data-width-offset') && $(window).width() < conf.screen_xs){
				newWidth = newWidth - $(e).attr('data-width-offset');
				//$(e).css('margin-left',$(e).attr('data-width-offset') + "px"); 
			} else {
				//$(e).css('margin-left', "0px");
			}
			$(e).css('width',newWidth + "px");
			
		});
	}

	$(window).resize(function(){
		resizeRmbFullElements();
	});

	resizeRmbFullElements(); //do a resize on document load


	//here we fix the header and dd menu once it has been scrolled past
	/*
	$(window).scroll(function(){
		if($(window).scrollTop() > $('.rmb-main-menu-logo').first().height()) {
			//console.log("FIX MENU NOW!!!");
			$('.rmb-main-menu-mobi-nav, .rmb-main-menu-container').addClass('rmb-main-menu-mobi-scrollfix');
		} else {
			$('.rmb-main-menu-mobi-nav, .rmb-main-menu-container').removeClass('rmb-main-menu-mobi-scrollfix');
		}

	});
	*/
	//Search functionality
	$( "#topSearchRight" ).click(function() {			
			$( "#searchForm" ).submit();
	});

});


//CODE PULLED FROM OLD SITE

var ratesDrop = 0;

function slideRates() {
	cr = ratesDrop;
	y = "#topRatesSlider"
	if (cr == 0) {
		ratesDrop = 1;
		$(y).toggle('slide', {direction: 'up'});
		$("#ratesArrowImg").attr('src', 'images/iconography/arrowDown.png');
		
	} else {
		$(y).toggle('slide', {direction: 'up'});
		ratesDrop = 0;
		$("#ratesArrowImg").attr('src', 'images/iconography/arrowRight.png');
	}	
}

function checkInput(formfield){
	if (formfield.value=="") 
		formfield.value = formfield.defaultValue;
	
 } 

 function clearInput(formfield){
  if (formfield.defaultValue==formfield.value)
   formfield.value = "";
 } 