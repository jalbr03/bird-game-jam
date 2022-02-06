if(place_meeting(x, y, obj_bird)) {
	var dist = (point_distance(x, y, obj_bird.x, obj_bird.y)-abs(sprite_height))*scaler;
	obj_bird.phy_linear_velocity_x += lengthdir_x(dist, image_angle+90);
	obj_bird.phy_linear_velocity_y -= lengthdir_y(dist, image_angle+90);
}
