if (room == room_bar)
{
	global.PL_STATE = 2;
	global.PEREHOD = 0;
	room_goto(room_trans);
}
if (room == room_bar_subs)
{
	global.PL_STATE = 1;
	global.PEREHOD = 1;
	room_goto(room_trans);
}