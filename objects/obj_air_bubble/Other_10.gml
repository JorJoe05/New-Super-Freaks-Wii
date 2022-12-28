/// @description Step

size_previous = size;
size = min(size + 0.025, 1);

x += speed_h;
y += speed_v;

if (size == 1)
{
	if (!global.water_active || (y < global.water_height))
		instance_destroy();
	else
	{
		collision_left();
		collision_right();
		collision_up();
		collision_down();
	
		if (collision_flags != 0)
			instance_destroy();
	}
}