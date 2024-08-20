if (keyboard_check_pressed(vk_space))
{
	audio_play_sound(mTitle, 5, true);
	room_goto_next();
}