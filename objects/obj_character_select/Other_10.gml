/// @description Step

var _player_num;
var _cutscene_room;
var _level_list;

switch (state)
{
	case 0: //Raise
		if (state_begin)
		{
			sfx_play_global(sfx_slide_whistle_up);
			y_offset = 1;
		}
		
		y_offset = max(y_offset - 0.05, 0);
		
		if (y_offset == 0)
			state_next_set(2);
		break;
	case 1: //Lower
		if (state_begin)
		{
			sfx_play_global(sfx_slide_whistle_down);
			y_offset = 0;
		}
		
		y_offset = min(y_offset + 0.05, 1);
		
		if (y_offset == 1)
			instance_destroy();
		break;
	case 2: //Main
		if (state_begin)
			pause_inputs = true;
		
		for (_player_num = 0; _player_num <= player_numbers.count; ++_player_num)
		{
			controls_step(_player_num);
			if (pause_inputs)
			{
				button_up[_player_num] = controls_action_states.NA;
				button_down[_player_num] = controls_action_states.NA;
				button_confirm[_player_num] = controls_action_states.NA;
				button_deny[_player_num] = controls_action_states.NA;
			}
			else
			{
				button_up[_player_num] = controls_action_state_get(controls_actions.up, _player_num);
				button_down[_player_num] = controls_action_state_get(controls_actions.down, _player_num);
				button_confirm[_player_num] = controls_action_state_get(controls_actions.jump, _player_num);
				button_deny[_player_num] = controls_action_state_get(controls_actions.attack, _player_num);
			}
			
			if (global.player_list[_player_num][player_data.active])
			{
				if (button_up[_player_num] == controls_action_states.press)
				{
					global.player_list[_player_num][player_data.character_index]++;
					
					if (global.player_list[_player_num][player_data.character_index] >= character_indexes.count)
						global.player_list[_player_num][player_data.character_index] = 0;
					
					while (global.characters_unlocked[global.player_list[_player_num][player_data.character_index]] == false)
					{
						global.player_list[_player_num][player_data.character_index]++;
					
						if (global.player_list[_player_num][player_data.character_index] >= character_indexes.count)
							global.player_list[_player_num][player_data.character_index] = 0;
					}
				}
				else if (button_down[_player_num] == controls_action_states.press)
				{
					global.player_list[_player_num][player_data.character_index]--;
					
					if (global.player_list[_player_num][player_data.character_index] < 0)
						global.player_list[_player_num][player_data.character_index] = character_indexes.count - 1;
						
					while (global.characters_unlocked[global.player_list[_player_num][player_data.character_index]] == false)
					{
						global.player_list[_player_num][player_data.character_index]--;
						if (global.player_list[_player_num][player_data.character_index] < 0)
							global.player_list[_player_num][player_data.character_index] = character_indexes.count - 1;
					}
				}
				else if (button_confirm[_player_num] == controls_action_states.press)
				{
					if (_player_num == 0)
						state_next_set(3);
				}
				else if (button_deny[_player_num] == controls_action_states.press)
				{
					if (_player_num == 0)
						state_next_set(1);
					else
						global.player_list[_player_num][player_data.active] = false;
				}
			}
			else
			{
				if (button_confirm[_player_num])
				{
					global.player_list[_player_num][player_data.active] = true;
				}
			}
		}
		
		pause_inputs = false;
		break;
	case 3: //Go To Level
		if (state_begin)
		{
			game_timer_pause(true);
			game_timer_reset();
			switch (global.game_mode)
			{
				case game_modes.randomizer:
					_level_list = global.level_list[level_lists.completed];
					array_resize(global.current_level_list, 0);
					array_copy(global.current_level_list, 0, _level_list, 0, array_length(_level_list));
					array_randomize(global.current_level_list);
					global.score = 0;
					global.level_demo = 0;
					global.level_id = global.current_level_list[global.level_demo];
					spawn_point_set(level_room_get(global.level_id));
					instance_create_layer(0, 0, "layer_instances", obj_room_transition_level);
					break;
				case game_modes.speedrun:
					switch (global.game_mode_subtype)
					{
						case speedrun_modes.normal:
							_level_list = global.level_list[level_lists.speedrun_normal];
							break;
						case speedrun_modes.crazy:
							_level_list = global.level_list[level_lists.speedrun_crazy];
							break;
						case speedrun_modes.ludicrous:
							_level_list = global.level_list[level_lists.speedrun_ludicrous];
							break;
						case speedrun_modes.insane:
							_level_list = global.level_list[level_lists.speedrun_insane];
							break;
						case speedrun_modes.freaky:
							_level_list = global.level_list[level_lists.speedrun_freaky];
							break;
						case speedrun_modes.kranion:
							_level_list = global.level_list[level_lists.speedrun_kranion];
							break;
						case speedrun_modes.mystic:
							_level_list = global.level_list[level_lists.speedrun_stadium];
							break;
						case speedrun_modes.adventure:
							_level_list = global.level_list[level_lists.speedrun_adventure];
							break;
						case speedrun_modes.secret:
							_level_list = global.level_list[level_lists.speedrun_secret];
							break;
						case speedrun_modes.ultimate:
							_level_list = global.level_list[level_lists.speedrun_ultimate];
							break;
					}
					array_resize(global.current_level_list, 0);
					array_copy(global.current_level_list, 0, _level_list, 0, array_length(_level_list));
					global.level_demo = 0;
					global.level_id = global.current_level_list[global.level_demo];
					spawn_point_set(level_room_get(global.level_id));
					instance_create_layer(0, 0, "layer_instances", obj_room_transition_level);
					break;
				default:
					_cutscene_room = global.levels[global.level_id][level_data.cutscene_room_begin];
					if (!level_complete_get(global.level_id) && _cutscene_room != -1)
					{
						spawn_point_set(_cutscene_room);
						instance_create_layer(0, 0, "layer_instances", obj_room_transition_fade);
					}
					else
						instance_create_layer(0, 0, "layer_instances", obj_room_transition_level);
					break;
			}
			music_stop();
		}
		break;
}