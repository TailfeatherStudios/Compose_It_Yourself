/// @description Insert description here
// You can write your code in this editor
	if playing == 0
	{
		global.phrase_playing = global.phrase
		pause = 0
		create_time_source()
		index = 0
		playing = 1
	}
	else
	{
		time_source_destroy(timer)
		index = 0
		playing = 0
		pause = 1
	}