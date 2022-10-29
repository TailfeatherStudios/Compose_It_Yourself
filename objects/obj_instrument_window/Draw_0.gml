/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.5)
draw_set_colour(c_black)
draw_rectangle(0,0,400,240,false)
draw_set_alpha(1)
draw_set_colour(c_white)
draw_rectangle(64+step,28+step,400-step-64,240-step-28,false)
if finished_drawing == 1
{
	draw_set_colour(c_aqua)
	draw_rectangle(92,48,400-92,240-48,false)
	
	draw_set_colour(c_black)
	draw_set_halign(fa_center)
	draw_set_font(fon_main)
	draw_text(200,36,"Instrument selection - Piano")
	
	draw_set_colour(c_red)
	draw_rectangle(selx+92,sely+48,selx+92+24,sely+48+24,false)
	
	total = 0
	for (var i = 0; i < 6; i++)
	{
		for (var j = 0; j < 9; j++)
		{
			draw_sprite(spr_instruments,total,(j*24)+96,(i*24)+52)
			total += 1
		}
	}
	draw_sprite(spr_backbutton,0,92,194)
	draw_sprite(spr_okbutton,0,272,194)
}