/// @description Step

var _func;

controls_step(0);
button_confirm = controls_action_state_get(controls_actions.jump, 0);

switch (state)
{
	case 0: //Fade In
		if (state_begin)
		{
			frame = 0;
			alpha = 0;
		}
			
		frame = min(frame + 1, 10);
		alpha = (frame * 0.1);
		if (frame == 10)
			state_next_set(1);
		break;
	case 1: //Count Through Unlocks
		if (state_begin)
		{
			alpha = 1;
		}
			
		music_stop();
		if (unlock_id >= array_length(global.unlocks))
			state_next_set(5);
		else
		{
			if (global.unlocks[unlock_id][unlock_data.unlocked] == true)
				unlock_id++;
			else
			{
				_func = global.unlocks[unlock_id][unlock_data.func_condition];
		
				if (_func() == true)
				{
					global.unlocks[unlock_id][unlock_data.unlocked] = true;
					_func = global.unlocks[unlock_id][unlock_data.func_unlock];
					_func();
					state_next_set(2);
				}
				else
					unlock_id++;
			}
		}
		break;
	case 2: //Unlock Text Open
		if (state_begin)
		{
			text = global.unlocks[unlock_id][unlock_data.text];
			dialog_size = 0;
			frame = 0;
		}
		
		frame = min(frame + 1, 10);
		dialog_size = lerp(dialog_size, 1, frame / 10);
		
		if (frame == 10)
			state_next_set(3);
		break;
	case 3: //Unlock Text
		if (state_begin)
		{
			dialog_size = 1;
			frame = 0;
			button_prompt = true;
			audio_stop_all();
			sfx_play_global(sfx_fanfare);
		}
		
		frame = min(frame + 1, 120);
		
		if (button_confirm == controls_action_states.hold || button_confirm == controls_action_states.press)
			state_next_set(4);
		break;
	case 4: //Unlock Text Close
		if (state_begin)
		{
			frame = 0;
			button_prompt = false;
		}
		
		frame = min(frame + 1, 10);
		dialog_size = lerp(dialog_size, 0, frame / 10);
		
		if (frame == 10)
			state_next_set(1);
		break;
	case 5:
		if (state_begin)
		{
			audio_stop_all();
			levels_save();
			unlocks_save();
			museum_unlocks();
			museum_save();
			draw_texture_flush();
			switch (global.game_mode)
			{
				case game_modes.normal:
					spawn_point_set(rm_worldmap);
					break;
				default:
					spawn_point_set(rm_menu_main);
					break;
			}
			game_timer_reset();
			room_destination_set(spawn_point_room_get());
			global.hearts = 0;
			global.heart_meter = 0;
		}
		break;
	case 6:
		if (state_begin)
			alpha = 1;
			
		alpha -= 0.05;
		
		if (alpha <= 0)
			instance_destroy();
		break;
}
