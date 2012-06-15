
$('#postArea #submit_post').live('click', function(event){
    event.preventDefault();
    var type = $('input:radio:checked').val();
    var message = $('input:text#send_message').val();
    $.ajax({
        url: '/message/post',
        type: 'post',
        data: {type:type, message:message},
        dataType: 'json'
    });
    return false;
});

$('#postArea #typeSelector li').live('click', function(event){
    if($(this).hasClass('active')){
        return false;
    }
    $(this).siblings().removeClass('active').css({opacity:1});
    $(this).animate({ 
        opacity: 0.3,
    }, 300 );
        $('#postArea #send_message, #postArea #submit_post').css({
            'border-color':$(this).find('p').css('color'),
            color:$(this).find('p').css('color')
        });
    $(this).addClass('active');
});
