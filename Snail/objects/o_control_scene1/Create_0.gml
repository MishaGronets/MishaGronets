step_txt = -1;
state = 0;
txt_alpha = 0;

alarm[0]= 90;
shift = 0;
speed_layer = 0;

if (global.LANGUAGE = "EN")
{
	txt[0] = "days passed..";
	txt[1] = "weaks..";
	txt[2] = "month...";
	txt[3] = "she comes back to this bar again...";
	txt[4] = "PRESS TO SHIFT BRO!!!";
}
if (global.LANGUAGE = "RU")
{
	txt[0] = "прошли дни..";
	txt[1] = "недели..";
	txt[2] = "месяца...";
	txt[3] = "она приходит снова в этот бар...";
	txt[4] = "нажми ты наконец-то ШИФТ!";
}
audio_stop_all();
audio_play_sound(snd_rain,0,1);
audio_play_sound(snd_music_street,0,1);