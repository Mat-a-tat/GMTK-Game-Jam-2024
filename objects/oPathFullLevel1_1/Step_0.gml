/// @description Hold Space to reveal the outline
if (oMagicBarBorder.is_draining == true)
{
   if image_alpha < 0.5 { image_alpha = image_alpha + fade_speed; }
}
if (oMagicBarBorder.is_recharging == true)
{
    if image_alpha > 0 { image_alpha = image_alpha - fade_speed; }
}

if (place_meeting(x,y,oPlayer_Board))
{
	score += 1;
}