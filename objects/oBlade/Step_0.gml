
if (y >= 315)
{
	if (place_meeting(x, y+1, oSurfBoard))
	{
	    y += 2;
	
		if (place_meeting(x, y-1, oSurfBoard))
		{
			y = oSurfBoard.y;
		}
		//if (place_meeting(x, y+1, oPlayer))
	}
}
