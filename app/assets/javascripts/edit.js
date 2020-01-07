// $(function(){
//   $(document).on('hover','.header__name', function(){
//     $('.header__name') .css('color','red')
//   });
// });

$(function(){
  $('.header__name').hover(function(){
    $('.header__name') .css('color','red')
  }, function(){
    $('.header__name').css('color', 'white');
  });
});

