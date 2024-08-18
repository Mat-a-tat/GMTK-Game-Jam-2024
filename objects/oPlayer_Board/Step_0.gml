
#region Basic Movement

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

// This code fixes a bug. It resets the spd variable when changing directions.
if (keyboard_check_released (vk_down)) || (keyboard_check_released (vk_up))
{
	spd = 0;
}

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
#endregion

#region Vertical Limits | Gravity
// Limit the player vertical space. Being above the blade produces escalating gravity
if (y < blade_height)
{
	if (y < max_y_height)
	{
		spd = 0
		y += 1
	}
	else
	{
		grav += grav_intensity;
	}
}
else if (y > min_y_height)
{
	y = min_y_height;
	spd = 0;
}
else if (grav != 0)
{
	grav -= grav_intensity;
}

vsp = (v_direction * spd) + grav;
y += vsp;

#endregion

// Tilt Board Based on Movement
if moveDown
{
	if (angle > -25)
	{
		angle -= 2;
	}
}
else if moveUp
{
	if (angle < 25)
	{
		angle += 2; 
	}
}
else // Normalize to 0 when there's no input
{
	if angle > 0
	{
		angle -= 1;
	}
	else if angle < 0
	{
		angle += 1;	
	}
}
image_angle = angle;



// Increase Score if Touching Racetrack
// TODO: Max score will be the number of frames that the gameplay lasts
// compare player score with max score, and turn into a percentage
if (place_meeting(x,y,race_track_parts))
{
	score += 1;
	show_debug_message(score);
}