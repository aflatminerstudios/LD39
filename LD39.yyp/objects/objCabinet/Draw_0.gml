/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_circle_color(x, y, 4, c_white, c_white, false);

if (objGameControl.displayDebug) {
  
  draw_rectangle_color(playPos[0] - 10, playPos[1] - 10, playPos[0]+ 10, playPos[1] + 10, c_white, c_white, c_white, c_white, false);
  
}
