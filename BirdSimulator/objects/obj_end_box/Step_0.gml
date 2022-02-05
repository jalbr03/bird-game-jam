if(place_meeting(x, y, obj_bird)) {
	obj_game_manager.transition_to = next_level;
	room_goto(rm_level_transition);
}