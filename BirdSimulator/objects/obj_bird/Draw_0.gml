draw_self();

if(left_wing_is_down) {
	left_wing_rot = lerp(left_wing_rot, max_rot, 0.4);
} else {
	left_wing_rot = lerp(left_wing_rot, -max_rot, 0.4);
}
if(right_wing_is_down) {
	right_wing_rot = lerp(right_wing_rot, -max_rot, 0.4);
} else {
	right_wing_rot = lerp(right_wing_rot, max_rot, 0.4);
}
var size = sprite_width/2-10;
var left_wing_pos = {x: lengthdir_x(size, 180-phy_rotation), y: lengthdir_y(size, 180-phy_rotation)};
var right_wing_pos = {x: lengthdir_x(size, -phy_rotation), y: lengthdir_y(size, -phy_rotation)};

draw_sprite_ext(spr_wing, 0, x+left_wing_pos.x, y+left_wing_pos.y, 1, 1, left_wing_rot-180-phy_rotation, c_white, 1);
draw_sprite_ext(spr_wing, 0, x+right_wing_pos.x, y+right_wing_pos.y, 1, 1, right_wing_rot-phy_rotation, c_white, 1);