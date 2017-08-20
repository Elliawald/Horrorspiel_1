/// @description draw a textbox

draw_sprite(spr_textbox,0,obj_player.x,obj_player.y + cam_height);

//draw Text
draw_set_font(fnt_text);


if(charCount < string_length(text[page])){
	charCount += 0.8;
	
}


textPart = string_copy(text[page],1,charCount)

draw_text_ext(obj_player.x-boxWidth/2 + xPadding, obj_player.y + cam_height - boxHeight + yPadding, name + ":", stringHeight,boxWidth);

draw_text_ext(obj_player.x-boxWidth/2 + xPadding, obj_player.y + cam_height - boxHeight + stringHeight+yPadding, textPart, stringHeight,boxWidth);

