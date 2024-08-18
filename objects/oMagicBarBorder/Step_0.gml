global.magic = magic;

//Decrease Magic
if (keyboard_check(vk_space))
{
	if (magic > 0) && (increase_magic == false)
	{
		decrease_magic = true;
	}
	else if (magic == 0) || (increase_magic = true)
	{
		decrease_magic = false;
	}
}

//Increase Magic
if (!keyboard_check(vk_space))
{
	decrease_magic = false;
	if magic < 100
	{
		increase_magic = true;
	}
}
if (magic == 0)
{
	increase_magic = true;
}

// Modify the Bar
if decrease_magic == true
{
	if (magic > 0)
	{
		magic -= 1;
	}
	else
	{
		magic = 0;
		decrease_magic = false;
	}
}
if increase_magic == true
{
	if (magic < 100)
	{
		magic += 1;
	}
	else
	{
		magic = 100;
		increase_magic = false;
	}
	if (keyboard_check_pressed(vk_space))
	{
		increase_magic = false;
	}
}

// show_debug_message("{0},increase:{1},decrease:{2}",magic,increase_magic,decrease_magic);