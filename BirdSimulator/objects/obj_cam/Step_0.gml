if(instance_exists(obj_bird)) {
	x = lerp(x, obj_bird.x, 0.2);
	y = lerp(y, obj_bird.y, 0.2);
} else if(instance_exists(obj_egg)) {
	x = lerp(x, obj_egg.x, 0.2);
	y = lerp(y, obj_egg.y, 0.2);
	
}
if(room != starting_room) instance_destroy(self);