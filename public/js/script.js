$(document).ready(function() {
    $("#slider").responsiveSlides({
        auto: true,
        pager: false,
        nav: true,
        speed: 500,
        namespace: "callbacks",
        before: function () {
            $('.events').append("<li>before event fired.</li>");
        },
        after: function () {
            $('.events').append("<li>after event fired.</li>");
        }
    });
    lightbox.option({
        'resizeDuration': 200,
        'wrapAround': true
    });
    function back(){
		window.history.back();
	}
	$('#back').click(back);

    $('.reasons-wrapper, .last-works-container, .main-gallery, .cat-gallery, .services-wrapper').animate({
       left: '0', opacity: '1'
    }, 'slow');


    $('.categoryList').click(function(){
        $(this).find('.sec-categories').slideToggle('slow');
    });

    $('.totop').click(function() {
        $("html, body").animate({ scrollTop: 0 }, "slow");
        return false;
    });
    $('.sorting').change(function(){
        $(this).closest('form').submit();
    });
    $('.admin-category').change(function(){
        $(this).closest('form').submit();
    });
});