/// @description Insert description here
// You can write your code in this editor
if mouse_y > 26 and mouse_x > 26 and mouse_y < 176 and mouse_x < 216
{
	x = (round((mouse_x-6)/12)*12)+3
	y = (round((mouse_y-5)/6)*6)+3
	if mouse_check_button_pressed(mb_left)
	{
		if offset == 0
		{
			i = round((mouse_x-6)/12)-2
			j = round((mouse_y-5)/6)-3
			switch mode
			{
				case 0:
				global.music1e[global.phrase][i][0] = j
				note_play(j,global.inst[0][0])
				break
			
				case 1:
				global.music2e[global.phrase][i][0] = j
				note_play(j,global.inst[0][1])
				break
			
				case 2:
				global.music3e[global.phrase][i][0] = j
				note_play(j,global.inst[0][2])
				break		
			
				case 3:
				global.music4e[global.phrase][i][0] = j
				note_play(j,global.inst[0][3])
				break
			}
		}
		else
		{
			i = (round((mouse_x-6)/12)-2)
			j = (round((mouse_y-5)/6)-3)
			switch mode
			{
				case 0:
				global.music1e[global.phrase][i+16][0] = j
				note_play(j,global.inst[0][0])
				break
			
				case 1:
				global.music2e[global.phrase][i+16][0] = j
				note_play(j,global.inst[0][1])
				break
			
				case 2:
				global.music3e[global.phrase][i+16][0] = j
				note_play(j,global.inst[0][2])
				break		
			
				case 3:
				global.music4e[global.phrase][i+16][0] = j
				note_play(j,global.inst[0][3])
				break
			}			
		}
	}
	if mouse_check_button(mb_right)
	{
		if offset == 0
		{
			i = round((mouse_x-6)/12)-2
			j = round((mouse_y-5)/6)-3
			switch mode
			{
				case 0:
				if j == global.music1e[global.phrase][i][0]
				{
					global.music1e[global.phrase][i][0] = -1
				}
				break
			
				case 1:
				if j == global.music2e[global.phrase][i][0]
				{
					global.music2e[global.phrase][i][0] = -1
				}
				break
			
				case 2:
				if j == global.music3e[global.phrase][i][0]
				{
					global.music3e[global.phrase][i][0] = -1
				}
				break		
			
				case 3:
				if j == global.music4e[global.phrase][i][0]
				{
					global.music4e[global.phrase][i][0] = -1
				}
				break
			}
		}
		else
		{
			i = (round((mouse_x-6)/12)-2)
			j = (round((mouse_y-5)/6)-3)
			switch mode
			{
				case 0:
				if j == global.music1e[global.phrase][i+16][0]
				{
					global.music1e[global.phrase][i+16][0] = -1
				}
				break
			
				case 1:
				if j == global.music2e[global.phrase][i+16][0]
				{
					global.music2e[global.phrase][i+16][0] = -1
				}
				break
			
				case 2:
				if j == global.music3e[global.phrase][i+16][0]
				{
					global.music3e[global.phrase][i+16][0] = -1
				}
				break		
			
				case 3:
				if j == global.music4e[global.phrase][i+16][0]
				{
					global.music4e[global.phrase][i+16][0] = -1
				}
				break
			}			
		}
	}
}



if keyboard_check_pressed(vk_up)
{
	if mode > 0
	{
		mode -= 1
	}
}

if keyboard_check_pressed(vk_down)
{
	if mode < 3
	{
		mode += 1
	}
}

if keyboard_check_pressed(vk_right) and offset == 0
{
	transition = 192
}

if keyboard_check_pressed(vk_left) and offset == -192
{
	transition = -192
}

layer_x("Background",offset+26)

if transition > 0
{
	transition -= 16
	offset -= 16
}

if transition < 0
{
	transition += 16
	offset += 16
}

if playing == 1 and index == global.phrase_length[global.phrase_playing]
{
	if global.loopall == 1
	{
		oldphrase = global.phrase_playing
		global.phrase_playing += 1
		if global.tempo[oldphrase] != global.tempo[global.phrase_playing]
		{
			time_source_destroy(timer)
			recreate_time_source()
		}
	}
	index = 0
}