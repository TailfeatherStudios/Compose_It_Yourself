// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_file(filename){
	zip = zip_unzip(filename,working_directory)
	if zip <= 0
	{
		show_message("Extraction of files failed!!!!")
		audio_stop_all()
		game_restart()
	}
	if !file_exists(working_directory + "\data.ciy")
	{
		show_message("Invalid file!!!!")
		audio_stop_all()
		game_restart()
	}
	else
	{
		temp = ini_open("data.ciy")
		temp = ini_read_string("Music","Track1","")
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
		temp = ini_read_string("Other","Langths","")
		global.phrase_length = json_parse(temp)
		ini_close()
		file_delete("data.ciy")
	}
}