draw_self();

var _buff = 20;
var _index = 0;

if instance_exists(target){
	draw_text(x,y + (_buff * _index),target);
	_index++;
	draw_text(x,y + (_buff * _index),size);
	_index++;
}