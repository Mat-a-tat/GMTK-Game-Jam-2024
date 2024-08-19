/// @description Hold Space to reveal the outline
if (oMagicBarBorder.is_draining == true) && (path_debug == false)
{
   if image_alpha < 0.5 { image_alpha = image_alpha + fade_speed; }
}
if (oMagicBarBorder.is_recharging == true) && (path_debug == false)
{
    if image_alpha > 0 { image_alpha = image_alpha - fade_speed; }
}

if (place_meeting(x,y,oPlayer_Board))
{
	score += 1;
}

// DEBUG Show/Hide Path
if keyboard_check_pressed(ord("P"))
{
	if image_alpha < 1
	{
		image_alpha = 1;
	}
	else if image_alpha > 0
	{
		image_alpha = 0;
	}
	if path_debug == false
	{
		path_debug = true;
	}
	else if path_debug == true
	{
		path_debug = false;
	}
}