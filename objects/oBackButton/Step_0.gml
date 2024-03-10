if entered{ 
	image_index = 1;
	
	if mouse_check_button(mb_any){
		//restart_game();
		room_goto(target);
	}
} else {
	image_index = 0;
}