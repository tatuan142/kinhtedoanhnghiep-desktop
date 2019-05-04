/*
* TABLE OF CONTENTS
*
* Box Image slider
* Box Image slider
*/

// > Box Image slider 
$('.slider-video .block__main').bxSlider({
    slideWidth: 665, //max width of each slide
    minSlides: 1,
    maxSlides: 2,
    mode: 'horizontal',
    slideMargin: 0,
    pager: false,
    auto: true,
    speed : 500,
    onSlideAfter: function($slideElement, oldIndex, newIndex) {
        $('.block__main > article').removeClass('is-active');
        $slideElement.addClass('is-active');
    },
    onSliderLoad: function() {
        $('.block__main > article').eq(0).addClass('is-active')
    }
});

// > epaper 
$('.epaper__content > div').bxSlider({
    slideWidth: 665, //max width of each slide
    minSlides: 1,
    maxSlides: 1,
    moveSlides : 1,
    slideMargin : 10,
    mode: 'horizontal',
    pager: false,
    auto: true,
    speed : 500,
    slideWidth: 220
});

/* > GO TOP */
$("#go-top").click(function() {
    $('body,html').animate({ scrollTop: 0 }, 800);
    return false;
});
