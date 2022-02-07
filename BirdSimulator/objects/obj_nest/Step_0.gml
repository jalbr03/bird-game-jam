if(place_meeting(x, y, obj_bird) && global.check_point != id) {
	global.check_point = id;
	part_particles_create(global.P_System, x, y, global.particle_egg, 32);
}
