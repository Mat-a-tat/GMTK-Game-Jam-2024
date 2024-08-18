/// @description Hold Space to reveal the outline
if (keyboard_check(vk_space)) && (oMagicBarBorder.decrease_magic)
{
   if image_alpha < 0.5 { image_alpha = image_alpha + fade_speed; }
}
if ((!keyboard_check(vk_space)) || (oMagicBarBorder.increase_magic))
{
    if image_alpha > 0 { image_alpha = image_alpha - fade_speed; }
}
if (place_meeting(x,y,oPlayer_Board))
{
	score += 1;
}