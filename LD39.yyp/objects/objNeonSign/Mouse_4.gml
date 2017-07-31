/// @description Insert description here
// You can write your code in this editor

if (sprite_index == offSprite) {
  sprite_index = onSprite;
  objVisitorManager.maxTime *= 0.75;
  objVisitorManager.minTime *= 0.75;
  
} else {
  sprite_index = offSprite;
  objVisitorManager.maxTime /= 0.75;
  objVisitorManager.minTime /= 0.75;
}

isPowered = !isPowered;

