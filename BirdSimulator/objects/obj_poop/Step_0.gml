if(place_meeting(x, y, obj_bird) || place_meeting(x, y, par_static)) {
	if(place_meeting(x, y, obj_bird)) {
		obj_bird.phy_linear_velocity_x += lengthdir_x(1000, direction);
		obj_bird.phy_linear_velocity_y += lengthdir_y(1000, direction);
	}
	part_particles_create(global.P_System, x, y, global.particle_poop, 64);
	instance_destroy(self);
}

//y += spd;
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
spd += grv
image_angle += 10;