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
		
		case 8:
		return global.note_custom[0]
		break
		
		case 9:
		return note_aguitar
		break
		
		case 10:
		return note_eguitar
		break
		
		case 11:
		return note_banjo
		break
		
		case 12:
		return note_bguitar
		break
		
		case 13:
		return note_violin
		break
		
		case 14:
		return note_marimba
		break
		
		case 15:
		return note_vibes
		break

		case 16:
		return note_timpani
		break
		
		case 17:
		return global.note_custom[1]
		break
		
		case 26:
		return global.note_custom[2]
		break
		
		case 35:
		return global.note_custom[3]
		break

		case 44:
		return global.note_custom[4]
		break
		
		case 53:
		return global.note_custom[5]
		break
		
		default:
		return note_piano
		break
	}
}