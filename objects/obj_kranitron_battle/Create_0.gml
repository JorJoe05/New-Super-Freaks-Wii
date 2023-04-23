/// @description Init

// Inherit the parent event
event_inherited();

depth = 12;
image_xscale = -4;
image_yscale = 4;
hitbox = new comp_hitbox_AABB(,, hitbox_active.active,,, -256, -320, 256, 320);
hitbox_laser = new comp_hitbox_capsule(0, 0, hitbox_active.inactive, enemy_hitbox_behaviors.die, 1, 0, 64, -8000, 64, 48);
timer = 0;
timer_missile = 0;
multiplier = 0;
laser_alpha = 0;
can_despawn = false;
animate_speed = 0;
hp_init(6);
boss_name = "Kranitron K";

state_next_set(0);