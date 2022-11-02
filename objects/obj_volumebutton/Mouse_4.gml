/// @description Insert description here
// You can write your code in this editor
if global.clickable == 1
{
	audio_play_sound(sfx_click,0,0)
	vol = get_integer("Enter the new volume of the track (0~4.)",global.phrase_volume[global.phrase][obj_hovernote.mode])
	if !is_undefined(vol)
	{
		if vol > 4 or vol < 0
		{
			show_message("Invalid volume!!")
		}
		else
		{
			global.phrase_volume[global.phrase][obj_hovernote.mode] = vol
		}
	}
}