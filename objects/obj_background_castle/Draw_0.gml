/// @description 

var _view_x1 = view_x1_get();
var _view_y1 = view_y1_get();
var _view_x2 = view_x2_get();
var _view_y2 = view_y2_get();
var _cell_x, _cell_y, _cell;

event_inherited();

draw_set_color(c_black);
draw_rectangle(_view_x1, _view_y1, _view_x2, _view_y2, false);

surface_set_target(surface);
	
surface_reset_target();

draw_set_color(c_white);

if (background_blur_get() && shaders_are_supported())
{
	shader_set(shader_blur);
	shader_set_uniform_f(shader_get_uniform(shader_blur, "texture_size"), surface_get_width(surface), surface_get_height(surface));
	draw_surface(surface, _view_x1, _view_y1);
	shader_reset();
}
else
	draw_surface(surface, _view_x1, _view_y1);