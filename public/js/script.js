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



    $('.show-img').click(function(){
        $src = $(this).attr('src');
        $template = "<div id='img-background'><img src='<%src%>' alt='image' class='img-responsive'/></div>";
        $parsedTemplate = $template.replace('<%src%>', $src);
        $('body').append($parsedTemplate);
        $('#img-background').click(function () {
            if($(this).fadeOut('slow', function(){
                    $(this).remove();
                })){
            }
        });
    });

    $('.thumbnail').fadeIn("slow");


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