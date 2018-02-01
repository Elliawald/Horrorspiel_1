
if(hascontrol){
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_up = keyboard_check_pressed(vk_space);
	//key_down = keyboard_check(vk_down);
}else{
	key_left = 0;
	key_right = 0;
	key_up = 0;
	//key_down = keyboard_check(vk_down);
}

//Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x,y + 1,objWall) && key_up ){
	vsp = -7;
}

if(place_meeting(x+hsp,y,objWall)){
	
	while(!place_meeting(x+sign(hsp),y,objWall)){
		x = x +sign(hsp);
	}
	hsp = 0;
}


x = x + hsp;

if(place_meeting(x,y+vsp,objWall)){
	while(!place_meeting(x,y+sign(vsp),objWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}


y = y + vsp;

//Animation
if(!place_meeting(x,y+1,objWall)){
	sprite_index =sprPlayerA;
	image_speed = 0;
	if(sign(vsp) > 0) image_index = 1; else image_index  = 0;
}else{
	image_speed = 1;
	if(hsp == 0){
		sprite_index =sprPlayer;
	}else{
		sprite_index = sprPlayerR;
	}
}

if(hsp != 0) image_xscale = sign(hsp);
