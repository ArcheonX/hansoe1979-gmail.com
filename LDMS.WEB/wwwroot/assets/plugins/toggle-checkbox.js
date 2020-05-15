var selector = '.container-label-check';

$(selector).on('click', function(){
    $(selector).removeClass('active-color-box');
    $(this).addClass('active-color-box');
});