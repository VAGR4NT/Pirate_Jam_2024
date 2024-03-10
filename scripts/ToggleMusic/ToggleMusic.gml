function ToggleMusic(setting){
if setting == "init"
{
	var _song = global.in_game_music[irandom(array_length(global.in_game_music)-1)];
	audio_play_sound(_song,1,global.looping_music);
	global.current_song = _song;
} 
if setting == "button"
{
	#region New Way
	//Mute
	if audio_group_get_gain(music_group) == 1
	{
		audio_group_set_gain(music_group,0,1);
	}
	
	//Unmute
	if audio_group_get_gain(music_group) == 0
	{
		audio_group_set_gain(music_group,1,1);
	}
	#endregion New Way
	
	
	#region Old Way
	//if global.current_song != noone
	//{ //Song is selected
	//	if audio_is_playing(global.current_song) and !audio_is_paused(global.current_song)
	//	{
	//		audio_pause_sound(global.current_song);
	//	} else {
	//		audio_resume_sound(global.current_song);
	//	}
	//} else {
	//	var _song = global.in_game_music[irandom(array_length(global.in_game_music)-1)];
	//	audio_play_sound(_song,1,global.looping_music);
	//	global.current_song = _song;
	//}
	#endregion Old Way
}
}