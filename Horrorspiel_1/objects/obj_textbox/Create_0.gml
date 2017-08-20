/// @description Insert description here
// You can write your code in this editor

text[0] = "Das ist eine testige Testdurchsage! BLA bla Blub di bub Schubidubidu";
text[1] = "Das ist eine testige Testdurchsage! BLA bla Blub di bub Schubidubidu";

xPadding = 4;
yPadding = 2;

cam_height = camera_get_view_border_y(view_camera[0]);

boxWidth = sprite_get_width(spr_textbox)-(2*xPadding);
boxHeight = sprite_get_height(spr_textbox)-(2*xPadding);
stringHeight = string_height(text[0]);

charCount = 0;

page = 0;

name = noone;

global.talk = true;