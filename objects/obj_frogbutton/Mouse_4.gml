/// @description Insert description here
// You can write your code in this editor
if global.solo == 0
{
	global.solo = 1
	audio_play_sound(sfx_soloon,0,0)
}
else
{
	global.solo = 0
	audio_play_sound(sfx_solooff,0,0)
}