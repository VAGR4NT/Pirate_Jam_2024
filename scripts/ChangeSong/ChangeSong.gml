function ChangeSong(previous_song){
var _index = FindArrayIndex(global.in_game_music, global.current_song);
var _song = global.in_game_music[0];

Print("Old Song: " + string(audio_get_name(global.current_song)));
Print("Old index: " + string(_index));
//Next song
if global.shuffle == true
{
	ShuffleSong();
	exit;
} else {
	if previous_song == 0
	{
		if _index == array_length(global.in_game_music)-1
		//handle overshoot
		{
			_song = global.in_game_music[0];
		} else {
			_song = global.in_game_music[_index + 1];
		}
	} 

	if previous_song == 1
	{
		//Previous Song
		if _index == 0
		//Handle undershoot
		{
			_song = global.in_game_music[array_length(global.in_game_music)-1];
		} else {
			_song = global.in_game_music[_index - 1];
		}
	}
}
audio_stop_sound(global.current_song);
audio_play_sound(_song,1,global.looping_music);
global.current_song = _song;

Print("New Song: " + string(audio_get_name(global.current_song)));
Print("New index: " + string(_index));
}
