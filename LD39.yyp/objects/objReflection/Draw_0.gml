/// @description Insert description here
// You can write your code in this editor

draw_self();

if (instance_number(objGameControl) > 0) {
  if (objGameControl.displayDebug) {
    draw_circle_color(x, y, 6, c_red, c_red, false);
  }
}