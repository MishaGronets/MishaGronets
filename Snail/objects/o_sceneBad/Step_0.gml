if (angle > 0)
{
	image_angle += angle;
	angle -= 40/90;
}
if (y > 600)
{
	y = 600;
	image_angle = 0;
	gravity = 0;
	vspeed = 0;
	angle = 0;
}