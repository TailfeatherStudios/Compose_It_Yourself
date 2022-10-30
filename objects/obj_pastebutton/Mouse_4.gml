/// @description Insert description here
// You can write your code in this editor
if global.clickable == 1
{
	image_index = 1
	audio_play_sound(sfx_click,0,0)
	for (var i = 0; i < 32; i++)
	{
		global.music1e[global.phrase][i][0] = global.clipboard[i][0]
		global.music2e[global.phrase][i][0] = global.clipboard[i][1]
		global.music3e[global.phrase][i][0] = global.clipboard[i][2]
		global.music4e[global.phrase][i][0] = global.clipboard[i][3]
	}
	global.phrase_length[global.phrase] = global.clipboard[0][9]
	global.inst[global.phrase][0] = global.clipboard[0][10]
	global.inst[global.phrase][1] = global.clipboard[0][11]
	global.inst[global.phrase][2] = global.clipboard[0][12]
	global.inst[global.phrase][3] = global.clipboard[0][13]
	alarm[0] = 10
}