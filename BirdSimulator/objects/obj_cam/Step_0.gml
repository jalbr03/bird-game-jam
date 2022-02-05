if(instance_exists(obj_bird)) {
	x = lerp(x, obj_bird.x, 0.2);
	y = lerp(y, obj_bird.y, 0.2);
}
if(room != starting_room) instance_destroy(self);