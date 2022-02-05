if(place_meeting(x, y, obj_bird)) {
	obj_bird.phy_linear_velocity_y -= (point_distance(obj_bird.x, y, obj_bird.x, obj_bird.y)-sprite_height/2)*scaler;
}