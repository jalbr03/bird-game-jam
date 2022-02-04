if(player_number != 0) exit;

var other_bird = instance_create_layer(x+chain_length*chain_size, y, layer, obj_bird);
other_bird.player_number = 1;
if(player_number == 0) {
	make_chain(10, {x: x, y: y}, self, other_bird);
}