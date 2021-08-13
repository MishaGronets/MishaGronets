function scr_move(step) 
{
	if (keyboard_check(_LEFT) && !keyboard_check(_RIGHT) && !keyboard_check(_UP) && !keyboard_check(_DOWN))
	{
		motion_add(180,step);
	}
	if (keyboard_check(_LEFT) && !keyboard_check(_RIGHT) && !keyboard_check(_UP) && keyboard_check(_DOWN))
	{
		motion_add(225,step);
	}
	if (keyboard_check(_LEFT) && !keyboard_check(_RIGHT) && keyboard_check(_UP) && !keyboard_check(_DOWN))
	{
		motion_add(135,step);
	}
	if (!keyboard_check(_LEFT) && !keyboard_check(_RIGHT) && keyboard_check(_UP) && !keyboard_check(_DOWN))
	{
		motion_add(90,step);
	}
	if (!keyboard_check(_LEFT) && keyboard_check(_RIGHT) && keyboard_check(_UP) && !keyboard_check(_DOWN))
	{
		motion_add(45,step);
	}
	if (!keyboard_check(_LEFT) && keyboard_check(_RIGHT) && !keyboard_check(_UP) && !keyboard_check(_DOWN))
	{
		motion_add(0,step);
	}
	if (!keyboard_check(_LEFT) && keyboard_check(_RIGHT) && !keyboard_check(_UP) && keyboard_check(_DOWN))
	{
		motion_add(315,step);
	}
	if (!keyboard_check(_LEFT) && !keyboard_check(_RIGHT) && !keyboard_check(_UP) && keyboard_check(_DOWN))
	{
		motion_add(270,step);
	}
	if (!keyboard_check(_LEFT) && !keyboard_check(_RIGHT) && !keyboard_check(_UP) && !keyboard_check(_DOWN)){
		speed=0;
	}

	if (speed>step)
	{
		speed=step;
	}


}
