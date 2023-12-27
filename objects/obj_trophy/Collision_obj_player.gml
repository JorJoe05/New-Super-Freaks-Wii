/// @description 

global.trophies = bit_set(global.trophies, trophy_id);
sfx_play_global(sfx_unlock_level);
switch (global.story_mode)
{
	case story_modes.super_freaks:
		if (hearts_maximum_get() > 0)
		{
			sfx_play_global(sfx_heart);
			global.hearts = min(global.hearts + 1, hearts_maximum_get());
		}
		break;
	case story_modes.kranion:
	case story_modes.swordsman:
		player_meter_collect(100);
		break;
}
if (instance_exists(obj_gameplay_manager))
{
	with (obj_gameplay_manager)
		the_trophy_appears = 100;
}
instance_destroy();