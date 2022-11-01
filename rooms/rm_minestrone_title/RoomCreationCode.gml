//global.music1e[PHRASE][NOTE][PITCH/VOL/BAL]

for (var i = 0; i < 10; i++)
{
    for (var j = 0; j < 32; j++)
	{
	    global.music1e[i][j][0] = -1
		global.music2e[i][j][0] = -1
		global.music3e[i][j][0] = -1
		global.music4e[i][j][0] = -1
	    global.rhythm1[i][j] = -1
		global.rhythm2[i][j] = -1
		global.rhythm3[i][j] = -1
		global.rhythm4[i][j] = -1
	}
	global.tempo[i] = 120
    for (var j = 0; j < 4; j++)
	{
	    global.inst[i][j] = 0
		global.phrase_volume[i][j] = 3
		global.phrase_panning[i][j] = 2
	}
	global.instr[i] = 0
	global.phrase_length[i] = 32
	global.swing[i] = 0
}

for (var i = 0; i < 32; i++)
{
	for (var j = 0; j < 20; j++)
	{
		global.clipboard[i][j] = -1
		global.clipboard_frame[i][j] = -1
	}
}

file_delete("custom0.ogg")
file_delete("custom1.ogg")
file_delete("custom2.ogg")
file_delete("custom3.ogg")
file_delete("custom4.ogg")
file_delete("custom5.ogg")
	
for (var i = 0; i < 6; i++)
{
	global.note_custom[i] = audio_create_stream("default.ogg")
}

global.phrase = 0
global.phrase_playing = 0
global.solo = 1
global.loopall = 0
global.clickable = 1