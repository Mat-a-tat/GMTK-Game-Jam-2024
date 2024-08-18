/// @description Insert description here
// You can write your code in this editor

if audio_is_playing(mTitle) or audio_is_playing(mTitleLoop)
{
	audio_stop_all()
}
audio_play_sound(mMain,10,false)