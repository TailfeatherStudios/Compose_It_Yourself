/// @description Insert description here
// You can write your code in this editor
if global.phrase_playing == global.phrase
{
	draw_set_colour(c_red)
	draw_rectangle((index+1)*12+offset,0,(index+2)*12+offset,280,false)
	if index == 0 and offset == -192 and playing == 1
	{
		draw_rectangle((index+1)*12+192,0,(index+2)*12+192,280,false)
	}
}
switch mode
{
	case 0:
	draw_sprite_ext(spr_musicnote,0,x,y,1,1,0,-1,0.5)
	for (var i = 0; i < 32; i++)
	{
		if global.music1e[global.phrase][i][0] != -1
		{
			draw_sprite(spr_musicnote,0,(i*12)+27+offset,(global.music1e[global.phrase][i][0]*6)+21)
		}
	}
	break
	
	case 1:
	draw_sprite_ext(spr_musicnote,1,x,y,1,1,0,-1,0.5)
	for (var i = 0; i < 32; i++)
	{
		if global.music2e[global.phrase][i][0] != -1
		{
			draw_sprite(spr_musicnote,1,(i*12)+27+offset,(global.music2e[global.phrase][i][0]*6)+21)
		}
	}
	break
		
	case 2:
	draw_sprite_ext(spr_musicnote,2,x,y,1,1,0,-1,0.5)
	for (var i = 0; i < 32; i++)
	{
		if global.music3e[global.phrase][i][0] != -1
		{
			draw_sprite(spr_musicnote,2,(i*12)+27+offset,(global.music3e[global.phrase][i][0]*6)+21)
		}
	}
	break

	case 3:
	draw_sprite_ext(spr_musicnote,3,x,y,1,1,0,-1,0.5)
	for (var i = 0; i < 32; i++)
	{
		if global.music4e[global.phrase][i][0] != -1
		{
			draw_sprite(spr_musicnote,3,(i*12)+27+offset,(global.music4e[global.phrase][i][0]*6)+21)
		}
	}
	break
}