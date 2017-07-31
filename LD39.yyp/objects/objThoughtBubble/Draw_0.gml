/// @description Insert description here
// You can write your code in this editor

if (parent != noone) {
  var theX = parent.x + 20;
  var theY = parent.y - parent.sprite_height + 40;
  draw_sprite(sprite_index, 0, theX, theY);
  draw_sprite(insideSprite, 0, theX, theY);
}
