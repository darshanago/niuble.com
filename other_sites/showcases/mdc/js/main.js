jQuery(function($) {
	$(document).ready(function(){
        $('.options li').live('click', function(){
            cur = $(this);
            if(cur.is('.active'))
                return false;
            cur.siblings('.active').removeClass('active');
            cur.addClass('active');
        });

        $('.switcher').live('click', function(){
            cur = $(this).children('.active');
            act = $(this).children(':not(.active)');
            cur.removeClass('active');
            act.addClass('active');
        });
    });
});
