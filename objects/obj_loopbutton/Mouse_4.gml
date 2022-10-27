/// @description Insert description here
// You can write your code in this editor
if global.loopall == 0
{
	global.loopall = 1
	audio_play_sound(sfx_loopon,0,0)
}
else
{
	global.loopall = 0
	audio_play_sound(sfx_loopoff,0,0)
}