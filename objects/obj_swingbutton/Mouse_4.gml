/// @description Insert description here
// You can write your code in this editor
global.swing[global.phrase] += 1
if global.swing[global.phrase] == 2
{
	global.swing[global.phrase] = 0
}
audio_play_sound(sfx_swingon,0,0)