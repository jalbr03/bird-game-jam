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

show_debug_message(global.death_timer);