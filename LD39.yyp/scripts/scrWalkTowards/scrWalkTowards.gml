///@func scrWalkTowards(visitorID, targetX, targetY);

var visitorID = argument0;
var targetX = argument1;
var targetY = argument2;

with (visitorID) {
  move_towards_point(targetX, targetY, walkingSpeed);
	if(speed > walkingSpeed)
		speed = walkingSpeed;
    
    
}