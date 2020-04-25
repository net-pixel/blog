$(function(){
  $('#menu').on('click', function () {
    $('#menu').toggleClass('change');
    $('#nav').toggleClass('change');
    $('#menu-bg').toggleClass('change-bg');
    $('.sm').removeClass('res');
    $('.subnav').removeClass('change');
  });

  $('#subnav').on('click', function () {
    $('.subnav').toggleClass('change');
  });

  $('#subnav').on('click', function () {
    $('.sm').toggleClass('res');
  });

  // $(window).on('load resize', function() {
  //   var ww = window.innerWidth;
  //   if (ww > 770) {
  //     $('#subnav').on('click', function () {
  //       $('.subnav').toggleClass('change');
  //     });
  //   } else {
  //     $('#subnav').on('click', function () {
  //       $('.subnav').toggleClass('res');
  //     });
  //   }
  // });
})

