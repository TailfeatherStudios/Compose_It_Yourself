// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function step_play_mono(ins){
	switch mode
	{
		case 0:
		if global.music1e[global.phrase_playing][index][0] != -1
		{
			note_play(global.music1e[global.phrase_playing][index][0],ins,0)
		}
		break
		
		case 1:
		if global.music2e[global.phrase_playing][index][0] != -1
		{
			note_play(global.music2e[global.phrase_playing][index][0],ins,1)
		}
		break
		
		case 2:
		if global.music3e[global.phrase_playing][index][0] != -1
		{
			note_play(global.music3e[global.phrase_playing][index][0],ins,2)
		}
		break
		
		case 3:
		if global.music4e[global.phrase_playing][index][0] != -1
		{
			note_play(global.music4e[global.phrase_playing][index][0],ins,3)
		}
		break
	}
	index += 1
}