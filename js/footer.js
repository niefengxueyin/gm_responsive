$(document).ready(function(){

 $('.quickLinks').hide();
 $('.africaPresence').hide();
 $('.socialMedia').hide();

 $('#links').on('click',function(){
    $('.africaPresence,.socialMedia').hide(200);
    var effect = 'slide';
    var options = { direction: 'down' };
    var duration = 300;
    var quickLinks = $('.quickLinks').toggle(effect, options, duration);
    $(this).closest().quickLinks;
   
    $(".rmb-footerElementClose").on('click',function(){   
    $('.quickLinks').hide('slide',{direction:'down'});
 });
   
});


$('#africa').on('click',function(){
    
     $('.socialMedia,.quickLinks').hide(200);
    var effect = 'slide';
    var options = { direction: 'down' };
    var duration = 300;
    var africaPresence = $('.africaPresence').toggle(effect, options, duration);
    $(this).closest().africaPresence;
    
    $(".rmb-footerElementClose").on('click',function(){   
    $('.africaPresence').hide('slide',{direction:'down'});
 });

});

$('#social').on('click',function(){
    
   $('.africaPresence,.quickLinks').hide(200);
    var effect = 'slide';
    var options = { direction: 'down' };
    var duration = 300;
    var socialMedia = $('.socialMedia').toggle(effect, options, duration);
    $(this).closest().socialMedia;

     $(".rmb-footerElementClose").on('click',function(){   
       $('.socialMedia').hide('slide',{direction:'down'});
 });
     
});


$(".rmb-footerTop ").on('hover',function () {
    $(this).toggleClass("footerBGSelected");
});


$(".rmb-footerElementClose").on('click',function(){

	$(this).slideDown(".quickLinks");


     });

$(".previous").on('click',function(){

   
$('#rmb-footerAfrica2').hide('slide',{direction:'right'});
$('#rmb-footerAfrica1').show('slide',{direction:'left'});
    
});



$("#rmb-footerIcon1").click(function(){
    imagePath = $("#rmb-footerIcon1").attr("src");
    if(imagePath == "images/footer/arrowRight.png"){
        $("#rmb-footerIcon1").attr("src", "images/footer/arrowUp.png");

    }else{
        $("#rmb-footerIcon1").attr("src", "images/footer/arrowRight.png");
    }
});



$("#rmb-footerIcon1").hover(function(){
    imagePath = $("#rmb-footerIcon1").attr("src");
    if(imagePath == "images/footer/arrowRight.png"){
        $("#rmb-footerIcon1").attr("src", "images/footer/arrowRight.png");

    }else{
        $("#rmb-footerIcon1").attr("src", "images/footer/arrowUp.png");
    }
});



});

