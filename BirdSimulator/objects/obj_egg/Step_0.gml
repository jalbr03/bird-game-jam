pos -= yvel;
yvel += acc;

if(pos <= 0) {
	yvel = -20;
	hit += 1;
	pos = 1;
}
if(hit == 1) {
	image_angle += 10;
}
if(hit >= 2) {
	instance_destroy(self);
}