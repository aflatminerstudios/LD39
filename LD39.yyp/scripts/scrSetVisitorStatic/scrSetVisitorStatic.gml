///@func scrSetVisitorStatic(visitorID)
///@desc Sets visitor to static sprite
///@param visitorID The visitor

var visitorID = argument0;

with (visitorID) {
  isWalking = false;
  sprite_index = spriteStatic;
  image_index = 0;
}