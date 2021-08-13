if (_play = -1)//если не играют зыуки выбора
{
	if (keyboard_check_pressed(vk_down)) //если нажимаем вниз
	{
		audio_play_sound(snd_menu_button,0,0);//играет звук
		_y_menu++; //листаем меню вниз
		if (_y_menu>3){ _y_menu = 0;} //если за пределами меню устанавливаем на начало = 0
	}

	if (keyboard_check_pressed(vk_up)) // если нажали вверх
	{
		audio_play_sound(snd_menu_button,0,0);//играет звук
		_y_menu--;//листаем меню вверх
		if (_y_menu<=-1){ _y_menu = 3;}//если за пределами меню устанавливаем на конец = 3
	}

	if (keyboard_check_pressed(vk_enter) && _play = -1)// нажали ентер
	{
		switch(_state)//смотрим наш стейт
		{
			case 0: _play = audio_play_sound(snd_start,0,0);break; // если 0, то запускаем звук стартуем
			case 1: _play = audio_play_sound(snd_exit,0,0);break; // если 1, то запускаем звук выхода
		}
	}
}

if (_play != -1) // если звук запущен
{
	if (!audio_is_playing(_play)){ // если звук закончился
		switch(_state) //смотрим наш стейт
		{
			case 0: room_goto(room_street) ;break; //переходим в катсцену
			case 1: game_end() ;break;//выходим из игры
		}
	}
}

//теперь проверяем меню по позиции мыши
if (_play = -1)
{
	if (point_in_rectangle(mouse_x,mouse_y,583,354-80,783,400-80))
	{
		if (_y_menu != 0)
		{
			_state = 0;
			_y_menu = 0;
			audio_play_sound(snd_menu_button,0,0);//играет звук
		}
		if (mouse_check_button_pressed(mb_left) && _play = -1)
		{
			_play = audio_play_sound(snd_start,0,0);
		}
	}
	if (point_in_rectangle(mouse_x,mouse_y,583,354,783,400))
	{
		if (_y_menu != 1)
		{
			_y_menu = 1;
			audio_play_sound(snd_menu_button,0,0);//играет звук
		}
	}
	if (point_in_rectangle(mouse_x,mouse_y,583,354+80,783,400+80))
	{
		if (_y_menu != 2)
		{
			_y_menu = 2;
			audio_play_sound(snd_menu_button,0,0);//играет звук
		}
	}
	if (point_in_rectangle(mouse_x,mouse_y,583,354+160,783,400+160))
	{
		if (_y_menu != 3)
		{
			_state = 1;
			_y_menu = 3;
			audio_play_sound(snd_menu_button,0,0);//играет звук
		}
		if (mouse_check_button_pressed(mb_left) && _play = -1)
		{
			_play = audio_play_sound(snd_exit,0,0);
		}
	}
}