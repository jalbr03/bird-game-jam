// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flap(){
	var str = flap_str;
	if(!left_wing_is_down || !right_wing_is_down) {
		str /= 2;
	}
	var clampx = lengthdir_x(top_spd, 90-phy_rotation);
	var clampy = lengthdir_y(top_spd, 90-phy_rotation);
	
	var can_flap_x = can_flap(phy_linear_velocity_x, clampx);
	var can_flap_y = can_flap(phy_linear_velocity_y, clampy);
	
	if(can_flap_x) phy_linear_velocity_x += lengthdir_x(str/2, 90-phy_rotation);
	if(can_flap_y) phy_linear_velocity_y += lengthdir_y(str/2, 90-phy_rotation)-str/2;
	
	//phy_linear_velocity_x = clamp(phy_linear_velocity_x, -clampx, clampx);
	//phy_linear_velocity_y = clamp(phy_linear_velocity_y, -clampy, clampy);
}

function can_flap(spd, clamp_val) {
	if(sign(spd) != sign(clamp_val)) {
		return true;
		
	} else if(abs(spd) < abs(clamp_val)) {
		return true;
	}
	return false;
}