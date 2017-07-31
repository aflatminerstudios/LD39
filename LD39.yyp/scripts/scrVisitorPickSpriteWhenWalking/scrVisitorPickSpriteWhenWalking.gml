///@func scrVisitorPickSpriteWhenWalking(visitorID, dir)
///@desc Returns the appropriate walking sprite for the visitor
///@param visitorID the ID of the visitor in quesiton
///@param dir The direction the visitor is walking

var visitorID = argument0;
var dir = argument1;

if (dir < 0)
  dir = 360 + dir;
  
while (dir >= 360) {
  dir -= 360;
}


if (dir < 90) {
  return visitorID.spriteWalkingNE;
} else if (dir < 180) {
  return visitorID.spriteWalkingNW;
} else if (dir < 270) {
  return visitorID.spriteWalkingSW;
} else {
  return visitorID.spriteWalkingSE;
}

