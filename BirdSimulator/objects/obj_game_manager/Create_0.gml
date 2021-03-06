global.invert = false;
global.audio = 0;
global.audio_options = [1, 0.8, 0.5, 0.2, 0];
global.paused = false;
audio_gain_offset = 0;
global.check_point = noone;

global.death_timer = 0;
did_die = false;
global.max_death_timer = 1;

global.P_System = part_system_create_layer(layer, true);

global.particle_egg = particle_type_create(c_white, 32, -0.2, 3, 5, -0.1, 0, 0, 359, 30, 120);
global.particle_steam = particle_type_create(c_white, 64, -0.2, 5, 10, -0.01, 90, -20, 0, 100, 520);
global.particle_poop = particle_type_create(make_color_rgb(160, 65, 13), 64, -0.2, 5, 10, -0.01, 90, -10, 10, 100, 520);
global.particle_water1 = particle_type_create(c_blue, 64, -0.2, 5, 10, -0.01, 90, -10, 10, 100, 520);

sequ = noone;
transition_to = noone;
delay_room_goto = noone;

ui_options = [obj_resume, obj_audio, obj_invert, obj_full_screen, obj_back_to_menue];

last_room = room;