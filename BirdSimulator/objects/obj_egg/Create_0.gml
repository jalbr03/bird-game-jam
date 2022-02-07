pos = 2080;
yvel = 0;
acc = 0.8;
hit = 0;
if(global.check_point != noone && instance_exists(global.check_point)) {
	x = global.check_point.x;
	y = global.check_point.y;
}