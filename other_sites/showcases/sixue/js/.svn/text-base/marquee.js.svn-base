var i_seq = 1;
var i_interval;

var seconds = 4000; // set the time to delay

function func_change_marq() {
	func_switch_marq(i_seq);
	if (i_seq+1 >= $('.marqueeSwitcher a').length) {
		i_seq = 0;
	}
	else i_seq++;
	clearInterval(i_interval);
	i_interval = setTimeout( "func_change_marq()", seconds );
}

function func_set_marq() {
    i_pos = parseInt($(this).text());
	i_seq = i_pos-1;
	func_switch_marq(i_pos-1);
	if (i_seq > $('.marqueeSwitcher a').length) i_seq = 0;
	clearInterval(i_interval);
	i_interval = setTimeout( "func_change_marq()", seconds );
}

function func_switch_marq(i_pos) {
	$('.marqueeSwitcher a').each(function(){
		if ($(this).text() == (i_pos+1)) $(this).addClass('active');
		else $(this).removeClass('active');
	})

	$('.slider').animate({marginTop: (-1 * i_pos * 400)+'px' }, "fast");
}
