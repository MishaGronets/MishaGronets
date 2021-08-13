
if (n <= nmax)
{
	fake_text += string_char_at(text[text_n],n);
	n++;
	alarm[0] = speed_dialoge;
}
if (n > nmax)
{
	audio_stop_sound(snd_dialogue_barmen);
	audio_stop_sound(snd_dialogue_snail);
}