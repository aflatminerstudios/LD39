///@func scrSetVisitorStatic(visitorID)
///@desc Sets visitor to static sprite
///@param visitorID The visitor
///@param dir The direction visitor was going

var visitorID = argument0;
var dir = argument1;
with (visitorID) {
  isWalking = false;  
  image_index = 0;
  
  if (dir < 90) {
    sprite_index = spriteStaticNE;
  } else if (dir < 180) {
    sprite_index = spriteStaticNW;
  } else if (dir < 270) {
    sprite_index = spriteStaticSW;
  } else {
    sprite_index = spriteStaticSE;
  }
  
  image_index = 0;
  
}