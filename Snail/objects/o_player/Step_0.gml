
if (move)
{
	if (keyboard_check(vk_shift))//если нажали шифт
	{
		shift = shift_max;//ускоряем
		
		//k = instance_create_depth(x,y,depth+1,o_fake_alpha);
		//k.sprite_index = sprite_index;
		//k.image_index = image_index;
		//k.image_xscale = my_xscale;
		//k.image_speed = 0;
	}
	else//иначе
	{
		shift = 0;// не ускоряем
	}
	
	scr_move(step+shift); //код шага
}

//узнаем в зависимости от направление scale картинки
/*
угол повороиа от 0 до 360
следовательно все от от 270~5 до 90 это 1
все что от 90 до 270~5 это -1
*/
if (direction >= 0 && direction <= 90)
{
	_xscale = 1;
}
if (direction > 275 && direction <= 360)
{
	_xscale = 1;
}
if (direction > 90 && direction <= 275)
{
	_xscale = -1;
}

my_xscale = lerp(my_xscale,_xscale,0.25);//изменяем xscale по _xscale