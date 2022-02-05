y += yvel;
yvel += 1;
if(!bounce) {
	x += lengthdir_x(5, starting_angle);
}
image_angle += 2;