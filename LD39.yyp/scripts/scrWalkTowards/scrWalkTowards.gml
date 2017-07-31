///@func scrWalkTowards(visitorID, targetX, targetY);

var visitorID = argument0;
var targetX = argument1;
var targetY = argument2;

with (visitorID) {
  move_towards_point(targetX, targetY, walkingSpeed);
	if(speed > walkingSpeed)
		speed = walkingSpeed;
    
  dir = point_direction(x, y, targetX, targetY);
  
  if (!isWalking) {
    image_index = 0;
    isWalking = true;
  }
  
  sprite_index = scrVisitorPickSpriteWhenWalking(self.id, dir);
  
  
}