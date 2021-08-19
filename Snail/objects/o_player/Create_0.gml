gamepad = 0; //на будущее c возможность использовать геймпад

if (gamepad = 0) //не геймпад
{
	//_UP=ord("W");
	//_DOWN=ord("S");
	//_RIGHT=ord("D");
	//_LEFT=ord("A");
	// для примера оставил и для WASD
	_UP = vk_up;
	_DOWN = vk_down;
	_RIGHT = vk_right;
	_LEFT = vk_left;	
}
if (global.PL_STATE == 0)
{
	direction = 90;
	speed = 4;
	move = 0;
	alarm[0]= 70;
}
if (global.PL_STATE == 1)
{
	x = 320;
	y = 576;
	move = 1;
}
if (global.PL_STATE == 2)
{
	x = 1056;
	y = 576;
	move = 1;
}

step = 2; //скорость
shift = 0;//изначально 0
shift_max = 4;//скорость ускорения (shift_max+step) = 6 максимум
_xscale = 1;//скейл
my_xscale = 1;//для рисования чтобы не трогать маску объекта


state = 0;

xx = 547;
yy = 220;