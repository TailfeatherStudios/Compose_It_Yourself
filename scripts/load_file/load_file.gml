// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_file(filename){
	ini_open(filename)
	temp = ini_read_string("Music","Track1","")
	if temp == ""
	{
		show_message("Invalidfile!!!!")
		game_restart()
	}
	global.music1e = json_parse(temp)
	temp = ini_read_string("Music","Track2","")
	global.music2e = json_parse(temp)
	temp = ini_read_string("Music","Track3","")
	global.music3e = json_parse(temp)
	temp = ini_read_string("Music","Track4","")
	global.music4e = json_parse(temp)
	temp = ini_read_string("Music","Rhythm1","")
	global.rhythm1 = json_parse(temp)
	temp = ini_read_string("Music","Rhythm2","")
	global.rhythm2 = json_parse(temp)
	temp = ini_read_string("Music","Rhythm3","")
	global.rhythm3 = json_parse(temp)
	temp = ini_read_string("Music","Rhythm4","")
	global.rhythm4 = json_parse(temp)
	temp = ini_read_string("Other","Tempos","")
	global.tempo = json_parse(temp)
	temp = ini_read_string("Other","Instruments","")
	global.inst = json_parse(temp)
	temp = ini_read_string("Other","RhythmSets","")
	global.instr = json_parse(temp)
	ini_close()
}