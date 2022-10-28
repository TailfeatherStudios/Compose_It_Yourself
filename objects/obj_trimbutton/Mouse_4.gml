/// @description Insert description here
// You can write your code in this editor
image_index = 1
audio_play_sound(sfx_click,0,0)
length = get_integer("Enter the new length of the phrase in notes (1~32.)",global.phrase_length[global.phrase])
if !is_undefined(length)
{
	if length > 32 or length < 1
	{
		show_message("Invalid length!!")
	}
	else
	{
		global.phrase_length[global.phrase] = length
	}
}
alarm[0] = 10