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

if(room == rm_level_transition) {
	sequ = layer_sequence_get_sequence(seq_level_end);
}
if(sequence_exists(sequ)) {
	show_debug_message(layer_sequence_get_headpos(seq_level_end));
	if(layer_sequence_get_headpos(seq_level_end) == -1) {
		room_goto(Room1);
	}
}