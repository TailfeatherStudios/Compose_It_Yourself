/// @description Insert description here
// You can write your code in this editor
if global.clickable == 1
{
	obj_hovernote.mode += 1
	if obj_hovernote.mode == 4
	{
		obj_hovernote.mode = 0
	}
	audio_play_sound(sfx_click,0,0)
	image_index = (obj_hovernote.mode * 2) + 1
	alarm[0] = 10
}