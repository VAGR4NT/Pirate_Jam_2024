///JUJU ADAMS TALK @https://www.youtube.com/watch?v=Uj7nr6vSRvs
function scrSaveStringToFile(argument0, argument1) {
	var _filename = argument0;
	var _string = argument1;
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, _filename);
	buffer_delete(_buffer);
	///C:\Users\Spencer\AppData\Local\Space_Ace

}
show_debug_message("scrSaveStringToFile: " + string(argument0))