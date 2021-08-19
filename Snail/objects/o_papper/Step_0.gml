if (y > xx)
{
	y = xx;
	direction = 180;
	gravity = 0;
	_a = 0;
	if (_angle > 0){
	_angle = _angle/1.01;	
	}
}
image_angle += _angle;

if (_a > 0)
{
	image_xscale = 1+sin(current_time/_point);
}