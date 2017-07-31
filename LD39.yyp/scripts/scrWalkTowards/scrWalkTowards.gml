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
  oldIndex = image_index;
  
  
  var spriteToBe = scrVisitorPickSpriteWhenWalking(self.id, dir);

  //if (sprite_index != spriteToBe) {  
  //  if (timeInSprite >= minTimeInSprite) {
      sprite_index = spriteToBe;
    //  timeInSprite = 0;
  //  }  
  //}
  
  if (point_distance(x, y, targetX, targetY) < stopWalking)
    scrSetVisitorStatic(visitorID, dir);
  
  image_index = oldIndex;
  
  //timeInSprite++;
}

