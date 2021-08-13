// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function draw_small_mtext(arg0,arg1,arg2)
{
	draw_set_color(c_black);
	draw_text(arg0-1.5,arg1,arg2);
	draw_text(arg0+1.5,arg1,arg2);
	draw_text(arg0,arg1-1.5,arg2);
	draw_text(arg0,arg1+1.5,arg2);
	draw_set_color(c_white);
	draw_text(arg0,arg1,arg2);
}