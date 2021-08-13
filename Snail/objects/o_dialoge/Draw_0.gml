draw_sprite(sprite_index,0,x,y);
draw_sprite(spr_dialog[text_n],image_indx,x+42,y+9);

draw_set_valign(fa_left);
draw_set_halign(fa_left);
draw_set_font(font_dialoge);
draw_set_color(c_black);

draw_small_mtext(x+120,y+18,string_hash_to_newline(fake_text));

if (n >= nmax)
{
	if (dialog_button = 0)
	{
		draw_text_color(x+590,y+50,"далее",c_black,c_black,c_black,c_black,sin(current_time/200));
	}
	if (dialog_button = 1)
	{
		draw_text_color(x+500+sin(current_time/250)*3,y+20,dialog_button_a[0],c_black,c_black,c_black,c_black,1+sin(current_time/250)/2);
		draw_text_color(x+500+sin(current_time/250+1)*3,y+60,dialog_button_a[1],c_black,c_black,c_black,c_black,1+sin(current_time/250+1)/2);
	}
}
image_indx += 1/10;

if (image_indx = 2)
{
	image_indx = 0;
}