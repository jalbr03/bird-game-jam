var xx = camera_get_view_x(view_camera[0])+cam_w/2;
var yy = camera_get_view_y(view_camera[0])+cam_h/2;

offset = paralax(xx, yy, city_par_amount3, 200, 0);
draw_sprite_ext(spr_city3, 0, xx+offset.x, yy+offset.y, rescale, rescale, 0, c_gray, 1);

offset = paralax(xx, yy, city_par_amount2, 300, 0);
draw_sprite_ext(spr_city2, 0, xx+offset.x, yy+offset.y, rescale, rescale, 0, c_gray, 1);

var offset = paralax(xx, yy, city_par_amount1, 600, 0);
draw_sprite_ext(spr_city1, 0, xx+offset.x, yy+offset.y, rescale, rescale, 0, c_gray, 1);
