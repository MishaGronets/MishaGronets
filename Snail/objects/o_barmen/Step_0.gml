pos = instance_nearest(x,y,o_player);

if (state = 0 && point_distance(x,y,pos.x,pos.y) <= 240)
{
	state = 1;
	with(o_player)
	{
		direction = 0;
		sprite_index = s_player_right;
		state = 1;
		move = 0;
	}
}