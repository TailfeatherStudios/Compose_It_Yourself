// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_file(filename){
	tempname = string(irandom_range(100000,10000000000))
	ini_open(tempname + ".ciy")
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
	temp = json_stringify(global.phrase_length)
	ini_write_string("Other","Langths",temp)
	temp = json_stringify(global.swing)
	ini_write_string("Other","Swing",temp)
	ini_close()
	
	zip = zip_create()
	zip_add_file(zip,"data.ciy",tempname + ".ciy")
	if file_exists(working_directory + "\custom0.ogg")
	{
		zip_add_file(zip,"custom0.ogg",working_directory + "\custom0.ogg")
	}
	if file_exists(working_directory + "\custom1.ogg")
	{
		zip_add_file(zip,"custom1.ogg",working_directory + "\custom1.ogg")
	}
	if file_exists(working_directory + "\custom2.ogg")
	{
		zip_add_file(zip,"custom2.ogg",working_directory + "\custom2.ogg")
	}
	if file_exists(working_directory + "\custom3.ogg")
	{
		zip_add_file(zip,"custom3.ogg",working_directory + "\custom3.ogg")
	}
	if file_exists(working_directory + "\custom4.ogg")
	{
		zip_add_file(zip,"custom4.ogg",working_directory + "\custom4.ogg")
	}
	if file_exists(working_directory + "\custom5.ogg")
	{
		zip_add_file(zip,"custom5.ogg",working_directory + "\custom5.ogg")
	}
	zip_save(zip,filename)
	zip_destroy(zip)
	
	file_delete(tempname + ".ciy")
}