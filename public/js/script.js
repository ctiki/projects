$(document).ready(function() {
	function back(){
		window.history.back();
	}
	$('#back').click(back);


    $host = 'http://'+window.location.hostname+'/oop-template-mvc/';

    $('.sorting').change(function(){
        $(this).closest('form').submit();
    });

    $('.cart-count').change(function(){
        var id = $(this).attr('data-id');
        var countValue = $(this).val();
        $.post($host+'cart/change/'+id+'/'+countValue);
        return false;
    });

    //$('.purchase').click(function(){
    //    var id = $(this).attr('data-id');
    //    $.post($host+'cart/addAjax/'+id, {}, function(data){
    //        $('.count-items-in-cart').html(data);
    //    });
    //    return false;
    //});
    //
    //$('.delete').click(function(){
    //    var id = $(this).attr('data-id');
    //    $.post($host+'cart/deleteAjax/'+id, {}, function(data){
    //        $('.count-items-in-cart').html(data);
    //        location.reload();
    //    });
    //    return false;
    //});
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

    $('.brands-wrapper').animate({
       left: '0', opacity: '1'
    }, 'slow');
    $('.categories').animate({
       left: '0', opacity: '1'
    }, 'slow');

    $('.categoryList').click(function(){
        $(this).find('.sec-categories').slideToggle('slow');
    });
});