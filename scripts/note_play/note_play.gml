// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function note_play(note,sound){
	obj = instance_create_depth(0,0,0,obj_note_player)
	obj.playing_note = audio_play_sound(sound,0,0)
	obj.kill_note = obj_hovernote.index + 8
	switch note
	{
		// octave 0
		case 25:
		audio_sound_pitch(obj.playing_note,0.75)
		break
		case 24:
		audio_sound_pitch(obj.playing_note,0.79)
		break
		case 23:
		audio_sound_pitch(obj.playing_note,0.84)
		break
		case 22:
		audio_sound_pitch(obj.playing_note,0.89)
		break
		case 21:
		audio_sound_pitch(obj.playing_note,0.94)
		break
		// octave 1
		case 20:
		audio_sound_pitch(obj.playing_note,1)
		break
		case 19:
		audio_sound_pitch(obj.playing_note,1.1)
		break
		case 18:
		audio_sound_pitch(obj.playing_note,1.13)
		break
		case 17:
		audio_sound_pitch(obj.playing_note,1.19)
		break
		case 16:
		audio_sound_pitch(obj.playing_note,1.25)
		break
		case 15:
		audio_sound_pitch(obj.playing_note,1.34)
		break
		case 14:
		audio_sound_pitch(obj.playing_note,1.41)
		break
		case 13:
		audio_sound_pitch(obj.playing_note,1.49)
		break
		case 12:
		audio_sound_pitch(obj.playing_note,1.58)
		break
		case 11:
		audio_sound_pitch(obj.playing_note,1.69)
		break
		case 10:
		audio_sound_pitch(obj.playing_note,1.78)
		break
		case 9:
		audio_sound_pitch(obj.playing_note,1.89)
		break
		// octave 2
		case 8:
		audio_sound_pitch(obj.playing_note,2)
		break
		case 7:
		audio_sound_pitch(obj.playing_note,2.2)
		break
		case 6:
		audio_sound_pitch(obj.playing_note,2.26)
		break
		case 5:
		audio_sound_pitch(obj.playing_note,2.38)
		break
		case 4:
		audio_sound_pitch(obj.playing_note,2.5)
		break
		case 3:
		audio_sound_pitch(obj.playing_note,2.68)
		break
		case 2:
		audio_sound_pitch(obj.playing_note,2.82)
		break
		case 1:
		audio_sound_pitch(obj.playing_note,2.98)
		break
		case 0:
		audio_sound_pitch(obj.playing_note,3.16)
		break
		default:
		
		break
	}
}