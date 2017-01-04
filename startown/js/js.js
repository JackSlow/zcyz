
$(function(){
    $('.g-leftButtom li').each(function(){
        $(this).click(function(){
            $('li').removeClass();
            $(this).addClass('on');
            $('.g-right').hide(800);
            $(this).children('.g-right').show(450);
        });
    });
});



