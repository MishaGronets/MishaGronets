draw_sprite_ext(sprite_index,image_index,x,y,my_xscale*image_xscale,image_yscale,0,c_white,1);

if (state = 1)
{
	move_towards_point(xx,yy,point_distance(x,y,xx,yy)/10);
	
	if (point_distance(x,y,xx,yy) <= 1)
	{
		speed = 0;
		x = xx;
		y = yy;
		state = 2;
		instance_create_depth(1702,400,-100,o_dialoge)
	}
}