/// @description Insert description here
// You can write your code in this editor

if obj_hovernote.index == kill_note
{
	alarm[1] = 3
	audio_sound_gain(playing_note,0,50)
}

if kill_note > 31
{
	kill_note -= 32
}