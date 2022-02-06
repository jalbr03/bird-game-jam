draw_self();

var size = sprite_width/2-10;
var left_wing_offset = {x: lengthdir_x(size, 180+image_angle), y: lengthdir_y(size, 180+image_angle)};
var right_wing_offset = {x: lengthdir_x(size, image_angle), y: lengthdir_y(size, image_angle)};
left_wing_pos.x = x+left_wing_offset.x;
left_wing_pos.y = y+left_wing_offset.y;
right_wing_pos.x = x+right_wing_offset.x;
right_wing_pos.y = y+right_wing_offset.y;

if(phy_linear_velocity_y < 0) {
	left_wing_rot = lerp(left_wing_rot, 60, 0.2);
	right_wing_rot = lerp(right_wing_rot, -60, 0.2);
} else {
	left_wing_rot = lerp(left_wing_rot, 0, 0.2);
	right_wing_rot = lerp(right_wing_rot, 0, 0.2);
}
draw_sprite_ext(spr_wing, 0, left_wing_pos.x, left_wing_pos.y, 1, -1, left_wing_rot-180+image_angle, c_white, 1);
draw_sprite_ext(spr_wing, 0, right_wing_pos.x, right_wing_pos.y, 1, 1, right_wing_rot+image_angle, c_white, 1);