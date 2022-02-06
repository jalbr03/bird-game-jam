function particle_type_create(col, size, size_inc, min_spd, max_spd, spd_inc, dir, rand_dir_min, rand_dir_max, min_life, max_life){
	var particle = part_type_create();
	part_type_shape(particle,pt_shape_pixel);								//This defines the particles shape
	part_type_size(particle,size/2,size,size_inc,0);						//This is for the size
	part_type_color1(particle,col);											//This sets its colour. There are three different codes for this
	part_type_alpha1(particle,1);											//This is its alpha. There are three different codes for this
	part_type_speed(particle,min_spd, max_spd,spd_inc,0);						//The particles speed
	part_type_direction(particle,dir+rand_dir_min,dir+rand_dir_max,0,20);	//The direction
	part_type_orientation(particle,0,90,0,0,true);							//This changes the rotation of the particle
	part_type_blend(particle,1);											//This is the blend mode, either additive or normal
	part_type_life(particle,min_life,max_life);								//this is its lifespan in steps</pre>
	return particle;
}

function spawn_ui(spacing, offset) {
	var pos = {x: 1920/2, y: 1080/2};
	for(var i=0; i<array_length(ui_options); i++) {
		instance_create_layer(pos.x, pos.y+i*spacing-array_length(ui_options)/2*spacing+offset, layer, ui_options[i]);
	}
}

function room_goto_delay(rm, delay) {
	obj_game_manager.delay_room_goto = rm;
	obj_game_manager.alarm[0] = delay;
}

function paralax(xx, yy, par_amount, par_offsety, par_offsetx) {
	var offsetx = -((xx/room_width*2)-1)*par_amount.x+par_offsetx;
	var offsety = -((yy/room_height*2)-1)*par_amount.y+par_offsety;
	return {x: offsetx, y: offsety};
}