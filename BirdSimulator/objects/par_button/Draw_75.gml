if(room != rm_start && global.paused == false) exit;

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fn_default);

var offset = 0;
if(img != noone) {
	offset = -32
	draw_sprite(img, img_index, x, y+32);
}
draw_text_color(x, y+offset, txt, c_black, c_black, c_black, c_black, 1);