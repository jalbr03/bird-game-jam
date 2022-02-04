// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flap(){
	var str = flap_str;
	if(!left_wing_is_down || !right_wing_is_down) {
		str /= 2;
	}
	phy_linear_velocity_x += lengthdir_x(str/2, 90-phy_rotation);
	phy_linear_velocity_y += lengthdir_y(str/2, 90-phy_rotation)-str/2;
	var clampx = abs(lengthdir_x(top_spd, 90-phy_rotation));
	var clampy = abs(lengthdir_y(top_spd, 90-phy_rotation));
	phy_linear_velocity_x = clamp(phy_linear_velocity_x, -clampx, clampx);
	phy_linear_velocity_y = clamp(phy_linear_velocity_y, -clampy, clampy);
}