starting_room = room;

rescale = 2;
base_par_amount = {x: 1000, y:400};
city_par_amount1 = {x: base_par_amount.x, y: base_par_amount.y};
city_par_amount2 = {x: base_par_amount.x/2, y: base_par_amount.y/2};
city_par_amount3 = {x: base_par_amount.x/4, y: base_par_amount.y/4};
cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);