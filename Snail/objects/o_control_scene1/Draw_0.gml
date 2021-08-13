if (state = 1) //стейт машина активна
{
	txt_alpha = min(txt_alpha+0.025,1); //увеличиваем альфу до 1
	
	if (txt_alpha >= 1) // если альфа 1
	{
		state = 2; //временно отключаем стейт
		alarm[1] = 90; // ставим таймер на 1.5 сек
	}
}
if (state = 3)//стейт активен
{
	if (step_txt != 4) //не последний текст
	{
		txt_alpha = max(txt_alpha-0.025,0); //альфу к 0
	}
	
	if (txt_alpha <= 0) //альфа = 0
	{
		state = 0; // сброс стейта
		alarm[0] = 90; // ставим таймер на 1.5 сек
		
		if (step_txt = 3) // если диалог 3й то ставим 30 сек
		{
			alarm[0] = 60*30;
		}
		if (step_txt = 4)
		{
			alarm[0] = -1; // а если финальный сбрасываем таймер
		}
	}
}

if (step_txt != -1) // если можно то рисуем текст
{
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(font_scene1);

	draw_set_alpha(txt_alpha);
	draw_mtext(683,300,txt[step_txt]);
	draw_set_alpha(1);
}
// если включено ускорение
if (shift = 1) 
{
	if (speed_layer < 80)
	{
		speed_layer += 1;
		
		if (speed_layer >= 30)
		{
			shift = -1;
			alarm[2] = 180;
		}
	}
	
}
if (shift = 2)
{
	if (speed_layer > 0 )
	{
		speed_layer -= 5;
		
		if (speed_layer <= 5)
		{
			shift = 3;
			instance_create_depth(1664,576,300,o_scene1_bar);
		}
	}
	
}
if (shift != 4)
{
	var lay_id = layer_get_id("Backgrounds_road1");
    layer_hspeed(lay_id, -2-(speed_layer));
	var lay_id = layer_get_id("Background_houses");
    layer_hspeed(lay_id, -1-(speed_layer));
	var lay_id = layer_get_id("Backgrounds_road2");
    layer_hspeed(lay_id, -1.7-(speed_layer));
	var lay_id = layer_get_id("Backgrounds_flashlight");
    layer_hspeed(lay_id, -2.5-(speed_layer));
}
if (shift = 4)
{
	var lay_id = layer_get_id("Backgrounds_road1");
    layer_hspeed(lay_id, 0);
	var lay_id = layer_get_id("Background_houses");
    layer_hspeed(lay_id, 0);
	var lay_id = layer_get_id("Backgrounds_road2");
    layer_hspeed(lay_id, 0);
	var lay_id = layer_get_id("Backgrounds_flashlight");
    layer_hspeed(lay_id, 0);
}