/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_tempo,image_index,x,y)
draw_set_colour(c_black)
draw_set_halign(fa_left)
draw_set_font(fon_small)
draw_text(x+17,y+2,global.tempo[global.phrase])
