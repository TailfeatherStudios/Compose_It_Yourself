/// @description Insert description here
// You can write your code in this editor
if mouse_y > 26 and mouse_x > 26 and mouse_y < 176 and mouse_x < 216
{
	x = (round((mouse_x-6)/12)*12)+3
	y = (round((mouse_y-5)/6)*6)+3
	if mouse_check_button_pressed(mb_left) and global.clickable == 1
	{
		if tool == 0 and !keyboard_check(vk_shift)
		{
			if offset == 0
			{
				i = round((mouse_x-6)/12)-2
				j = round((mouse_y-5)/6)-3
				switch mode
				{
					case 0:
					global.music1e[global.phrase][i][0] = j
					note_play(j,global.inst[global.phrase][0],0)
					break
			
					case 1:
					global.music2e[global.phrase][i][0] = j
					note_play(j,global.inst[global.phrase][1],1)
					break
			
					case 2:
					global.music3e[global.phrase][i][0] = j
					note_play(j,global.inst[global.phrase][2],2)
					break		
			
					case 3:
					global.music4e[global.phrase][i][0] = j
					note_play(j,global.inst[global.phrase][3],3)
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
					note_play(j,global.inst[global.phrase][0],0)
					break
			
					case 1:
					global.music2e[global.phrase][i+16][0] = j
					note_play(j,global.inst[global.phrase][1],1)
					break
			
					case 2:
					global.music3e[global.phrase][i+16][0] = j
					note_play(j,global.inst[global.phrase][2],2)
					break		
			
					case 3:
					global.music4e[global.phrase][i+16][0] = j
					note_play(j,global.inst[global.phrase][3],3)
					break
				}			
			}
		}
	}
	if mouse_check_button(mb_left) and tool == 2 and global.clickable == 1
	{
		tool = 3
		startx = mouse_x
	}
	if mouse_check_button(mb_left) and tool == 3
	{
		note_move_by = (mouse_x - startx)
	}
	else if tool == 3
	{
		note_move_by /= 12
		note_move_by = round(note_move_by)
		note_move_by *= 12
		tool = 2
	}
	if mouse_check_button(mb_right) and global.clickable == 1
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
					if tool == 2
					{
						for (var ij = startx; ij < endx; ij++)
						{
							global.music1e[global.phrase][ij][0] = -1
							tool = 0
						}
					}
				}
				break
			
				case 1:
				if j == global.music2e[global.phrase][i][0]
				{
					global.music2e[global.phrase][i][0] = -1
					if tool == 2
					{
						for (var ij = startx; ij < endx; ij++)
						{
							global.music2e[global.phrase][ij][0] = -1
							tool = 0
						}
					}
				}
				break
			
				case 2:
				if j == global.music3e[global.phrase][i][0]
				{
					global.music3e[global.phrase][i][0] = -1
					if tool == 2
					{
						for (var ij = startx; ij < endx; ij++)
						{
							global.music3e[global.phrase][ij][0] = -1
							tool = 0
						}
					}
				}
				break		
			
				case 3:
				if j == global.music4e[global.phrase][i][0]
				{
					global.music4e[global.phrase][i][0] = -1
					if tool == 2
					{
						for (var ij = startx; ij < endx; ij++)
						{
							global.music4e[global.phrase][ij][0] = -1
							tool = 0
						}
					}
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

if mouse_check_button(mb_left) and global.clickable == 1 and keyboard_check(vk_shift) and tool == 0
{
	tool = 1
	startx = mouse_x
}
else if tool == 1 and !mouse_check_button(mb_left)
{
	tool = 2
	endx = mouse_x
	if endx < startx
	{
		startx2 = startx
		startx = endx
		endx = startx2
	}
	startx /= 12
	startx -= 1
	startx = floor(startx)
	endx /= 12
	endx += 1
	endx = ceil(endx)
	for (var ij = startx; ij < endx; ij++)
	{
		switch mode
		{
			case 0:
			global.clipboard_frame[ij][0] = global.music1e[global.phrase][ij][0]
			break
			
			case 1:
			global.clipboard_frame[ij][1] = global.music2e[global.phrase][ij][0]
			break

			case 2:
			global.clipboard_frame[ij][2] = global.music3e[global.phrase][ij][0]
			break
			
			case 3:
			global.clipboard_frame[ij][3] = global.music4e[global.phrase][ij][0]
			break
		}
	}
}


if keyboard_check_pressed(vk_up) and global.clickable == 1
{
	if mode > 0
	{
		mode -= 1
	}
}

if keyboard_check_pressed(vk_down) and global.clickable == 1
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

step_counter += 1
if step_counter == 16
{
	step_counter = 0
}