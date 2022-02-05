function particle_type_creat(col, size, size_inc, min_spd, max_spd, dir, rand_dir_min, rand_dir_max, min_life, max_life){
	var particle = part_type_create();
	part_type_shape(particle,pt_shape_pixel);								//This defines the particles shape
	part_type_size(particle,size/2,size,size_inc,0);						//This is for the size
	part_type_color1(particle,col);											//This sets its colour. There are three different codes for this
	part_type_alpha1(particle,1);											//This is its alpha. There are three different codes for this
	part_type_speed(particle,min_spd, max_spd,-0.10,0);						//The particles speed
	part_type_direction(particle,dir+rand_dir_min,dir+rand_dir_max,0,20);	//The direction
	part_type_orientation(particle,0,90,0,0,true);							//This changes the rotation of the particle
	part_type_blend(particle,1);											//This is the blend mode, either additive or normal
	part_type_life(particle,min_life,max_life);								//this is its lifespan in steps</pre>
	return particle;
}