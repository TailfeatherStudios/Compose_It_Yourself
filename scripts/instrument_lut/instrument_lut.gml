// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instrument_lut(sound){
	switch sound
	{
		case 1:
		return note_orgen
		break
		
		case 2:
		return note_harp
		break
		
		case 3:
		return note_melodica
		break
		
		case 4:
		return note_flute
		break
		
		case 5:
		return note_trumpet
		break
		
		case 6:
		return note_saxophone
		break
		
		case 7:
		return note_panflute
		break
		
		default:
		return note_piano
		break
	}
}