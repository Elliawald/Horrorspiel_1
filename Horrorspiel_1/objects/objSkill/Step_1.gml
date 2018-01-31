/// @description Insert description here
// You can write your code in this editor
x = objPlayer.x;
y = objPlayer.y-7;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0,recoil-1); //reduce to 0 but dont go over

if(mouse_check_button(mb_left) && firingdelay < 0){
	recoil = 4;
	firingdelay = 10;
	with(instance_create_layer(x,y,"Bullets",objBullet)){
		 speed = 15;
		 direction = other.image_angle + random_range(-3,3); //gun angle
		 image_angle = direction;
	}
}

x = x - lengthdir_x(recoil,image_angle); // move to opposite direction of the gun
y = y - lengthdir_y(recoil,image_angle); // move to opposite direction of the gun

if(image_angle > 90 && image_angle < 270){
	image_yscale = -1;
}else{
	image_yscale = 1;
}