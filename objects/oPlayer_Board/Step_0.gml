global.player_y = y;
global.player_grav = grav;
global.player_spd = spd;
global.score = score;

#region Basic Movement

// Horizontal Movement
if (keyboard_check_released (vk_left))
{
	surf_spd = slow_surf
}
else if (keyboard_check_released (vk_left))
{
	surf_spd = fast_surf
}
else
{
	surf_spd = base_surf
}
if is_surfing
{
	x += surf_spd;
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
		spd += accel;
	}
}
else if (v_direction == 0)
{
	spd = 0;
}
#endregion

#region Acceleration
if v_direction != 0 
	if (spd < max_spd)
	{
		spd += accel;
	}

#endregion

#region Gravity / Above Lava
// Being above the blade generates gravity, which dissaptes on contact with blade
// Gravity builds faster than it decays, which balances against the pushback.

if (y < blade_height && grav < grav_max)
{
	grav += grav_accel;
}
else if (grav > 0)
{
	grav -= grav_decay;
}

#region Collision

var inst_bubble = instance_place(x, y+3, oObstacleBubble);
if (inst_bubble != noone) 
{
	show_debug_message("Pop!");
	audio_play_sound(sndBubble_Pop,1,false);
	instance_destroy(inst_bubble)
	if (v_direction < 0)
	{
	spd = 2 * max_spd
	}
}
var inst_shard = instance_place(x, y+3, oObstacleShard);
if (inst_shard != noone) 
{
	show_debug_message("Plop!");
	instance_destroy(inst_shard)
	if (v_direction > 0)
	{
	spd = grav_max
	}
}

// Variable for blade color changed in oBlade code
if (place_meeting(x,y,oBlade))
{
	is_blade_collide = true;
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

#region Debugg Tools

/*
if (keyboard_check_pressed(ord("N")))
{
	audio_stop_all();
	global.magic = 100;
	room_goto_next();
}
if (keyboard_check_pressed(ord("B")))
{
	audio_stop_all();
	global.magic = 100;
	room_goto_previous();
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
*/
#endregion 






