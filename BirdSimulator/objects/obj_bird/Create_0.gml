left_wing_is_down = false;
flap_left = false;
right_wing_is_down = false;
flap_right = false;
flap_timer = 0;
max_flap_timer = 0.1;
flap_lerp = 0.2;

max_rot = 30;
left_wing_rot = max_rot*2;
right_wing_rot = -max_rot*2;

flap_str = 100;
turn_spd = 500;
top_spd = 500;

flap_difficulty = 0.028;
recovery_spd = 0.0055;
strength = 1;
hp_w = 64;
hp_h = 16;

is_dead = false;
left_wing_pos = {};
right_wing_pos = {};

game_started = false;