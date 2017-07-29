/// @description Change depth and collect money if being played
// You can write your code in this editor

depth = layer_get_depth(layer) - (y + sprite_height / 2);

if (isPowered && isFunctional && isBeingPlayed) {
  coinBox += incomePerStep;
 // show_debug_message("Collected from " + string(object.id));
}