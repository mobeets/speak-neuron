var max_pos;

var glossary = ['criterion', 'discrimination', 'histogram', 'magic beep count', 'rate coding hat', 'response field', 'ROC curve', 'sombrero', 'stimulus', 'tuning curve'];
function add_links_to_glossary() {
	function escapeRegExp(string) {
    	return string.replace(/([.*+?^=!:${}()|\[\]\/\\])/g, "\\$1");
	}
	function replaceAll(find, replace, str) {
  		return str.replace(new RegExp(escapeRegExp(find), 'g'), replace);
	}
	function wrap_term_in_link() {
		old_html = $(this).html();
		new_html = replaceAll(word, new_word, old_html);
		$(this).html(new_html);
	}
	for (i in glossary) {
		word = glossary[i];
		word_link = word.replace(/\s+/g, '-').toLowerCase();
		new_word = '<a class="gloss-link word-' + word_link + '" href="glossary#' + word_link + '">' + word + '</a>';
		
		$('.chapter p:not(.ed-note)').each(wrap_term_in_link);
		$('#appendix p:not(.ed-note)').each(wrap_term_in_link);
		$('.defn p:not(.ed-note)').each(wrap_term_in_link);
	}
}

function show_links_to_chapters_on_title() {
	var val = 'Ch. ';
	for (var i=0; i < max_pos+1; i++) {
		val += '<a class="ch-link" href="#' + i + '">' + i + ' </a>';
	}
	$('#ch-list').html(val);
	$('.ch-link').click(function() {
		cp = $(this).html();
		set_pos(cp);
		show_pos(cp);
	});
}

function show_pos(pos) {
	$('.chapter').hide();
	if (pos > -1) {
		$('#nav-buttons').show();
		$('#nav-page').hide();
	}
	if (pos == -1){
		$('#nav-buttons').hide();
		$('#nav-page').show();
		pos = 'title';
	}
	else if (pos == 0){
		pos = 'foreword';
	}
	$('#ch-' + pos).show();
	window.scrollTo(0, 0);
}

function get_pos() {
	return +$('#cur').html();
}
function set_pos(pos) {
	$('#cur').html(pos);

	var pathname = window.location.pathname;
	var url = window.location.hash;
	if (pathname.indexOf('glossary') == -1 && pathname.indexOf('appendix') == -1) {
		var idx = url.indexOf("#");
		window.location.hash = idx != -1 ? url.substring(0, idx) + '#' + pos : url + '#' + pos;
	}
}

function prev_click() {
	var pos = get_pos();
	if (pos > -1) {
		set_pos(pos - 1);
		show_pos(pos - 1);
	}
}
function next_click() {
	var pos = get_pos();
	if (pos < max_pos) {
		set_pos(pos + 1);
		show_pos(pos + 1);
	}
}

function toggle_link_img() {
	$('.icon').toggle();
	$('#sidebar').hover(function() { $('.icon').toggle(); }, function() { $('.icon').toggle(); });
}

function get_anchor_set_chapter(){
	var url = window.location.hash;
	var idx = url.indexOf("#");
	var hash = idx != -1 ? url.substring(idx+1) : "";
	num_hash = +hash;
	pos = -1;
	if (hash == 'foreword') {
		pos = 0;
	}
	else if (hash.length > 0 && num_hash > -1 && num_hash <= max_pos) {
		pos = num_hash;
	}
	set_pos(pos);
	show_pos(pos);
}



$(function() {
	// banner not absolute if width too small
	if ($(window).width() < 778) {
		$('#sidebar').css('position', 'relative');
		$('#sidebar').css('width', '100%');
		// $('.gloss-link').css('border-bottom', '1px dotted');
	}
	else {
		toggle_link_img();
	}
	max_pos = +$('#total').html();
	get_anchor_set_chapter();
	add_links_to_glossary();
	show_links_to_chapters_on_title();
  	$('body').keydown(function(event) {
  		if (event.which == 37) {
  			prev_click();
  		}
  		else if (event.which == 39) {
  			next_click();
  		}
  	});
	$('#prev').click(prev_click);
	$('#next').click(next_click);
	$('#begin').click(next_click);
});
