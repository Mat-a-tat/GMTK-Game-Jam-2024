//Decrease Magic
if (keyboard_check(vk_shift))
{
	increase_magic = false;
	if (!magic_progress_bar >= 0)
	{
		decrease_magic = true;
	}
	else if (magic_progress_bar == 0)
	{
		decrease_magic = false;
	}
}

//Increase Magic
if (!keyboard_check(vk_shift))
{
	decrease_magic = false;
	if magic_progress_bar < 100
	{
		increase_magic = true;
	}
}

// Modify the Bar
if decrease_magic == true
{
	if (magic_progress_bar > 0)
	{
		magic_progress_bar -= 2;
	}
	else
	{
		magic_progress_bar = 0;
		decrease_magic = false;
	}
}
if increase_magic == true
{
	if (magic_progress_bar < 100)
	{
		magic_progress_bar += 1;
	}
	else
	{
		magic_progress_bar = 100;
		increase_magic = false;
	}
}

show_debug_message("{0},increase:{1},decrease:{2}",magic_progress_bar,increase_magic,decrease_magic);