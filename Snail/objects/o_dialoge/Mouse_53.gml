if (state = 0 && n >= (nmax/2))
{
	if (dialog_button = 0)
	{
		if (point_in_rectangle(mouse_x,mouse_y,x+590,y,x+690,y+90))
		{
				text_n++;
				if (text_n > text_nmax)
				{
					text_n = text_nmax;
					audio_stop_sound(why_speak[text_n]);
		
					dialog_button = 1;
					exit;
				}
					audio_play_sound(why_speak[text_n],0,1);
					n = 1;
					nmax = string_length(text[text_n]);
					fake_text = "";
					speed_dialoge = speed_mx_dialoge;
					alarm[0] = speed_dialoge;
					exit;
		}
	}
	if (dialog_button = 1)
	{
		if (point_in_rectangle(mouse_x,mouse_y,x+460,y,x+690,y+45))
		{
			text_n = 6;
			audio_play_sound(why_speak[text_n],0,1);
			n = 1;
			nmax = string_length(text[text_n]);
			fake_text = "";
			alarm[0] = speed_dialoge;
			speed_dialoge = speed_mx_dialoge;
			dialog_button = 0;
			state = 2;
			exit;
		}
		if (point_in_rectangle(mouse_x,mouse_y,x+460,y+50,x+690,y+100))
		{	
			text_n = 5;
			audio_play_sound(why_speak[text_n],0,1);
			n = 1;
			nmax = string_length(text[text_n]);
			fake_text = "";
			speed_dialoge = speed_mx_dialoge;
			alarm[0] = speed_dialoge;
			dialog_button = 0;
			state = 1;
			exit;
		}
	}
}
if (state = 1)
{
	if (point_in_rectangle(mouse_x,mouse_y,x+590,y,x+690,y+90))
	{
		room_goto(room_end_bad);
	}
}
if (state = 2)
{
	if (point_in_rectangle(mouse_x,mouse_y,x+590,y,x+690,y+90))
	{
		// ЧТО ТО ДОЛЖНО ПРОИЗОЙТИ?
		instance_destroy();
	}
}