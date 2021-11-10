$(function(){

  if (window.matchMedia( '(min-width: 600px)' ).matches){
    $(window).scroll(function(){
      $('.fadein').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 200){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
      $('.faderight').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 200){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
      $('.fadeleft').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 200){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
    });
  }else{
    $(window).scroll(function(){
      $('.fadein').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 100){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
      $('.faderight').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 200){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
      $('.fadeleft').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 200){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
    });
  }

});
