$(document).ready(function() {

  /* Slick initialization */
  $('.head-section-category').slick({
    centerMode: true,
    centerPadding: '120px',
    slidesToShow: 3,
    prevArrow: '<button type="button" class="slick-prev"><i class="fa fa-angle-left" aria-hidden="true"></i></button>',
    nextArrow: '<button type="button" class="slick-next"><i class="fa fa-angle-right" aria-hidden="true"></i></button>',
    responsive: [
      {
        breakpoint: 992,
        settings: {
          arrows: true,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 3
        }
      },
      {
        breakpoint: 768,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '80px',
          slidesToShow: 1
        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 1
        }
      }
    ]
  });

  /* Animate scrollTo */
  $('.head-section-next').on('click', function() {
    $('html, body').animate({
      scrollTop: $('#faq').offset().top
    }, 1000);
  });

  /* Toggle help form */
  $('.head-section-help-icon').on('click', function() {
    $(this).parent().toggleClass('active');
  });
  
  $('.head-section-help-form__close').on('click', function() {
    $(this).closest('.head-section-help').removeClass('active');
  });

  /* Toggle mobile navbar menu */
  $('.navbar-btn').on('click', function() {
    $(this).siblings('.navbar-menu').toggleClass('active');
  });

  /* Toggle reward table */
  $('.reward-desc-expander').on('click', function() {
    $(this).children('.reward-desc-expand-table').slideToggle();
    $(this).closest('.reward-desc').toggleClass('active');
  });

  /* Display image modal */
  $('button[data-modal="image"]').on('click', function() {
    $('.modal-overlay').addClass('active');
    $('.modal-media-image').children('img').attr('src', $(this).attr('data-url'));
    $('.modal-media-image').addClass('active');
  });

  /* Display video modal */
  $('button[data-modal="video"]').on('click', function() {
    $('.modal-overlay').addClass('active');
    $('.modal-media-video').children('iframe').attr('src', $(this).attr('data-url'));
    $('.modal-media-video').addClass('active');
  });

  /* Close modal */
  $('.modal-overlay-close, .modal-overlay').on('click', function(e) {
    $('.modal-overlay').removeClass('active');
    if($('.modal-media').hasClass('active')) $('.modal-media').removeClass('active');
    e.stopPropagation();
  });

});
//# sourceMappingURL=public.js.map
