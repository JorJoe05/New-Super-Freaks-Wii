/// @description Draw

var _screen_width = screen_width_get();
var _screen_height = screen_height_get();
var _view_x1 = view_x1_get();
var _view_y1 = view_y1_get();
var _view_width = view_width_get();
var _view_height = view_height_get();
var _screen_width_half = _screen_width / 2;
var _screen_height_half = _screen_height / 2;
var _text = string_copy(text, 0, text_draw);

draw_set_projection_2D(_view_x1, _view_y1, _screen_width, _screen_height);
draw_set_alpha(1);

//Draw Back
if (sprite_index != -1)
	draw_sprite_ext(sprite_index, image_index, _view_x1 + _screen_width_half, _view_y1 + _screen_height_half, 1, 1, 0, c_white, sprite_alpha);
//Draw Text Rectangle
draw_set_alpha(0.25);
draw_set_color(c_black);
draw_rectangle(_view_x1, _view_y1 + (_screen_height - 112), _view_x1 + _screen_width, _view_y1 + _screen_height, false);
//Draw Text
draw_set_alpha(1);
draw_set_font(global.font_16);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(_view_x1, _view_y1 + (_screen_height - 112), _text, -1, _screen_width);

draw_set_projection_2D(_view_x1, _view_y1, _view_width, _view_height);