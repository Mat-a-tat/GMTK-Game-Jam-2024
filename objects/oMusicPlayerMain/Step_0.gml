// Splash Sound Effect
if oPlayer_Board.y < oCreateBlades.blade_height - 5
{
	play_splash_sound = true;
}

if play_splash_sound == true
{
	if oPlayer_Board.y >= oCreateBlades.blade_height
	{
		audio_play_sound(sndLanding_Splash,1,false);
		play_splash_sound = false;
	}
}