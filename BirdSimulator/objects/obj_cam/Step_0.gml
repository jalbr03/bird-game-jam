if(instance_exists(obj_bird)) {
	x = lerp(x, obj_bird.x, 0.4);
	y = lerp(y, obj_bird.y, 0.4);
}
if(room != starting_room) instance_destroy(self);