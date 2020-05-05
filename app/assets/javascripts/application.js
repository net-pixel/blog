$(function(){
  $('#menu').on('click', function () {
    $('#menu').toggleClass('change');
    $('#nav').toggleClass('change');
    $('#menu-bg').toggleClass('change-bg');
    $('.subnav').removeClass('change');
  });

  $('#subnav').on('click', function () {
    $('.subnav').toggleClass('change');
  });


})

