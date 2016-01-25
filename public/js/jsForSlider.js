$(document).ready(function(){
    var pictureMass = document.getElementById('slider').getElementsByTagName('img');
    var picsNum = document.getElementById('slider').getElementsByTagName('img').length;
    var mas_radio = document.getElementById('slider').getElementsByClassName('radio');
    var now = 0;
    var height = document.getElementById('child_img').height;
    var width = document.getElementById('child_img').width+5;
    var heightSlider = height * picsNum;
    var widthSlider = width * picsNum;
    var slider_text = document.getElementsByClassName('slider_text');
    mas_radio[0].style.background = '#cecece';
    slider_text[0].style.left = 10+'px';
    pictureMass[0].style.opacity = 1;
    for (var i = 1; i < picsNum ; i++){
        pictureMass[i].style.opacity = 0;
    }

    function rightMove(){

        document.getElementById('slider').style.height = height + 'px';
        now++;

        if(now > picsNum - 1) now = 0;
        for(var i = 0; i < picsNum ; i++){
            slider_text[i].style.left = -600+'px';
            pictureMass[i].style.opacity = 0;
            mas_radio[i].style.background = 'black';
        }
        mas_radio[now].style.background = '#cecece';
        slider_text[now].style.left = 10+'px';
        pictureMass[now].style.opacity = 1;
    }
    function move(now){
        for(var i = 0; i < picsNum ; i++){
            slider_text[i].style.left = -600+'px';
            pictureMass[i].style.opacity = 0;
            mas_radio[i].style.background = 'black';
        }
        mas_radio[now].style.background = '#cecece';
        slider_text[now].style.left = 10+'px';
        pictureMass[now].style.opacity = 1;
    }
    autoScroll = setInterval(rightMove, 5000);
});
