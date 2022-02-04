// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_walls(height, hole_size) {
	var inst1 = instance_create_layer(room_width+64, room_height, layer, obj_wall);
	var inst2 = instance_create_layer(room_width+64, height-hole_size/2, layer, obj_wall);
	
	inst1.image_yscale = room_height-height-hole_size;
	inst2.image_yscale = room_height;
}