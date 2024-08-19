
//move the blade if the player is on top of it
if (place_meeting(x, y+1, oPlayer_Board) && y + spd >= blade_height)
{
	y += spd;
	
	if (place_meeting(x, y+1, oPlayer_Board))
	{
		var _diff = oPlayer_Board.y - y;
		y += _diff;
	}
}
// if the blade is further away, move but less

// Change color of blade
if (x < oPlayer_Board.x + 30) && (oPlayer_Board.is_blade_collide == true)
{
		sprite_index = sBlade_cool;
}

/*
// if the blade is further away, move but less. Experimental, causes lots of random slivers of blades.
else if (place_meeting(x-1, y, oPlayer_Board))
{
	var _diff = oPlayer_Board.y - y;
	if (_diff > 0)
	{
		y += _diff / 2;
	}
}
*/
/*
else if (place_meeting(x-2, y, oPlayer_Board) && y + spd >= blade_height)
{
	y += spd / 3;
	
	if (place_meeting(x-2, y, oPlayer_Board))
	{
		var _diff = oPlayer_Board.y - y
		y += _diff / 3;
	}
}
else if (place_meeting(x-3, y, oPlayer_Board) && y + spd >= blade_height)
{
	y += spd / 4;
	
	if (place_meeting(x-3, y, oPlayer_Board))
	{
		var _diff = oPlayer_Board.y - y
		y += _diff / 4;
	}
}
else if (place_meeting(x-4, y, oPlayer_Board) && y + spd >= blade_height)
{
	y += spd / 5;
	
	if (place_meeting(x-4, y, oPlayer_Board))
	{
		var _diff = oPlayer_Board.y - y
		y += _diff / 5;
	}
}
*/



