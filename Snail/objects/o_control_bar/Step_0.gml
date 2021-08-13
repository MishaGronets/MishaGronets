if (state = 1){
	
	if (_x > 0)
	{
		camera_set_view_pos(view_camera[0],_x,camera_get_view_y(view_camera[0]));	
	}
	if (o_translite.state = 1)
	{
		o_player.x -= (1366/60)/2;
		_x -= 1366/60;
	}
	if (o_translite.state = 3)
	{
		o_player.x += (1366/60)/2;
		_x += 1366/60;
	}
		
	if (_x <= 0 && o_translite.state = 1)
	{
		with(o_player)
		{
			move = 1;
			speed = 0;
		}
		o_translite.state = 2;
		state = -1;
		_x = 0;
		camera_set_view_pos(view_camera[0],0,camera_get_view_y(view_camera[0]));	
	}
	
	if (_x >= 1366 && o_translite.state = 3)
	{
		with(o_player)
		{
			move = 1;
			speed = 0;
		}
		o_translite.state = 0;
		state = -1;
		_x = 0;
		camera_set_view_pos(view_camera[0],1366,camera_get_view_y(view_camera[0]));	
	}
}
