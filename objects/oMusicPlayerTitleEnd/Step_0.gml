/// @description Insert description here
// You can write your code in this editor

if (!(audio_is_playing(mTitle))) && (!(audio_is_playing(mTitleLoop)))
{
	play_title_music_loop_ver = true;
	
}
if play_title_music_loop_ver == true
{
	audio_play_sound(mTitleLoop,1,true);
	play_title_music_loop_ver = false;
}