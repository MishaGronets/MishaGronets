draw_self();

if (state = 2)
{
	depth = -100;
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(font_scene1);

	draw_set_alpha(1);
	draw_mtext(683,300,txt);
}
if (state = 3)
{
	_alpha += 1/300;
	audio_master_gain(_alpha);
	
	if (_alpha >= 1)
	{
		audio_master_gain(1);
		room_goto(room_menu);
	}
}

draw_set_alpha(_alpha);
draw_set_color(c_black);
draw_rectangle(0,0,1366,768,0);
draw_set_alpha(1);