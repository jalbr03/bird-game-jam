var left_wing = keyboard_check(ord("A"));
var right_wing = keyboard_check(ord("D"));

//if(left_wing || right_wing) {
//	if(!has_flapped) {
//		has_flapped = true;
		
//	}
//} else {
//	has_flapped = false;
//}

if(left_wing) {
	if(!left_wing_is_down) {
		left_wing_is_down = true;
		flap_left = true;
	}
} else {
	left_wing_is_down = false;
}
if(right_wing) {
	if(!right_wing_is_down) {
		right_wing_is_down = true;
		flap_right = true;
	}
} else {
	right_wing_is_down = false;
}

if(flap_left) {
	flap_left = false;
	phy_angular_velocity += turn_spd;
	
	phy_linear_velocity_x += lengthdir_x(flap_str/2, 90-phy_rotation);
	phy_linear_velocity_y += lengthdir_y(flap_str/2, 90-phy_rotation)-flap_str;
}
if(flap_right) {
	flap_right = false;
	phy_angular_velocity += -turn_spd;
	
	phy_linear_velocity_x += lengthdir_x(flap_str/2, 90-phy_rotation);
	phy_linear_velocity_y += lengthdir_y(flap_str/2, 90-phy_rotation)-flap_str;
}