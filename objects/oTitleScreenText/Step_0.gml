if (keyboard_check_pressed(ord("E")))
{
	audio_play_sound(mTitle, 5, true);
	room_goto_next();
}