/// @description Init

// Inherit the parent event
event_inherited();

slowmo_timer = new comp_timer(256, function()
{
	global.frame_machine_level.multiplier = 1;
});
slowmo_effect = 0;
slowmo_wave = 0;

depth = -9995;
surface = -1;
can_despawn = false;