//global.music1e[PHRASE][NOTE][PITCH/VOL/BAL]

for (var i = 0; i < 200; i++)
{
    for (var j = 0; j < 32; j++)
	{
	    global.music1e[i][j][0] = -1
		global.music1e[i][j][1] = 3
		global.music1e[i][j][2] = 0
		global.music2e[i][j][0] = -1
		global.music2e[i][j][1] = 3
		global.music2e[i][j][2] = 0
		global.music3e[i][j][0] = -1
		global.music3e[i][j][1] = 3
		global.music3e[i][j][2] = 0
		global.music4e[i][j][0] = -1
		global.music4e[i][j][1] = 3
		global.music4e[i][j][2] = 0
	    global.rhythm1[i][j] = -1
		global.rhythm2[i][j] = -1
		global.rhythm3[i][j] = -1
		global.rhythm4[i][j] = -1
	}
	global.tempo[i] = 120
    for (var j = 0; j < 4; j++)
	{
	    global.inst[i][j] = note_piano
	}
	global.instr[i] = 0
}

for (var i = 0; i < 32; i++)
{
	for (var j = 0; j < 8; j++)
	{
		global.clipboard[i][j] = 0
	}
}

global.tool = 0
global.phrase = 0
global.phrase_playing = 0
global.solo = 1
global.loopall = 0