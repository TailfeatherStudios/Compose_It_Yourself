/// @description Insert description here
// You can write your code in this editor
if mouse_x > 220 and mouse_y > 160
{
	if mouse_wheel_up() and global.clickable == 1
	{
		if range > 0
		{
			range -= 1
		}
	}
	if mouse_wheel_down() and global.clickable == 1
	{
		if range < array_length(global.music1e) - 6
		{
			range += 1
		}
	}
	scrollp = range / array_length(global.music1e)
	if mouse_check_button_pressed(mb_left) and global.clickable == 1
	{
		audio_play_sound(sfx_click,0,0)
		if mouse_y < 170
		{
			global.phrase = range
		}
		else if mouse_y < 180
		{
			global.phrase = range + 1
		}
		else if mouse_y < 190
		{
			global.phrase = range + 2
		}
		else if mouse_y < 200
		{
			global.phrase = range + 3
		}
		else if mouse_y < 210
		{
			global.phrase = range + 4
		}
		else if mouse_y < 220
		{
			global.phrase = range + 5
		}
		else
		{
			if range+7 > array_length(global.music1e)
			{
				array_resize(global.music1e,range+6)
				array_resize(global.music2e,range+6)
				array_resize(global.music3e,range+6)
				array_resize(global.music4e,range+6)
				array_resize(global.tempo,range+6)
				array_resize(global.inst,range+6)
				array_resize(global.instr,range+6)
				array_resize(global.phrase_length,range+6)
				array_resize(global.swing,range+6)
				init_the_new_phrase(range+6)
			}
			else
			{
				global.phrase = range + 6
			}
		}
	}
}