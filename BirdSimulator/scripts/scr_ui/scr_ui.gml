// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ui_start(){
	obj_falling_egg.grv = obj_falling_egg.trans_grv;
	obj_falling_egg.vel = obj_falling_egg.trans_vel;
	
	room_goto_delay(Room1, room_speed*2);
}

function ui_invert_controls() {
	global.invert = !global.invert;
	img_index = global.invert;
}
function ui_invert_controls_create() {
	img_index = global.invert;
}

function ui_cicle_audio() {
	global.audio += 1;
	if(global.audio >= array_length(global.audio_options)) global.audio = 0;
	audio_master_gain(global.audio_options[global.audio]);
	img_index = global.audio;
}

function ui_cicle_audio_create() {
	img_index = global.audio;
}

function ui_back_to_menue() {
	global.paused = false;
	room_goto(rm_start);
}

function ui_resume() {
	global.paused = false;
}

function ui_quit() {
	game_end();
}