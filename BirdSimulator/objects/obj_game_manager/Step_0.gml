if(global.death_timer > 0) {
	global.death_timer -= 1/room_speed;
	did_die = true;
} else {
	if(did_die) {
		did_die = false;
		room_restart();
	}
	global.death_timer = 0;
}

if(room == rm_start) {
	if(!audio_is_playing(snd_wind)) {
		audio_play_sound(snd_wind, 10, 1);
	}
} else {
	if(!instance_exists(obj_audio)) {
		spawn_ui(192, 160);
	}
}

if(room == rm_level_transition && sequ == noone) {
	sequ = layer_sequence_create(layer, room_width/2, room_height/2, seq_level_end);
}

if(layer_sequence_exists(layer, sequ)) {
	if(layer_sequence_get_headpos(sequ) > 310) {
		if(instance_exists(obj_streaks)) {
			obj_streaks.image_alpha = lerp(obj_streaks.image_alpha, 1, 0.1);
		}
	}
	
	if(layer_sequence_get_headpos(sequ) == layer_sequence_get_length(sequ)) {
		room_goto(transition_to);
		sequ = noone;
	}
}

if(room != last_room) {
	audio_stop_all();
}

last_room = room;