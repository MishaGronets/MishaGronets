if (state = 0)
{
	state = 1;
	
	with(o_control_bar)
	{
		_x = 1366;
		state = 1;
	}
	with(o_player)
	{
		direction = 180;
		move = 0;
	}
}

if (state = 2)
{
	state = 3;
	
	with(o_control_bar)
	{
		_x = 0;
		state = 1;
	}
	with(o_player)
	{
		direction = 0;
		move = 0;
	}
}