function ShuffleSong(){
	var _song = global.in_game_music[0];
	//Find the index of the song that is currently playing

	var _song_options = array_create(0);
	for(var i = 0; i < array_length(global.in_game_music); i++)
	{
		if global.in_game_music[i] == global.current_song
		{
			/*not using this song*/
		} else {
			array_push(_song_options, global.in_game_music[i]);
		}
	}

	_song = _song_options[irandom(array_length(_song_options)-1)];
	//play the song and define it as the current song
	audio_stop_sound(global.current_song);
	audio_play_sound(_song,1,global.looping_music);
	global.current_song = _song;
}