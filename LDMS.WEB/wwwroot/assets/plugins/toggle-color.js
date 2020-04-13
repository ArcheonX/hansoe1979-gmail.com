var selector = '.date-list li';

$(selector).on('click', function(){
    $(selector).removeClass('active-color');
    $(this).addClass('active-color');
});