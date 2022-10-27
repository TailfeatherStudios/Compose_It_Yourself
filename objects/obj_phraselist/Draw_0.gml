/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_white)
draw_rectangle(220,160,396,236,false)
draw_set_halign(fa_center)
draw_set_font(fon_main)
if global.phrase >= range and global.phrase < range + 7
{
	draw_set_colour(c_aqua)
	draw_rectangle(220,160+((global.phrase-range)*10),396,170+((global.phrase-range)*10),false)
}
if global.phrase_playing >= range and global.phrase_playing < range + 7 and obj_hovernote.playing == 1
{
	draw_set_colour(c_red)
	draw_rectangle(220,160+((global.phrase_playing-range)*10),396,170+((global.phrase_playing-range)*10),false)
}
draw_set_colour(c_black)
draw_text(310,160,"Phrase " + string(range+1) + "\nPhrase " + string(range+2) + "\nPhrase " + string(range+3) + "\nPhrase " + string(range+4) + "\nPhrase " + string(range+5) + "\nPhrase " + string(range+6) + "\nPhrase " + string(range+7))
draw_rectangle(394,(range/3.5)+160,396,(range/3.5)+180,false)