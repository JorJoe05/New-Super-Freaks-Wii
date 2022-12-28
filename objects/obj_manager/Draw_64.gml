/// @description 

var _screen_width = surface_get_width(application_surface);
var _screen_height = surface_get_height(application_surface);
var _debug_text, _zone_text;
var _i;
var _zone_active;
var _shader = global.shaders_list[global.visuals_settings[visuals_data.shader]][0];

draw_set_alpha(1);
draw_set_color(c_white);

surface_set_target(application_surface);

if (global.debug)
{
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	draw_set_font(font_normal);

	_debug_text = string(fps_real) + "/" + string(fps) + " :FPS"
	+ "\n" + string(game_state_name_get()) + " :Game State"
	+ "\n" + string(game_mode_name_get()) + " :Game Mode"
	+ "\n" + string(room_get_name(room)) + " :Room"
	+ "\n" + string(instance_count) + " :Instances";

	_zone_text = "Zones: ";
	for (_i = 0; _i < array_length(global.zones); ++_i)
	{
		if (is_array(global.zones[_i]))
			_zone_active = global.zones[_i][zone_data.active];
		else
			_zone_active = "X";
		_zone_text = string_insert("\n " + string(_i) + ": " + string(_zone_active), _zone_text, string_length(_zone_text) + 1);
	}

	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(_screen_width - string_width(_debug_text), 0, _screen_width, string_height(_debug_text), false);
	draw_rectangle(_screen_width - string_width(_zone_text), string_height(_debug_text) + 1, _screen_width, string_height(_debug_text) + 1 + string_height(_zone_text), false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(_screen_width, 0, _debug_text);
	draw_text(_screen_width, string_height(_debug_text), _zone_text);
}
surface_reset_target();

if (_shader != -1 && shaders_are_supported())
{
	shader_set(_shader);
	draw_surface(application_surface, 0, 0);
	shader_reset();
}
else
	draw_surface(application_surface, 0, 0);
