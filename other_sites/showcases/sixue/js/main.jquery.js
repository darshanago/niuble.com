jQuery(function($) {
	$(document).ready(function(){
        $(".tabAction li").live('click', function(){
            var tabAction = $(this).parent().attr('tabAction') 
                              + ($(this).attr('rel')?$(this).attr('rel'):$(this).text());
            var prefix = '';
            $(this).addClass('active').siblings().removeClass('active');
            $( tabAction ).show().siblings().hide();
        });
        $(".tabAction").find('li:eq(0)').click();

        /**
         * Index 
         *
         */
	    $(".marqueeSwitcher a").live('click', func_set_marq);
	    $(".marqueeSwitcher a:first").click();

        $(".ucPanel .textInput").focus(function(){
            $(this).siblings('.placeHolder').hide();
        });
        $(".ucPanel .placeHold").click(function(){
            $(".ucPanel .textInput").focus();
        });
        $(".ucPanel .textInput").blur(function(){
            if($.trim($(this).val())=='')
                $(this).siblings('.placeHolder').show();
        });
        $("input[class*='inputer']").live('click', function(){
            if($(this).attr('rel'))
                if($(this).val() == $(this).attr('rel'))
                    $(this).val('');
        });
        $("input[class*='inputer']").live('blur', function(){
            if($(this).attr('rel'))
                if( ! $.trim( $(this).val() ) )
                    $(this).val($(this).attr('rel'));
        });
        $(".tabNav li").live('click', function(){
            var pos = $(this).prevAll().length+1;
            var nav = $(this).parents('.tabNav');
            var items = nav.siblings('.tabItems');
            nav.find('li.active').removeClass('active');
            $(this).addClass('active');
            items.find('.tabItem.active').removeClass('active');
            items.find('.item-'+pos).addClass('active');
        });

        /* user controll panel in the top */
		$(".ucLabel .switcher").live("click", function(){
            var el = $(this);
            var action = '118px';
            if(parseInt($(".topUserControll").css('top')) > 0){
                action = '0px';
            }
            $(".topUserControll").animate({
                top: action
            }, {
                duration: 300,
                complete: function(){
                }
            });
        });

        /**
         * Register
         *
         */
        $('.rsNavContainer .controller').live('click', function(event){
            event.preventDefault();
            return false;
        });
        $('.rsNavContainer').live('click', function(){
            var controller_width = $(this).find('.controller').css('width');
            if($('.rsNavContainer .controller').css('margin-left') != controller_width){
                $('#registerStep11 .nextStep').click();
                return true;
            }
            $('.rsNavContainer .iterator').animate({height:'0px'}, 300);
            $('.rsNavContainer .controller').animate({marginLeft:'0px'}, 300);
            $('.sliderContainerX').animate({
                    marginLeft:'0px'
                }, {
                    duration: 300,
                    complete: function(){
                        $('#registerStep12').hide();
                        $('.rsNavContainer .iterator').animate({height:'11px'}, 300);
                }
            });
        });
        $('#registerStep11 .nextStep').live('click', function(){
            var controller_width = $(this).parents('.mapLayout').find('.controller').css('width');
            var content_width = $(this).parents('.mapLayout').css('width');
            if(!$('.hcArea.active').length) return false;
            $('#registerStep12').show();
            $('.rsNavContainer .iterator').animate({height:'0px'}, 300);
            $('.rsNavContainer .controller').animate({marginLeft:controller_width}, 300);
            $(this).parents('.sliderContainerX').animate({
                    marginLeft: (parseInt(content_width) * -1) + 'px'
                }, {
                    duration: 300,
                    complete: function(){
                        $('.rsNavContainer .iterator').animate({height:'11px'}, 300);
                }
            });
        });


        $(".selector li").live("click", function(){
            $(this).parent().find('.active').removeClass('active');
            $(this).addClass('active');
        });
        $(".selector span").live("click", function(){
            $(this).parent().find('.active').removeClass('active');
            $(this).addClass('active');
        });
        $('.clickToInput').live("click", function(){
            var el = $(this);
            $(this).removeClass('clickToInput');
            $(this).text('');
            $(this).append('<input type="text" name="low"/> - <input type="text" name="high"/>');
            $("input[name='low']").focus();
        });


        var teachBlackInfo_marginTop = $(this).find('.teachBlackInfo').css('marginTop');
        $('.teachList li').hover(function(){
            $(this).find('.teachBlackInfo').stop(true).animate({marginTop:'-164px'}, 300);
        },function(){
            $(this).find('.teachBlackInfo').animate({marginTop:teachBlackInfo_marginTop}, 300);
        });
        $('.teachList li').live('click', function(){
            if($(this).find('.selected').length){
                $(this).find('.selected').remove();
                $('.selectedTeacher'+$(this).attr('teacherID')).remove();
            }else if($(this).parent().find('.selected').length < 3){
                $(this).prepend('<div class="selected"></div>');
                $('.teacherSelectedConfirm').append('<li class="selectedTeacher'+$(this).attr('teacherID')+'"> <div><img src="'+$(this).find('img').attr('src')+'" width="82px" height="82px"></div>'+$(this).find('.title .name').text()+'</li>');
            }
        });

        $('.scheduleLayout table tbody td:not(".first")').live('click', function(){
            $(this).toggleClass('active');
        });

        /**
         *
         * Popups
         *
         */
        $('.popupInputs .inputer').live('click', function(){
            $('.popupInInput').hide();
            $(this).parent().find('.popupInInput').show();
        });
        $('.popupInInput .bnConfirm').live('click', function(event){
            event.preventDefault();
            var text = '';
            if($(this).parents('.popupSchedule').length){
                var tbody = $(this).parents('.popupSchedule').find('tbody');
                var trs = tbody.find('tr');
                var schedule = new Array();
                var week = new Array('一','二','三','四','五','六','日')
                var times = new Array( '上午8:00-10:00', '上午10:35-12:35', '下午13:00-15:00', '下午15:30-17:30', '晚18:00-20:00' );
                //求出同时不同日的[["time", "day1,day2,..."], ...]
                for( var i=1; i<=5; i++ ) {
                    var s_day = null;
                    trs.each(function(day, tr) {
                        if($(tr).find('td').eq(i).is('.active')){
                            if(s_day === null)
                                s_day = day;
                            else
                                s_day += ',' + day;
                        }
                    });
                    if(s_day !== null){
                        schedule.push([i-1, s_day]);
                    }
                }
                //合并同时同日的计划[["time1,time2, ...", "day1,day2, ..."]]
                for( var i=0; i < schedule.length; i++ ) {
                    for(var j=i+1; j < schedule.length; j++){
                        if(schedule[i][1] == schedule[j][1]){
                            schedule[i][0] += ','+ schedule[j][0];
                            schedule = schedule.slice(0, j).concat( schedule.slice(j+1) );
                            j--;
                        }
                    }
                }
                var text = '';
                $.each(schedule, function(i, v){
                    text += '每周';
                    $.each( eval('['+ v[1] +']'), function(j, val){
                        if(j!=0)
                            text += '，';
                        text += week[val];
                    });
                    text += '，';
                    $.each( eval('['+ v[0] +']'), function(j, val){
                        if(j!=0)
                            text += '，';
                        text += times[val];
                    });
                    text += '；';
                });
            }else{
                $(this).parents('.popupInInput').find('.selectInput li.active:visible').each(function(i,v){
                    text += $(v).text() +'，';
                });
                text = text.replace(/，$/,'');
            }
            $(this).parents('.popupInInput').hide().siblings('.inputer').val(text);
            return false;
        });

        $('.slideSwither > li').live('click', function(){
            if($(this).is('.active'))
                return true;
            $(this).parent().find('li.active ul').slideUp('fast', function(){
                $(this).parent().removeClass('active');
            });
            $(this).find('ul').slideDown('fast', function(){
                $(this).parent().addClass('active');
            });
        });

        $('.generalForm .hiddenFile').live('change', function(){
            $(this).siblings('input').val($(this).val());
        });

        $('.generalForm .browse').live('click', function(){
            $(this).siblings('.hiddenFile').click();
        });

        $('.orangeButton, .un_orangeButton').live('click', function(){
            var rel = $(this).attr('rel');
            if(!rel){
                return true;
            }
            $(this).toggleClass('orangeButton');
            $(this).toggleClass('un_orangeButton');
            $(this).attr('rel', $(this).text());
            $(this).text(rel);
        });

        $('.BackLayout .modules.classDetailList .flexableForm li ul li textarea').live('keyup', function(){
            var length = parseInt($(this).val().length);
            var counter = $(this).siblings('.counter');
            var max = parseInt(counter.find('.max').text().replace('/', ''));
            if( max < length){
                counter.find('.cur').css('color', 'red');
            }else{
                counter.find('.cur').css('color', '');
            }
            counter.find('.cur').text(length);
        });

		$("#dropServiceContact .controller").live("click", function(){
            var el = $(this);
            var action = '-137px';
            var min_height = '28px';
            var max_height = '165px';
            var is_closed = (parseInt($("#dropServiceContact .theBody").css('marginTop')) < 0);
            if(is_closed){
                action = '0px';
                $("#dropServiceContact").css('height', max_height);
            }
            $("#dropServiceContact .theBody").animate({
                marginTop: action
            }, {
                duration: 300,
                complete: function(){
                    if(!is_closed)
                        $("#dropServiceContact").css('height', min_height);
                }
            });
        });

	});
});
