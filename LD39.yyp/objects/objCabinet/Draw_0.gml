/// @description Insert description here
// You can write your code in this editor

draw_self();


if (room == roomMain && objGameControl.displayDebug) {
  draw_circle_color(x, y, 4, c_white, c_white, false);  
  draw_rectangle_color(playPos[0] - 5, playPos[1] - 5, playPos[0]+ 5, playPos[1] + 5, c_white, c_white, c_white, c_white, false);
}
