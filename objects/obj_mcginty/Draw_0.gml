/// @description 

var _frame_delta = frame_delta_level_get();

draw_sprite_interpolated(spr_mcginty_body,,,,,,,,,,,,,, _frame_delta);
draw_sprite_interpolated(spr_mcginty_face, visual_face,,,,,,,,, visual_angle, visual_angle_previous,,, _frame_delta);