$(document).ready(function(){
    //$(".slider").each(function () { // обрабатываем каждый слайдер
    //    var obj = $(this);
    //    $(obj).append("<div class='nav'></div>");
    //    $(obj).find("li").each(function () {
    //        $(obj).find(".nav").append("<span rel='"+$(this).index()+"'></span>"); // добавляем блок навигации
    //        $(this).addClass("slider"+$(this).index());
    //    });
    //    $(obj).find("span").first().addClass("on"); // делаем активным первый элемент меню
    //});
    //function sliderJS (obj, sl) { // slider function
    //    var ul = $(sl).find("ul"); // находим блок
    //    var bl = $(sl).find("li.slider"+obj); // находим любой из элементов блока
    //    var step = $(bl).width(); // ширина объекта
    //    $(ul).animate({marginLeft: "-"+step*obj}, 500); // 500 это скорость перемотки
    //}
    //$(document).on("click", ".slider .nav span", function() { // slider click navigate
    //    var sl = $(this).closest(".slider"); // находим, в каком блоке был клик
    //    $(sl).find("span").removeClass("on"); // убираем активный элемент
    //    $(this).addClass("on"); // делаем активным текущий
    //    var obj = $(this).attr("rel"); // узнаем его номер
    //    sliderJS(obj, sl); // слайдим
    //    return false;
    //});
    //setInterval(sliderJS, 1000);
    //var pictureMass = document.getElementById('slider').getElementsByTagName('img');
    //var picsNum = document.getElementById('slider').getElementsByTagName('img').length;
    //var mas_radio = document.getElementById('slider').getElementsByClassName('radio');
    //var now = 0;
    //var height = document.getElementById('child_img').height;
    //var width = document.getElementById('child_img').width+5;
    //var heightSlider = height * picsNum;
    //var widthSlider = width * picsNum;
    //var slider_text = document.getElementsByClassName('slider_text');
    //mas_radio[0].style.background = '#cecece';
    //slider_text[0].style.left = 10+'px';
    //pictureMass[0].style.opacity = 1;
    //for (var i = 1; i < picsNum ; i++){
    //    pictureMass[i].style.opacity = 0;
    //}
    //
    //function rightMove(){
    //
    //    document.getElementById('slider').style.height = height + 'px';
    //    now++;
    //
    //    if(now > picsNum - 1) now = 0;
    //    for(var i = 0; i < picsNum ; i++){
    //        slider_text[i].style.left = -600+'px';
    //        pictureMass[i].style.opacity = 0;
    //        mas_radio[i].style.background = 'black';
    //    }
    //    mas_radio[now].style.background = '#cecece';
    //    slider_text[now].style.left = 10+'px';
    //    pictureMass[now].style.opacity = 1;
    //}
    //function moveSlide(now){
    //    for(var i = 0; i < picsNum ; i++){
    //        slider_text[i].style.left = -600+'px';
    //        pictureMass[i].style.opacity = 0;
    //        mas_radio[i].style.background = 'black';
    //    }
    //    mas_radio[now].style.background = '#cecece';
    //    slider_text[now].style.left = 10+'px';
    //    pictureMass[now].style.opacity = 1;
    //}
    //setInterval(rightMove, 5000);
    //function sayhello(){
    //    console.log('hello');
    //}
    //i = 0;
    //$('.radio').click(moveSlide);
});
