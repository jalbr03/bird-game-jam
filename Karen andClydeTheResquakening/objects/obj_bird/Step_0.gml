var left = 0;
var right = 0;
var flap = 0;
if(global.player_amount == 1) {
	if(player_number == 0) {
		left = keyboard_check(ord("A"));
		right = keyboard_check(ord("D"));
		flap = keyboard_check(ord("W"));
	} else {
		right = keyboard_check(ord("A"));
		left = keyboard_check(ord("D"));
		flap = keyboard_check(ord("W"));
	}
} else {
	if(player_number == 0) {
		left = keyboard_check(ord("A"));
		right = keyboard_check(ord("D"));
		flap = keyboard_check(ord("W"));
	} else {
		left = keyboard_check(vk_left);
		right = keyboard_check(vk_right);
		flap = keyboard_check(vk_up);
	}
}
var move = (right - left)*acc;
phy_linear_velocity_x *= fric;
phy_linear_velocity_x += move;
phy_linear_velocity_x = clamp(phy_linear_velocity_x, -spd, spd);

phy_position_x = clamp(phy_position_x, 0, room_width);

if(flap) {
	phy_linear_velocity_y = -flap_str;
} else {
	phy_linear_velocity_y += 10;
}