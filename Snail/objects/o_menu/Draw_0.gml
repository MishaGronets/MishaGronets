draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_font(font_menu);
//выше выравнивание шрифта и его установка
draw_set_color(c_white);
for(var i = 0; i <= 3; i++){
draw_text(683,304 + (80*i),txt[i]);
}
//рисую меню

draw_set_color(c_red);
//рисуем выбор в меню
switch(_y_menu)
{
	case 0: draw_text(683,384-80,txt[0]) _state = 0; break;
	case 1: draw_text(683,384,txt[1]); break;
	case 2: draw_text(683,384+80,txt[2]); break;
	case 3: draw_text(683,384+160,txt[3]) _state = 1; break;
}