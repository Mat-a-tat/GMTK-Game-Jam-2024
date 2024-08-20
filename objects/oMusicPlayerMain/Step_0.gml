// Splash Sound 1 Effect
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

// Splash Sound 2 Effect
if oPlayer_Board.y > oCreateBlades.blade_height + 5
{
	play_splash_sound2 = true;
}

if play_splash_sound2 == true
{
	if oPlayer_Board.y = oCreateBlades.blade_height
	{
		audio_play_sound(sndJumping_Splash,1,false);
		play_splash_sound2 = false;
	}
}


// Loop main music
if (!(audio_is_playing(mMain))) && (!(audio_is_playing(mMainLoop)))
{
	play_main_music_loop = true;
}
if play_main_music_loop == true
{
	audio_play_sound(mMainLoop,1,false);
	play_main_music_loop = false;
} 