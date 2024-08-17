
// Horizontal Movement
if is_surfing
{
	x += surf_spd;
}

// DEBUG Stop surfing
if keyboard_check_pressed(vk_space)
{
	switch (is_surfing)
	{
		case true:
			is_surfing = false;
		break;
		
		case false:
			is_surfing = true;
		break;
	}
}

// Vertical Movement
moveDown = keyboard_check(vk_down);
moveUp = keyboard_check(vk_up);

v_direction = (moveDown - moveUp); // Keeps track of direction

var direction_change = false; //Keeps track of direction change
if (keyboard_check_released (vk_down)) || (keyboard_check_released (vk_up))
{
	direction_change = true;
}

	// Acceleration
if (v_direction != 0)
{
	if (spd < max_spd)
	{
		spd = spd + (accel * decel);
	}
}

else if (v_direction == 0) || (direction_change)
{
	spd = 0;
}

vsp = v_direction * spd;
y += vsp;

// Tilt Board Based on Movement
// FIX: totally broken

if moveDown
{
	image_angle = 345;
}
else if moveUp
{
	image_angle = 15;
}
else
{
	image_angle = 0;
}

/*
image_angle = image_angle + vsp;
if (image_angle <= 315) && (image_angle > 45)
{
	image_angle = 315;
}
else if (image_angle <= 45) && (image_angle > 0)
{
	image_angle = 45;
} */



show_debug_message("{0} {1}", vsp, spd);
