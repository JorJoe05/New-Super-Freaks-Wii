/// @description Init

var _length = chain_segments * 32;

image_yscale = 1;

// Inherit the parent event
event_inherited();

angle = starting_angle;
angle_previous = starting_angle;

thing_x = 0;
thing_y = 0;
thing_x_previous = thing_x;
thing_y_previous = thing_y;

despawn_area[0] = -_length - 32;
despawn_area[1] = -_length - 32;
despawn_area[2] = _length + 32;
despawn_area[3] = _length + 32;