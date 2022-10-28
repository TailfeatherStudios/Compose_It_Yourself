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
if file_exists(filename)
{
	show_message("File saved!")
}
else
{
	if filename != ""
	{
		filename = ""
		show_message("Unable to save the file. See help (F1) for details as to why.")
	}
}
alarm[0] = 10