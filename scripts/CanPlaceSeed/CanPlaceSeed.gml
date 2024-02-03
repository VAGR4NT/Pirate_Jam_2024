// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CanPlaceSeed(_num_plots){
	var _plot_array = array_create(0,noone);
	var _plot_buff = 16
	var _issue = false;
	_plot_array[0] = instance_place(x + _plot_buff, y, obj_plot);				//right
	_plot_array[1] = instance_place(x + _plot_buff, y + _plot_buff, obj_plot);	//+1, +1
	_plot_array[2] = instance_place(x,				y + _plot_buff, obj_plot);  //+1
	
	if _num_plots == 9{
	_plot_array[3] = instance_place(x,					y + _plot_buff * 2, obj_plot);				
	_plot_array[4] = instance_place(x + _plot_buff ,	y + _plot_buff * 2,	obj_plot);	
	_plot_array[5] = instance_place(x + _plot_buff*2,	y + _plot_buff * 2,	obj_plot);  
	_plot_array[6] = instance_place(x + _plot_buff*2,	y + _plot_buff * 1,	obj_plot);   
	_plot_array[7] = instance_place(x + _plot_buff*2,	y,					obj_plot);  
	}
	
				
	for (var i = 0; i < array_length(_plot_array); i ++;)
	{
		if _plot_array[i] != noone {
			if _plot_array[i].occupied == true{
				_issue = true; //plot is occupied --> there is an issue and cannot place
				//Print("space is occupied")
			}
		} else { //no plot found --> there is an issue and cannot place
			_issue = true;
			//Print("no plot found here")
		}
	}
				
	if _issue == false{ //if no issues are found, you can place
		//Print("No issues with placement from CanPlaceSeed()")
		return !_issue;
		
	}
}