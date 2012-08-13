$('ul.selector li').live('click', function(){
    $(this).addClass('selected').siblings().removeClass('selected');
});

$('form#login').submit(function(){
    if($(this))
    $.post('/api/login');
});
