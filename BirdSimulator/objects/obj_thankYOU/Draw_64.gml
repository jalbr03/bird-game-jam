draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fn_large);
draw_text(room_width/2, room_height/2+clamp(offset, -10000, min_offset), text);
offset -= 1;

if(offset < -min_offset) {
	room_goto(rm_start);
}