/// @description Insert description here
// You can write your code in this editor
selection = global.inst[global.phrase][obj_hovernote.mode]
selmod = selection mod 9
finished_drawing = 0
step = 80
insname = instrument_name_lut(global.inst[global.phrase][obj_hovernote.mode])
global.loopall = false