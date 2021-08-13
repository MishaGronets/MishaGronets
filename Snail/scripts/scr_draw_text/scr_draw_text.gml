// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function draw_mtext(arg0,arg1,arg2)
{
	draw_set_color(c_black);
	draw_text(arg0-2,arg1,arg2);
	draw_text(arg0+2,arg1,arg2);
	draw_text(arg0,arg1-2,arg2);
	draw_text(arg0,arg1+2,arg2);
	
	draw_text(arg0+2,arg1+2,arg2);
	draw_text(arg0+3,arg1+3,arg2);
	draw_text(arg0+4,arg1+4,arg2);
	draw_text(arg0+5,arg1+5,arg2);
	draw_set_color(c_white);
	draw_text(arg0,arg1,arg2);
}