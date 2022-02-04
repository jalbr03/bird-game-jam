// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function make_chain(chain_len, pos, last, other_bird) {
	for(var i=0; i<chain_len; i++) {
		var inst = instance_create_layer(pos.x+i*chain_size, pos.y, layer, obj_chain);
		physics_joint_revolute_create(inst, last, inst.x, inst.y, 0, 0, 0, 0, 0, 0, 0);
		last = inst
	}
	inst.other_seg = other_bird;
	physics_joint_revolute_create(inst, other_bird, other_bird.x, other_bird.y, 0, 0, 0, 0, 0, 0, 0);
}