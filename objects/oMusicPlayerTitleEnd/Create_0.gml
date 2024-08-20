
music_main_in_room = instance_exists(oMusicPlayerMain);
if music_main_in_room
{
	instance_destroy(oMusicPlayerMain);
}

audio_stop_all();
audio_play_sound(mTitle,10,false);

play_title_music_loop_ver= false;
