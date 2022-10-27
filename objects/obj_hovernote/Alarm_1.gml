/// @description Insert description here
// You can write your code in this editor
if pause == 0
{
	pause = 1
	time_source_pause(timer)
}
else
{
	pause = 0
	time_source_resume(timer)
}