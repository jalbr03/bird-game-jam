/// @description spawn walls

spawn_walls(wall_height, hole_size);

wall_height += random_range(-change_amount, change_amount);
wall_height = clamp(wall_height, hole_size, room_height-hole_size);