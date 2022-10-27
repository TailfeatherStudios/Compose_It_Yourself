/// @description Insert description here
// You can write your code in this editor
image_index = 1
audio_play_sound(sfx_click,0,0)
if filename == ""
{
	filename = get_save_filename("CIY file|.ciy","*.ciy")
}
if filename != ""
{
	save_file(filename)
}
alarm[0] = 10