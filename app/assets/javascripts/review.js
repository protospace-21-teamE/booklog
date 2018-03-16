$(function(){
  $('.review-rate-label').mouseover(function(e){
    $(this).nextAll().children().attr('src', '/assets/unstar.png');
    $(this).children().attr('src', '/assets/star.png');
    $(this).prevAll().children().attr('src', '/assets/star.png');
  });
});
