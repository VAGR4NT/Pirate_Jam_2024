/// @desc
//var _sound_id = ds_map_find_value(async_load, "sound_id");
//var _asset_id = ds_map_find_value(async_load, "_asset_id");
//var _was_stopped = ds_map_find_value(async_load, "was_stopped");
//if _sound_id == global.current_song{

//var shuffle = false;
//#region Shuffle
//if shuffle{
//var _index = 0;
//for(var i = 0; i < array_length(global.in_game_music); i++)
//{
//	if global.in_game_music[i] == _asset_id //global.current_song
//	{
//		_index = i;
//	}
//}
//var _array_copy = global.in_game_music;
//array_delete(_array_copy,_index,1);

//var _music = global.in_game_music[irandom(array_length(global.in_game_music))-1]
//audio_play_sound(_music,1,global.looping_music);
//global.current_song = _music;
//}
//#endregion Shuffle

//#region Play Next
//if shuffle == false{
//var _index = 0;
//for(var i = 0; i < array_length(global.in_game_music); i++)
//{
//	if global.in_game_music[i] == _asset_id //global.current_song
//	{
//		_index = i;
//	}
//}
//var _array_copy = global.in_game_music;
//array_delete(_array_copy,_index,1);

//if _index + 1 > array_length(global.in_game_music)
//{
//	_index = 0;
//} else {
//	_index += 1;
//}

//var _music = global.in_game_music[_index]
//audio_play_sound(_music,1,global.looping_music);
//global.current_song = _music;
//}
//#endregion Play Next
//}