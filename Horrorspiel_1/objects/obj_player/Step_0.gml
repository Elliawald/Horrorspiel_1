/// @description Move the player

input_left	=	keyboard_check("a");
input_right	=	keyboard_check("d");
input_up	=	keyboard_check("w");
input_down	=	keyboard_check("s");

moveX	=	0;
moveY	=	0;

moveX	=	(input_right - input_left) * spd;
moveY	=	(input_down - input_up) * spd;

if(collision){
	moveX = 0; 
}

x += moveX; // same as x=x+moveX
y += moveY;