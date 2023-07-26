/// @description Step

var _player = player_nearest_alive();
var _fast_forward = fast_forward_level_get() + global.frame_machine_level.multiplier;

// Inherit the parent event
event_inherited();

switch (state)
{
	case boss_antifreak_states.inactive:
		if (state_begin)
		{
			speed_x = 0;
			speed_y = 0;
			x = -1000;
			visible = false;
			hitbox.active = hitbox_active.inactive;
		}
		break;
	case boss_antifreak_states.intro:
		if (state_begin)
		{
			speed_x = 0;
			speed_y = 0;
			sprite_index = player_animation_get(character_index, player_animations.idle);
			animate_speed = 0;
			image_index = 0;
		}
		
		timer--;
		
		if (timer <= 0)
			state_next_set(boss_antifreak_states.retreat);
		break;
	case boss_antifreak_states.retreat:
		if (state_begin)
		{
			speed_x = 0;
			speed_y = 0;
			sprite_index = player_animation_get(character_index, player_animations.air);
			animate_speed = 0;
			image_index = 0;
			sfx_play_global(sfx_slide_whistle_up);
		}
		
		speed_y -= 0.25;
		y += speed_y;
			
		if (y <= 240)
			state_next_set(boss_antifreak_states.wait);
		break;
	case boss_antifreak_states.wait:
		if (state_begin)
		{
			if (wait == 0)
				wait = choose(80, 112);
		}
		
		wait--;
		
		if (wait <= 0)
			state_next_set(boss_antifreak_states.attack_1);
		break;
	case boss_antifreak_states.death:
		if (state_begin)
		{
			global.boss_phase = bit_set(global.boss_phase, 2);
			instance_create_layer(x, y, "layer_instances", obj_boss_explosion);
			screen_shake(0, 8);
			sfx_play_global(sfx_yell_wilhelm);
			speed_x = 0;
			speed_y = -7.15;
			hitbox.active = hitbox_active.inactive;
			sprite_index = player_animation_get(character_index, player_animations.death);
			image_index = 0;
			blink = false;
		}
		
		speed_y += min(0.25, 6 - speed_y);
		
		x += speed_x;
		y += speed_y;
		
		if (y >= room_height)
			state_next_set(boss_antifreak_states.death);
		break;
	case boss_antifreak_states.attack_1:
		if (state_begin)
		{
			hitbox.behavior = enemy_hitbox_behaviors.heavy_hazard;
			sprite_index = player_animation_get(character_index, player_animations.jump);
			animate_speed = 0.25;
			x = random_range(480, 1264);
			y = 240;
		}
		
		y += (4 / _fast_forward);
		
		if (y >= 512)
		{
			y = 512;
			if (!is_undefined(_player))
			{
				attack_x = _player.x;
				attack_y = _player.y;
			}
			else
			{
				attack_x = x;
				attack_y = y;
			}
			state_next_set(boss_antifreak_states.attack_2);
		}
		break;
	case boss_antifreak_states.attack_2:
		if (state_begin)
		{
			start_x = x;
			start_y = y;
			timer = 0;
			hitbox.behavior = enemy_hitbox_behaviors.heavy_hazard;
			sprite_index = player_animation_get(character_index, player_animations.jump);
			animate_speed = 0.25;
		}
		
		timer = min(timer + 0.02, 1);
		
		x = lerp(start_x, attack_x, timer);
		y = lerp(start_y, attack_y, timer);
		
		if (timer >= 1)
			state_next_set(boss_antifreak_states.attack_3);
		break;
	case boss_antifreak_states.attack_3:
		if (state_begin)
		{
			timer = 112 - (global.difficulty * 16);
			hitbox.behavior = enemy_hitbox_behaviors.heavy;
			sprite_index = player_animation_get(character_index, player_animations.air);
			animate_speed = 0;
			image_index = 1;
			blink = false;
			attack_x = undefined;
			attack_y = undefined;
		}
		
		if (!is_undefined(_player))
		{
			face = (sign(_player.x - x));
			if (face == 0)
				face = 1;
		}
		
		timer -= (1 / _fast_forward);
		if (timer <= 0)
		{
			blink = false;
			state_next_set(boss_antifreak_states.attack_2);
		}
		else if (timer <= 24)
		{
			if (is_undefined(attack_x))
			{
				if (!is_undefined(_player))
				{
					attack_x = _player.x;
					attack_y = _player.y;
				}
				else
				{
					attack_x = x;
					attack_y = y;
				}
			}
			if (global.game_frame_new)
				blink = !blink;
		}
		break;
}