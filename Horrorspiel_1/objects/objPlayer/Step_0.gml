key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check_pressed(vk_space);
//key_down = keyboard_check(vk_down);

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x,y + 1,objWall) && key_up ){
	vsp = -10;
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
