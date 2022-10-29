// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function recreate_time_source(){
		secs = time_bpm_to_seconds(global.tempo[global.phrase_playing])
		secs /= 4
		timer = time_source_create(time_source_game,secs,time_source_units_seconds,function()
		{
			if global.solo == 0
			{
				step_play(global.inst[global.phrase_playing][0],global.inst[global.phrase_playing][1],global.inst[global.phrase_playing][2],global.inst[global.phrase_playing][3],0)
			}
			else
			{
				step_play_mono(global.inst[global.phrase_playing][mode])
			}
		},[],-1)
		time_source_start(timer)
}