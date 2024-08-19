global.magic = magic;

//SpaceBar Down
if magic >= 100
{
	if (keyboard_check_pressed(vk_space))
	{
		if is_recharging == false
		{
			is_draining = true;
		}
		else if is_recharging == true
		{
			is_draining = false;
		}
	}
}
else if magic <= 0
{
	is_draining = false;
}

//SpaceBar Not Down
if magic >= 100
{
	if (!keyboard_check_pressed(vk_space))
	{
		is_draining = false;
		is_recharging = false;
	}
}
else if magic <= 0
{
	is_draining = false;
	is_recharging = true;
}

// Modify the Bar
if is_draining == true
{
	magic -= .7;
}
if is_recharging == true
{
	magic += 1;
}

show_debug_message("{0},is_recharging:{1},is_draining:{2}",magic,is_recharging,is_draining);