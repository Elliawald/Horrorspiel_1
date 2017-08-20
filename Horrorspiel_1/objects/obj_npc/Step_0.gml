/// @description Insert description here
// You can write your code in this editor
/// @description Move the player

collision = 0;

if(place_meeting(x, y, obj_player)){
		if(keyboard_check_pressed(vk_space)){
			if(myTextbox == noone){
				myTextbox = instance_create_layer(x,y, "Inst_text",obj_textbox);
				myTextbox.text = myText;
				myTextbox.creator = self;
				myTextbox.name = myName;
			}
		}	
}else{
	if(myTextbox != noone){
		
		instance_destroy(myTextbox);	
		myTextbox = noone;
	}
		
}


if(global.talk == false){


	if(moveX != 0){
		if(place_meeting(x+moveX, y, obj_collision)){
			repeat(abs(moveX)){
					if(!place_meeting(x+sign(moveX), y, obj_collision)){
					x += sign(moveX);							
				}
				else{
					break;
				}
			}
			moveX = 0;
		}
	}

	if(moveY != 0){
		if(place_meeting(x, y+moveY, obj_collision)){
			repeat(abs(moveY)){
					if(!place_meeting(x, y+sign(moveY), obj_collision)){
					y += sign(moveY);
				}
				else{
					break;
				}
			}
			moveY = 0;
		}
	}

	if(moveX != 0 || moveY != 0){
		if(sign(moveX) == 1){
			sprite_index = spr_walk_right;
		}
		if(sign(moveX) == -1){
			sprite_index = spr_walk_left;
		}
		if(sign(moveY) == 1){
			sprite_index = spr_walk_down;
		}
		if(sign(moveY) == -1){
			sprite_index = spr_walk_up;
		}
	}
	else{
		image_index = 0;
	}



	x += moveX; // same as x=x+moveX
	y += moveY;
}
else{
	image_speed = 0;
}