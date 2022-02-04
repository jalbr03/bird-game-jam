if(other_seg != noone) {
	global.seg_dist = distance_to_point(other_seg.x, other_seg.y);
	if(global.seg_dist > breaking) {
		instance_destroy(self);
	}
}

if(global.seg_dist > danger) {
	var amount = (global.seg_dist-danger)/(breaking-danger);
	image_blend = merge_color(c_red, make_color_rgb(50, 0, 0), amount);
} else if(global.seg_dist > close) {
	var amount = (global.seg_dist-close)/(danger-close);
	image_blend = merge_color(c_white, c_red, amount);
} else {
	image_blend = c_white;
}