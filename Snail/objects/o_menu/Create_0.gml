global.LANGUAGE = "RU";//"RU" это русский "EN" это инглиш
//поменять параметр для смены языка
_play = -1; //играет ли звук? -1 нет
_state = -1;// стейт, что делать? -1 ничего

_y_menu = 0; // позиция в меню

//массив с меню
if (global.LANGUAGE = "RU")
{
	txt[0] = "СТАРТУЕМ";
	txt[1] = "ЗАГРУЗКА";
	txt[2] = "НАСТРОЙКИ";
	txt[3] = "НУ И ВАЛИ";
}
if (global.LANGUAGE = "EN")
{
	txt[0] = "READY?!";
	txt[1] = "LOAD GAME";
	txt[2] = "SETTING";
	txt[3] = "FUCK OFF";
}
//вырубаем все звуки и включаем звук меню

audio_stop_all();
audio_play_sound(snd_menu,0,1);