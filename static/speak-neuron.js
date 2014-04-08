var max_pos;

var glossary = ['criterion', 'discrimination', 'histogram', 'magic beep count', 'rate coding hat', 'response field', 'ROC curve', 'sombrero', 'stimulus', 'tuning curve'];
function wrap_term_in_link() {
	old_html = $(this).html();
	new_html = old_html.replace(new RegExp(word_match), new_word);
	$(this).html(new_html);
}
function add_links_to_glossary() {
	for (i in glossary) {
		word = glossary[i];
		word_link = word.replace(/\s+/g, '-').toLowerCase();
		word_match = '(' + word + ')'
		new_word = '<a class="gloss-link word-' + word_link + '" href="glossary#' + word_link + '">$1</a>';
		
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
	$('#link-icon a[href]').attr('href', '#' + pos);
	$('#cur').html(pos);
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
	else if (hash.length > 0 && num_hash > -1 && num_hash < max_pos) {
		pos = num_hash;
	}
	set_pos(pos);
	show_pos(pos);
}

$(function() {
	max_pos = +$('#total').html();
	get_anchor_set_chapter();
	toggle_link_img();
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
