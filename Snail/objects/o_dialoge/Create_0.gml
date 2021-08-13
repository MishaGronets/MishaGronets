image_indx = 0;
state = 0;

//
spr_dialog[0] = s_barmFace;
spr_dialog[1] = s_happySnail;
spr_dialog[2] = s_barmFace;
spr_dialog[3] = s_angrySnail;
spr_dialog[4] = s_barmFace;
//
spr_dialog[5] = s_angrySnail;
spr_dialog[6] = s_happySnail;
//

//
why_speak[0] = snd_dialogue_barmen;
why_speak[1] = snd_dialogue_snail;
why_speak[2] = snd_dialogue_barmen;
why_speak[3] = snd_dialogue_snail;
why_speak[4] = snd_dialogue_barmen;
why_speak[5] = snd_dialogue_snail;
why_speak[6] = snd_dialogue_snail;
//

if (global.LANGUAGE = "RU")
{
	text[0] = "Привет, это некий тестовый диалог с барменом#Понятно?";
	text[1] = "Да, понятно...";
	text[2] = "Кажется что не совсем понятно..#Повторю:#это некий тестовый диалог с барменом";
	text[3] = "ТОЧНО ПОНЯТНО!!!";
	text[4] = "Хорошо, как тогда на счет истории?#Знаю ты их любишь";

	text[5] = "ИДИ НАХУЙ СО СВОМИ ИСТОРИЯМИ!";
	text[6] = "..........ну ок#я внимаю давай#просвещай";


	dialog_button_a[0] = "слушать историю";
	dialog_button_a[1] = "не интересно";
}
if (global.LANGUAGE = "EN")
{
	text[0] = "Hi, this is some of test dialogue#with the bartender#You understand me?";
	text[1] = "Yes...";
	text[2] = "It seems that it is not quite clear..#I will repeat:#this is a kind of test dialogue";
	text[3] = "EXACTLY CLEAR!!!";
	text[4] = "Okay, how about a story then?#I know you love them bro";

	text[5] = "GO FUCK YOURSELF WITH YOUR STORIES!";
	text[6] = "..........Well ok#I'm listening come on#enlighten";


	dialog_button_a[0] = "listen story";
	dialog_button_a[1] = "fuck off";
}

text_n = 0;
text_nmax = 4;//4

dialog_button = 0;

n = 1;
nmax = string_length(text[text_n]);
fake_text = "";
speed_mx_dialoge = 4;
speed_dialoge = speed_mx_dialoge;
alarm[0] = speed_dialoge;
audio_play_sound(why_speak[text_n],0,1);