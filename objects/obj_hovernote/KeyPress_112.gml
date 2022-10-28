/// @description Insert description here
// You can write your code in this editor
if file_exists("help.txt")
{
	execute_shell_simple("help.txt")
}
else
{
	show_message("Help file not found.")
}