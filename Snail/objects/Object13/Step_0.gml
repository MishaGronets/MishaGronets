if (state = 0)
{
	image_angle = sin(current_time/100)*5;
}
if (x > 772)
{
	if (state = 0)
	{
		image_angle = 0;
		speed = 0;
		state = 1;
		alarm[0] = 90;
		alarm[1] = 5*60;
	}
}
if (state = 3){
	x = xx+random_range(-5,5);
	y = yy+random_range(-5,5);
	
	if (irandom(100) > 80){
		audio_play_sound(snd_shoot,0,0);
		instance_create_depth(x+random_range(-5,15),y-100+random_range(-15,15),depth-1,o_shoot);
		instance_create_depth(random_range(810,1360),random_range(190,615),depth-1,o_popal);
	}
	camera_set_view_pos(view_camera[0],random_range(-3,3),random_range(-3,3));
}