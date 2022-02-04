var left = 0;
var right = 0;
if(player_number == 0) {
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
} else {
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
}
var move = (right - left)*spd;


phy_linear_velocity_x = move;