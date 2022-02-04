draw_self();

if(left_wing_is_down) {
	left_wing_rot = lerp(left_wing_rot, max_rot, flap_lerp);
} else {
	left_wing_rot = lerp(left_wing_rot, -max_rot, flap_lerp);
}
if(right_wing_is_down) {
	right_wing_rot = lerp(right_wing_rot, -max_rot, flap_lerp);
} else {
	right_wing_rot = lerp(right_wing_rot, max_rot, flap_lerp);
}
var size = sprite_width/2-10;
var left_wing_offset = {x: lengthdir_x(size, 180-phy_rotation), y: lengthdir_y(size, 180-phy_rotation)};
var right_wing_offset = {x: lengthdir_x(size, -phy_rotation), y: lengthdir_y(size, -phy_rotation)};
left_wing_pos.x = x+left_wing_offset.x;
left_wing_pos.y = y+left_wing_offset.y;
right_wing_pos.x = x+right_wing_offset.x;
right_wing_pos.y = y+right_wing_offset.y;
draw_sprite_ext(spr_wing, 0, left_wing_pos.x, left_wing_pos.y, 1, -1, left_wing_rot-180-phy_rotation, c_white, 1);
draw_sprite_ext(spr_wing, 0, right_wing_pos.x, right_wing_pos.y, 1, 1, right_wing_rot-phy_rotation, c_white, 1);

draw_healthbar(x-hp_w, y-hp_h-sprite_height-10, x+hp_w, y+hp_h-sprite_height-10, strength*100, c_black, c_red, c_green, 0, 1, 1);
if(strength > 1) {
	draw_healthbar(x-hp_w, y-hp_h*2-sprite_height-10, x+hp_w, y-hp_h-sprite_height-10, (strength-1)*100, c_black, c_green, c_red, 0, 1, 1);
	if(strength > 1.5) {
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_set_font(fn_default);
		draw_text_color(x, y-hp_h*2-sprite_height-20, "strength overload!", c_red, c_red, c_red, c_red, cos(current_time/100));
	}
}
