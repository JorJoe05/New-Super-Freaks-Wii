/// @description Init

// Inherit the parent event
event_inherited();

hitbox = new comp_hitbox_AABB(,,,,, -32, -32, 32, 32);
with (hitbox)
	hitbox_bitmask_set(,,,, true);
	
animate_speed = 0.125;
