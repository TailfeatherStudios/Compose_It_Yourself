/// @description Insert description here
// You can write your code in this editor
image_index = 1
audio_play_sound(sfx_click,0,0)
tempo = get_integer("Enter the new tempo of the phrase",global.tempo[global.phrase])
if !is_undefined(tempo)
{
	global.tempo[global.phrase] = tempo
}
alarm[0] = 10