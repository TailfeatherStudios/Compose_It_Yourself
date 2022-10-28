/// @description Insert description here
// You can write your code in this editor
if obj_hovernote.index == kill_note
{
	audio_stop_sound(playing_note)
	instance_destroy()
}

if kill_note > 31
{
	kill_note -= 32
}