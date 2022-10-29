/// @description Insert description here
// You can write your code in this editor
switch note
{
	case 0:
	note_play(20,selection,0)
	break
	case 1:
	note_play(18,selection,0)
	break
	case 2:
	note_play(16,selection,0)
	break
	case 3:
	note_play(15,selection,0)
	break
	case 4:
	note_play(13,selection,0)
	break
	case 5:
	note_play(11,selection,0)
	break
	case 6:
	note_play(9,selection,0)
	break
	case 7:
	note_play(8,selection,0)
	break
}
note += 1
if note < 8
{
	alarm[0] = 15
}