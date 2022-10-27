/// @description Insert description here
// You can write your code in this editor
if obj_hovernote.playing == 0
{
	obj_hovernote.alarm[0] = 1
	audio_play_sound(sfx_play,0,0)
}
else
{
	obj_hovernote.alarm[1] = 1
	audio_play_sound(sfx_pause,0,0)
}
image_index = 1
alarm[0] = 10