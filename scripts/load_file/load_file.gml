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
	else if !file_exists(working_directory + "\data.ciy")
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
		temp = ini_read_string("Other","Volume","")
		global.phrase_volume = json_parse(temp)
		temp = ini_read_string("Other","Balance","")
		global.phrase_panning = json_parse(temp)
		temp = ini_read_string("Other","Swing","")
		global.swing = json_parse(temp)
		ini_close()
		file_delete("data.ciy")
		
		if file_exists("custom0.ogg")
		{
			global.note_custom[0] = audio_create_stream("custom0.ogg")
		}
		if file_exists("custom1.ogg")
		{
			global.note_custom[1] = audio_create_stream("custom1.ogg")
		}
		if file_exists("custom2.ogg")
		{
			global.note_custom[2] = audio_create_stream("custom2.ogg")
		}
		if file_exists("custom3.ogg")
		{
			global.note_custom[3] = audio_create_stream("custom3.ogg")
		}
		if file_exists("custom4.ogg")
		{
			global.note_custom[4] = audio_create_stream("custom4.ogg")
		}
		if file_exists("custom5.ogg")
		{
			global.note_custom[5] = audio_create_stream("custom5.ogg")
		}
	}
}