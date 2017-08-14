/// @description Move the player

input_left	=	keyboard_check(ord("A"));
input_right	=	keyboard_check(ord("D"));
input_up	=	keyboard_check(ord("W"));
input_down	=	keyboard_check(ord("S"));
input_run	=	keyboard_check(vk_shift);


collision = 0;

moveX	=	0;
moveY	=	0;

if(input_run){
	spd = r_spd;
}else{
	spd = n_spd;
}

if(moveY == 0){
	moveX	=	(input_right - input_left) * spd;
}
if(moveX == 0){
	moveY	=	(input_down - input_up) * spd;
}

if(collision){
	moveX = 0; 
}

x += moveX; // same as x=x+moveX
y += moveY;