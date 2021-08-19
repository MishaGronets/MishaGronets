draw_sprite_ext(sprite_index,image_index,x,y,my_xscale*image_xscale,image_yscale,0,c_white,1);

if (state = 1)
{
	sprite_index = s_player_right
	move_towards_point(xx,yy,point_distance(x,y,xx,yy)/10);
	
	if (point_distance(x,y,xx,yy) <= 1)
	{
		direction = 0;
		speed = 0;
		x = xx;
		y = yy;
		state = 2;
		instance_create_depth(288,544,-100,o_dialoge)
	}
}