/// @description Insert description here
// You can write your code in this editor
if step == 0
{
	finished_drawing = 1
}
else
{
	step -= 8
}

if mouse_x > 92 and mouse_y > 48
{
	if mouse_x < 400-92 and mouse_y < 240-48
	{
		if mouse_check_button_pressed(mb_left) and finished_drawing == 1
		{
			selection = floor((mouse_x - 92 + 24)/24)
			selection -= 1
			sely = floor((mouse_y - 48 + 24)/24)
			sely -= 1
			sely *= 9
			selection += sely
			selmod = selection mod 9
			insname = instrument_name_lut(selection)
			audio_play_sound(sfx_click,0,0)
			if obj_hovernote.pause == 1
			{
				note = 0
				alarm[0] = 15
			}
		}
	}
}

if mouse_x > 92 and mouse_y > 194 and mouse_x < 129 and mouse_y < 210
{
	if mouse_check_button_pressed(mb_left) and finished_drawing == 1
	{
		audio_play_sound(sfx_click,0,0)
		global.clickable = 1
		instance_destroy()
	}
}

if mouse_x > 272 and mouse_y > 194 and mouse_x < 309 and mouse_y < 210
{
	if mouse_check_button_pressed(mb_left) and finished_drawing == 1
	{
		audio_play_sound(sfx_click,0,0)
		global.inst[global.phrase][obj_hovernote.mode] = selection
		global.clickable = 1
		instance_destroy()
	}
}

if mouse_x > 176 and mouse_y > 194 and mouse_x < 225 and mouse_y < 210
{
	if mouse_check_button_pressed(mb_left) and finished_drawing == 1
	{
		if selmod == 8
		{
			audio_play_sound(sfx_click,0,0)
			filename = get_open_filename("OGG file|.ogg","*.ogg")
			if filename != ""
			{
				switch selection
				{
					case 8:
					file_copy(filename,working_directory + "\custom0.ogg")
					global.note_custom[0] = audio_create_stream(working_directory + "\custom0.ogg")
					break
					
					case 17:
					file_copy(filename,working_directory + "\custom1.ogg")
					global.note_custom[1] = audio_create_stream(working_directory + "\custom1.ogg")
					break
					
					case 26:
					file_copy(filename,working_directory + "\custom2.ogg")
					global.note_custom[2] = audio_create_stream(working_directory + "\custom2.ogg")
					break
					
					case 35:
					file_copy(filename,working_directory + "\custom3.ogg")
					global.note_custom[3] = audio_create_stream(working_directory + "\custom3.ogg")
					break
					
					case 44:
					file_copy(filename,working_directory + "\custom4.ogg")
					global.note_custom[4] = audio_create_stream(working_directory + "\custom4.ogg")
					break
					
					case 53:
					file_copy(filename,working_directory + "\custom5.ogg")
					global.note_custom[5] = audio_create_stream(working_directory + "\custom5.ogg")
					break
				}
			}
		}
	}
}

selx = selection
selx = selx mod 9
selx *= 24
sely = selection
sely /= 9
sely = floor(sely)
sely *= 24