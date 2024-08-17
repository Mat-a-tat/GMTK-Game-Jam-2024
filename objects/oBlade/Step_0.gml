
if (y >= 315)
{
	if (place_meeting(x, y+1, oPlayer))
	{
	    y += 2;
	
		if (place_meeting(x, y-1, oPlayer))
		{
			y = oPlayer.y;
		}
		//if (place_meeting(x, y+1, oPlayer))
	}
}
