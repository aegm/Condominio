 //Para la sus funcionalidades por defecto
 // $(window).load(function() {
    // $('.flexslider').flexslider();
  // });
  
  //Establecemos sus atributos
 $(window).load(function() {
    $('.flexslider').flexslider({
          animation: "slide",
          controlsContainer: ".flex-container",
		  direction: "auto",
		  slideshowSpeed: 7000,           
		  animationSpeed: 600
    });
    
    $("#empresa").on("click", function() {
        $(".submenu").animate({'height':'toggle'});
     });
     
     $(this).mouseup(function (login) {
        if(!($(login.target).parents('.submenu').length > 0)) {
        $(".submenu").hide();
        }
    });
    Modernizr();
 
  });