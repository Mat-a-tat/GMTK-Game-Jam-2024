
//move the blade if the player is on top of it
if (place_meeting(x, y+1, oPlayer_Board) && y + spd >= blade_height)
{
	y += spd;
	
	if (place_meeting(x, y+1, oPlayer_Board))
	{
		var _diff = oPlayer_Board.y - y;
		if y + _diff >= blade_height
		{
			y += _diff;
		}
	}
}


// Change color of blade
if (x < oPlayer_Board.x + 30) && (oPlayer_Board.is_blade_collide == true)
{
		sprite_index = sBlade_cool;
}



