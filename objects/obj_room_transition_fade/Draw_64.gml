/// @description 

var _screen_width = surface_get_width(application_surface);
var _screen_height = surface_get_height(application_surface);

draw_set_color(color);
draw_set_alpha(image_alpha);
if (surface_get_target() != -1)
	surface_reset_target();
surface_set_target(application_surface);
draw_rectangle(0, 0, _screen_width, _screen_height, false);
surface_reset_target();