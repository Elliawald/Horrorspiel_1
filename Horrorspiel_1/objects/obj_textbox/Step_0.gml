/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(vk_space)){
	if(charCount < string_length(text[page])){
		global.talk = true;
		charCount = string_length(text[page]);
	}
	else if(page + 1 < array_length_1d(text)){
		page += 1;
		charCount = 0;
	} else{
		instance_destroy();
		global.talk = false;
		creator.alarm[1] = 1;
	}
	
}
