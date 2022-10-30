/// @description Insert description here
// You can write your code in this editor
if clicked == 0
{
	clicked = 1
	audio_play_sound(sfx_click,0,0)
	filename = get_open_filename("CIYZIP file|.ciyzip","*.ciyzip")
	if filename != ""
	{
		load_file(filename)
		alarm[0] = 30
		instance_create_depth(0,0,-100,obj_fadeout)
	}
	else
	{
		clicked = 0
	}
}
