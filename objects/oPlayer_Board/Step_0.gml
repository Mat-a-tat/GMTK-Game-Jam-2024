global.player_y = y;
global.player_grav = grav;
global.player_spd = spd;
global.score = score;

#region Basic Movement

// Horizontal Movement
if is_surfing
{
	x += surf_spd;
}

// DEBUG Stop surfing
if keyboard_check_pressed(vk_shift)
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
// Being above the blade generates gravity, which dissaptes on contact with blade
if (y < blade_height)
{
	grav += grav_intensity;
}
else if (grav != 0)
{
	grav -= grav_intensity;
}
#endregion

#region Speed

vsp = (v_direction * spd) + grav;
// Check that our current movespeed dosent zip us out of bounds
if y + vsp <= min_y_height
{
	y += vsp;
}

#endregion

#region Tilt Direction
// Tilt Board Based on Movement
if moveDown
{
	if (global.angle > -25)
	{
		global.angle -= 2;
	}
}
else if moveUp
{
	if (global.angle < 25)
	{
		global.angle += 2; 
	}
}
else // Normalize to 0 when there's no input
{
	if global.angle > 0
	{
		global.angle -= 1;
	}
	else if global.angle < 0
	{
		global.angle += 1;	
	}
}
image_angle = global.angle;

#endregion

#region Collision

// Increase Score if Touching Racetrack
// TODO: Max score will be the number of frames that the gameplay lasts
// compare player score with max score, and turn into a percentage

if (place_meeting(x,y,race_track_parts))
{
	score += 1;
}

if (place_meeting(x,y-10,oObstacleBubble))
{
	show_debug_message("Pop!");
	grav = -3;
}
#endregion 

#region Debugg Tools

if (keyboard_check_pressed(ord("N")))
{
	room_goto_next();
}
if (keyboard_check_pressed(ord("B")))
{
	room_goto_previous();
}

#endregion 