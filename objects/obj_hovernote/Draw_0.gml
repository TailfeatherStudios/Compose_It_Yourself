/// @description Insert description here
// You can write your code in this editor
if tool == 1 and step_counter > 7
{
	draw_set_colour(c_white)
	draw_set_alpha(0.5)
	draw_rectangle(startx,0,mouse_x,240,false)
}
if tool == 1 and step_counter < 8
{
	draw_set_colour(c_fuchsia)
	draw_set_alpha(0.5)
	draw_rectangle(startx,0,mouse_x,240,false)
}

draw_set_alpha(1)

if global.phrase_playing == global.phrase
{
	draw_set_colour(c_red)
	draw_rectangle((index+1)*12+offset,0,(index+2)*12+offset,280,false)
}

switch mode
{
	case 0:
	if tool == 0
	{
		draw_sprite_ext(spr_musicnote,0,x,y,1,1,0,-1,0.5)
	}
	for (var i = 0; i < 32; i++)
	{
		if global.music1e[global.phrase][i][0] != -1
		{
			draw_sprite(spr_musicnote,0,(i*12)+27+offset,(global.music1e[global.phrase][i][0]*6)+21)
			if global.music1e[global.phrase][i][0] == global.clipboard_frame[i][0]
			{
				draw_sprite_ext(spr_musicnote,5,(i*12)+27+note_move_by,(global.music1e[global.phrase][i][0]*6)+21,1,1,0,-1,step_counter/10)
			}
		}
	}
	break
	
	case 1:
	if tool == 0
	{
	draw_sprite_ext(spr_musicnote,1,x,y,1,1,0,-1,0.5)
	}
	for (var i = 0; i < 32; i++)
	{
		if global.music2e[global.phrase][i][0] != -1
		{
			draw_sprite(spr_musicnote,1,(i*12)+27+offset,(global.music2e[global.phrase][i][0]*6)+21)
			if global.music2e[global.phrase][i][0] == global.clipboard_frame[i][1]
			{
				draw_sprite_ext(spr_musicnote,5,(i*12)+27+note_move_by,(global.music2e[global.phrase][i][0]*6)+21,1,1,0,-1,step_counter/10)
			}
		}
	}
	break
		
	case 2:
	if tool == 0
	{
		draw_sprite_ext(spr_musicnote,2,x,y,1,1,0,-1,0.5)
	}
	for (var i = 0; i < 32; i++)
	{
		if global.music3e[global.phrase][i][0] != -1
		{
			draw_sprite(spr_musicnote,2,(i*12)+27+offset,(global.music3e[global.phrase][i][0]*6)+21)
			if global.music3e[global.phrase][i][0] == global.clipboard_frame[i][2]
			{
				draw_sprite_ext(spr_musicnote,5,(i*12)+27+note_move_by,(global.music3e[global.phrase][i][0]*6)+21,1,1,0,-1,step_counter/10)
			}
		}
	}
	break

	case 3:
	if tool == 0
	{
		draw_sprite_ext(spr_musicnote,3,x,y,1,1,0,-1,0.5)
	}
	for (var i = 0; i < 32; i++)
	{
		if global.music4e[global.phrase][i][0] != -1
		{
			draw_sprite(spr_musicnote,3,(i*12)+27+offset,(global.music4e[global.phrase][i][0]*6)+21)
			if global.music4e[global.phrase][i][0] == global.clipboard_frame[i][3]
			{
				draw_sprite_ext(spr_musicnote,5,(i*12)+27+note_move_by,(global.music4e[global.phrase][i][0]*6)+21,1,1,0,-1,step_counter/10)
			}
		}
	}
	break
}

draw_set_colour(c_black)
draw_rectangle((global.phrase_length[global.phrase]*12)+25+offset,0,400,240,false)