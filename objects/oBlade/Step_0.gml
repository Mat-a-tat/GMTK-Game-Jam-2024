

if (place_meeting(x, y, oPlayer_Board) && y + spd > blade_height)
{
	y += spd;
	
	if (place_meeting(x, y, oPlayer_Board))
	{
		y = oPlayer_Board.y;
	}
	//if (place_meeting(x, y+1, oPlayer))
}
