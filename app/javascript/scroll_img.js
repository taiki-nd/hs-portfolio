(function(){
  const interval =3000; 
  const fade_speed = 1000;
  $(".fade-img-box img").hide();
  $(".fade-img-box img:first").addClass("active").show();
  
  const changeImage = function(){
      const $active = $(".fade-img-box img.active");
      const $next = $active.next("img").length?$active.next("img"):$(".fade-img-box img:first");
     
      $active.fadeOut(fade_speed).removeClass("active");
      $next.fadeIn(fade_speed).addClass("active");
  }
  
  
  setInterval(changeImage,interval);
  }());