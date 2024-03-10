/// @desc Take Screenshot
var _time_string_sec = string( date_get_second_of_year(date_current_datetime())  );
var _time_string_yr = string( date_get_year(date_current_datetime())  );
screen_save(working_directory + "BarkBarkPark-" + _time_string_yr +"-"+  _time_string_sec + ".png");
alarm[3] = -1;