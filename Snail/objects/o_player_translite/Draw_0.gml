draw_sprite(s_back_trans,0,0,0);
draw_self();
draw_sprite(s_back_trans,1,0,0);
gpu_set_blendmode(bm_add);
draw_sprite(s_back_trans,2,0,0);
gpu_set_blendmode(bm_normal);

if (global.PEREHOD == 1)
{
	if (x > 1366)
	{
		room_goto(room_bar);
	}
}
if (global.PEREHOD == 0)
{
	if (x <= 0)
	{
		room_goto(room_bar_subs);
	}
}