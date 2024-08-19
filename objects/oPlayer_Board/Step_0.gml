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
// DEBUG Skip Room/Return Room
if keyboard_check_pressed(vk_enter)
{
	room_goto_next();
}
if keyboard_check_pressed(vk_backspace)
{
	room_goto_previous();
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

#region Gravity / Above Lava
// Being above the blade generates gravity, which dissaptes on contact with blade
// Gravity builds faster than it decays, which balances against the pushback.
if (y < blade_height)
{
	grav += grav_high_intensity;
}
else if (grav != 0)
{
	grav -= grav_low_intensity;
}

#region Pushback / In Lava
// Being lower in the lava generates an upward force, shooting you higher the lower you start
if (y > blade_height)
{
	lava_pushback = -y / 10000;
}
else if (lava_pushback != 0)
{
	lava_pushback = 0;
}

#endregion

#region Speed

vsp = (v_direction * spd) + grav + lava_pushback;
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

if (place_meeting(x,y-10,oObstacleBubble))
{
	show_debug_message("Pop!");
	grav = -4;
}
// Variable for blade color changed in oBlade code
if (place_meeting(x,y,oBlade))
{
	is_blade_collide = true;
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
