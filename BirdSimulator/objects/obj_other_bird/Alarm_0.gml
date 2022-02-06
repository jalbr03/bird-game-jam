if(instance_exists(obj_bird)) {
	phy_linear_velocity_y = -random_range(200, 200+clamp(sign(y - obj_bird.y), 0, 1)*1100);
	phy_linear_velocity_x = random_range(-100, 100) + sign(obj_bird.x - x)*300;
}
