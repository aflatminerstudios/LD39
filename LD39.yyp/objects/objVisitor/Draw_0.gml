/// @description Insert description here
// You can write your code in this editor
draw_self();

//draw_sprite(sprThoughtBubble, 0, x, y - sprite_height);

if (objGameControl.displayDebug) {
  draw_circle_color(x, y, 2, c_aqua, c_aqua, false);
  draw_text(x, y - 60, "H:" + string(happiness));
  draw_text(x, y - 90, "E:" + string(energy));

}