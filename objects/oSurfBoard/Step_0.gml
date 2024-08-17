
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

moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

v_direction = (moveDown - moveUp); // Keeps track of direction

	// Acceleration
if (v_direction != 0)
{
	if (spd < max_spd)
	{
		spd = spd + (accel * decel);
	}
}

else if (v_direction == 0)
{
	spd = 0;
}

// Limit the height that the player can surf (matching the blade)
if (y < max_y_height)
{
	y = max_y_height;
	spd = 0;
}
else if (y > min_y_height)
{
	y = min_y_height;
	spd = 0;
}

vsp = v_direction * spd;
y += vsp;

// Tilt Board Based on Movement
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

/* // FIX: totally broken
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
