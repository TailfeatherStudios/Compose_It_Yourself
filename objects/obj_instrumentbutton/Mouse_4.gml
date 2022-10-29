/// @description Insert description here
// You can write your code in this editor
if global.clickable == 1
{
	image_index = 1
	audio_play_sound(sfx_click,0,0)
	global.clickable = 0
	instance_create_depth(0,0,-100,obj_instrument_window)
	alarm[0] = 10
}