// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ConvertEmptyPlots(_num_plots){
	var _plot_array = array_create(0,noone);
	var _plot_buff = 32
	var _issue = false;
	if _num_plots == 1{
		//do nothing, we already set the target plot to have the info needed
	}
	
	if _num_plots == 4
	{
		_plot_array[0] = instance_place(x + _plot_buff, y, obj_plot);				//right
		_plot_array[1] = instance_place(x + _plot_buff, y + _plot_buff, obj_plot);	//+1, +1
		_plot_array[2] = instance_place(x,				y + _plot_buff, obj_plot);  //+1
	}
	
	if _num_plots == 9
	{
		_plot_array[0] = instance_place(x + _plot_buff, y, obj_plot);				//right
		_plot_array[1] = instance_place(x + _plot_buff, y + _plot_buff, obj_plot);	//+1, +1
		_plot_array[2] = instance_place(x,				y + _plot_buff, obj_plot);  //+1
		_plot_array[3] = instance_place(x,					y + _plot_buff * 2, obj_plot);				
		_plot_array[4] = instance_place(x + _plot_buff ,	y + _plot_buff * 2,	obj_plot);	
		_plot_array[5] = instance_place(x + _plot_buff*2,	y + _plot_buff * 2,	obj_plot);  
		_plot_array[6] = instance_place(x + _plot_buff*2,	y + _plot_buff * 1,	obj_plot);   
		_plot_array[7] = instance_place(x + _plot_buff*2,	y,					obj_plot);  
	}
	
				
	for (var i = 0; i < array_length(_plot_array); i ++;)
	{
		_plot_array[i].occupied = true;
		_plot_array[i].occupied_by = object_held;
	}
}