// @desc Handle Song Progression
var _asset_id = ds_map_find_value(async_load, "asset_id");

if _asset_id == global.current_song{
#region Play Next
if global.shuffle == false{
	ChangeSong(0);
}
#endregion Play Next

#region Shuffle

if global.shuffle == true{
	
ShuffleSong();
}

#endregion Shuffle
}