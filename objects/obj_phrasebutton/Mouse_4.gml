/// @description Insert description here
// You can write your code in this editor
if global.clickable == 1
{
	if obj_hovernote.offset == 0
	{
		obj_hovernote.transition = 192
		audio_play_sound(sfx_scroll1,0,0)
	}
	else if obj_hovernote.offset == -192
	{
		obj_hovernote.transition = -192
		audio_play_sound(sfx_scroll2,0,0)
	}
	image_index = 1
}