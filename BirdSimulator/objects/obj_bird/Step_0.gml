var left_wing = keyboard_check(ord("A"));
var right_wing = keyboard_check(ord("D"));
var up_right = keyboard_check_pressed(vk_space);
if(global.invert) {
	var left_wing = keyboard_check(ord("D"));
	var right_wing = keyboard_check(ord("A"));
}

if(left_wing) {
	if(strength > 0) {
		if(!left_wing_is_down) {
			left_wing_is_down = true;
			flap_left = true;
			if(!game_started) game_started = true;
		}
	}
} else {
	left_wing_is_down = false;
}
if(right_wing) {
	if(strength > 0) {
		if(!right_wing_is_down) {
			right_wing_is_down = true;
			flap_right = true;
			if(!game_started) game_started = true;
		}
	}
} else {
	right_wing_is_down = false;
}

var did_flap = false;
if(flap_left) {
	flap_left = false;
	phy_angular_velocity += turn_spd;
	
	flap_timer = max_flap_timer;
}
if(flap_right) {
	flap_right = false;
	phy_angular_velocity += -turn_spd;
	
	flap_timer = max_flap_timer;
}
if(!left_wing_is_down && !right_wing_is_down || strength <= 0) {
	flap_timer = 0;
}

if(flap_timer > 0) {
	flap();
	strength -= flap_difficulty;
	did_flap = true;
	flap_timer -= 1/room_speed;
}

if(!did_flap && game_started) {
	if(abs(phy_linear_velocity_y) < 10 && collision_line(x, y, x, y+sprite_height, par_static, 1, 1)) {
		if(strength < 1) strength += recovery_spd*2;
		
		if(up_right) {
			phy_linear_velocity_y = -flap_str*2;
			phy_angular_velocity = angle_difference(-phy_rotation, 0)*10;
		}
	}
	
	if(strength < 1) {
		strength += recovery_spd;
	} else if(room != rm_end) {
		strength += recovery_spd/2;
	}
}
if(strength >= 2 || y > room_height) {
	is_dead = true;
}

if(is_dead) {
	global.death_timer = global.max_death_timer;
	instance_create_layer(x, y, layer, obj_death);
	var left = instance_create_layer(left_wing_pos.x, left_wing_pos.y, layer, obj_death);
	var right = instance_create_layer(right_wing_pos.x, right_wing_pos.y, layer, obj_death);
	left.sprite_index = spr_wing;
	left.image_yscale = -1;
	left.image_angle = 180;
	right.sprite_index = spr_wing;
	left.bounce = false;
	right.bounce = false;
	instance_destroy(self);
}