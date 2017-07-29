/// @description Insert description here
// You can write your code in this editor

var currentColor;
if(isPowered)
	currentColor = c_white;
else
	currentColor = c_gray;
draw_rectangle_color(x, y, x+100, y+200, currentColor, currentColor, currentColor, currentColor, false);