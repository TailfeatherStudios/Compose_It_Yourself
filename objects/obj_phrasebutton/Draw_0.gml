/// @description Insert description here
// You can write your code in this editor
if obj_hovernote.offset == 0
{
	image_index = 0
	spr = spr_phrase1
}
else if obj_hovernote.offset == -192
{
	image_index = 0
	spr = spr_phrase2
}
draw_sprite(spr,image_index,x,y)