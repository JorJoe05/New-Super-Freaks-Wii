/// @description Step 2

var _level_id = obj_worldmap_manager.level_id;
			
if (!room_transition_active_get() && !instance_exists(obj_character_select))
{
	//if (_level_id > -1 && button_jump == controls_action_states.press)
	if (_level_id > -1 && input_check_pressed("confirm", global.player_lead))
	{
		global.level_id = _level_id;
		spawn_point_set(level_room_get(_level_id));
		instance_create(obj_character_select);
	}
	else if (input_check_pressed("deny", global.player_lead))
	{
		spawn_point_set(rm_menu_main);
		instance_create_layer(0, 0, "layer_instances", obj_room_transition_fade);
	}
}
