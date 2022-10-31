/// @description Insert description here
// You can write your code in this editor
if global.clickable == 1
{
	image_index = 1
	audio_play_sound(sfx_click,0,0)
	tempo = get_integer("Enter the new tempo of the phrase",global.tempo[global.phrase])
	if !is_undefined(tempo)
	{
		global.tempo[global.phrase] = tempo
		obj_hovernote.alarm[2] = 1
	}
	alarm[0] = 10
}