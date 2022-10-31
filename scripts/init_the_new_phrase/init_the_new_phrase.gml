// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_the_new_phrase(dumbass){
    for (var j = 0; j < 32; j++)
	{
	    global.music1e[dumbass][j][0] = -1
		global.music1e[dumbass][j][1] = 3
		global.music1e[dumbass][j][2] = 0
		global.music2e[dumbass][j][0] = -1
		global.music2e[dumbass][j][1] = 3
		global.music2e[dumbass][j][2] = 0
		global.music3e[dumbass][j][0] = -1
		global.music3e[dumbass][j][1] = 3
		global.music3e[dumbass][j][2] = 0
		global.music4e[dumbass][j][0] = -1
		global.music4e[dumbass][j][1] = 3
		global.music4e[dumbass][j][2] = 0
	    global.rhythm1[dumbass][j] = -1
		global.rhythm2[dumbass][j] = -1
		global.rhythm3[dumbass][j] = -1
		global.rhythm4[dumbass][j] = -1
	}
	global.tempo[dumbass] = 120
    for (var j = 0; j < 4; j++)
	{
	    global.inst[dumbass][j] = 0
	}
	global.instr[dumbass] = 0
	global.phrase_length[dumbass] = 32
	global.swing[dumbass] = 0
}