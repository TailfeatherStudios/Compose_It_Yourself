/// @description Insert description here
// You can write your code in this editor
image_index = 1
audio_play_sound(sfx_click,0,0)
for (var i = 0; i < 32; i++)
{
	global.music1e[global.phrase][i][0] = global.clipboard[i][0]
	global.music2e[global.phrase][i][0] = global.clipboard[i][1]
	global.music3e[global.phrase][i][0] = global.clipboard[i][2]
	global.music4e[global.phrase][i][0] = global.clipboard[i][3]
}
alarm[0] = 10