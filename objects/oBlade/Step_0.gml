

if (place_meeting(x, y+1, oPlayer_Board))
{
	y += 2;
	
	if (place_meeting(x, y-1, oPlayer_Board))
	{
		y = oPlayer_Board.y;
	}
	//if (place_meeting(x, y+1, oPlayer))
}
