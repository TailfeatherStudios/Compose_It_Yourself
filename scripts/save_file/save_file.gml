// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_file(filename){
	ini_open(filename)
	temp = json_stringify(global.music1e)
	ini_write_string("Music","Track1",temp)
	temp = json_stringify(global.music2e)
	ini_write_string("Music","Track2",temp)
	temp = json_stringify(global.music3e)
	ini_write_string("Music","Track3",temp)
	temp = json_stringify(global.music4e)
	ini_write_string("Music","Track4",temp)
	temp = json_stringify(global.rhythm1)
	ini_write_string("Music","Rhythm1",temp)
	temp = json_stringify(global.rhythm2)
	ini_write_string("Music","Rhythm2",temp)
	temp = json_stringify(global.rhythm3)
	ini_write_string("Music","Rhythm3",temp)
	temp = json_stringify(global.rhythm4)
	ini_write_string("Music","Rhythm4",temp)
	temp = json_stringify(global.tempo)
	ini_write_string("Other","Tempos",temp)
	temp = json_stringify(global.inst)
	ini_write_string("Other","Instruments",temp)
	temp = json_stringify(global.instr)
	ini_write_string("Other","RhythmSets",temp)
	ini_close()
}