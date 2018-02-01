vsp = vsp + grv;

if(place_meeting(x+hsp,y,objWall)){
	
	while(!place_meeting(x+sign(hsp),y,objWall)){
		x = x +sign(hsp);
	}
	hsp = -hsp;
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
	sprite_index =sprEnemyA;
	image_speed = 0;
	if(sign(vsp) > 0) image_index = 1; else image_index  = 0;
}else{
	image_speed = 1;
	if(hsp == 0){
		sprite_index =sprEnemy;
	}else{
		sprite_index = sprEnemyR;
	}
}

if(hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;
