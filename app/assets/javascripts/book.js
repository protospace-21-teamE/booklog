$(function(){
  //change archive button image when mouseover and when mouseout
  $('.archive-book-button').mouseover(function(e){
     $(this).css('background-image','url("/assets/archive_button_hover.png")');
     $('.archive-book-button-hidden').css('display', 'block');
  });

  $('.archive-book-button').mouseout(function(e){
    $(this).css('background-image','url("/assets/archive_button.png")');
    $('.archive-book-button-hidden').css('display', 'none');
  });

  $('.archive-book-button-hidden').mouseover(function(e){
     $('.archive-book-button-hidden').css('display', 'block');
  });

  $('.archive-book-button-hidden').mouseout(function(e){
    $('.archive-book-button-hidden').css('display', 'none');
  });

  //change twitter/facebook/hatenabookmark button image when mouseover and when mouseout
  $('.twitter-button').mouseover(function(e){
    $(this).attr('src', '/assets/btn_invert_twitter_circle.png')
  });
  $('.twitter-button').mouseout(function(e){
    $(this).attr('src', '/assets/btn_twitter_circle.png')
  });

    $('.facebook-button').mouseover(function(e){
    $(this).attr('src', '/assets/btn_invert_facebook_circle.png')
  });
  $('.facebook-button').mouseout(function(e){
    $(this).attr('src', '/assets/btn_facebook_circle.png')
  });

  $('.hatena-button').mouseover(function(e){
    $(this).attr('src', '/assets/btn_invert_hatena_circle.png')
  });
  $('.hatena-button').mouseout(function(e){
    $(this).attr('src', '/assets/btn_hatena_circle.png')
  });
});
