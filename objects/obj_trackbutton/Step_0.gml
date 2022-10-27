/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)
{
	audio_play_sound(sfx_click,0,0)
	image_index = (obj_hovernote.mode * 2) + 1
	alarm[0] = 10
}