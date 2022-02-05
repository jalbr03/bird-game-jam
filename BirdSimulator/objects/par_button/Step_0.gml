var mx = display_mouse_get_x();
var my = display_mouse_get_y();
if(abs(mx-x) < sprite_width/2 && abs(my-y) < sprite_height/2) {
	image_index = 1;
	if(mouse_check_button_pressed(mb_left)) {
		script_execute(on_click_scr);
	}
} else {
	image_index = 0;
}
