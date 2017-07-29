/// @description Insert description here
// You can write your code in this editor

if(currentState == VISITOR_IDLE) {
		scrFindCabinetToPlayForVisitor(self.id);
		// Didn't find someting to do, so just go to the center of the room
		if(currentState == VISITOR_IDLE) {
			targetLocation[0] = room_width/2;
			targetLocation[1] = room_height/2;
			currentState = VISITOR_ENROUTE;
		}
} else if(currentState == VISITOR_ACTIVE) {
  //Remove money
  if (scrIsActivityCabinet(currentActivity)) {
    moneyOnHand = clamp(moneyOnHand - currentActivity.incomePerStep, 0, moneyOnHand);  
    //Always quit immediately when visitor runs out of money
    if (moneyOnHand == 0) {
      alarm[2] = 1;
    }
    //Or cabinet gets turned off
    if (!currentActivity.isPowered) {
      alarm[2] = 1;
    }  
  }
  
  
  timeInActivity += 1;
  
} else if(currentState == VISITOR_WAITING) {
	// if alarm is not active, set waiting alarm
} else if(currentState == VISITOR_ENROUTE) {
	// Move one step closer, avoiding obstacles
	motion_add(point_direction(x, y, targetLocation[0], targetLocation[1]), walkingSpeed);
	if(speed > walkingSpeed)
		speed = walkingSpeed;
	
	// Check if we are there and interact with activity instance if we have one
	// Probably good to check that if we are going for a futureActivity
	//   to see (at a distance) if it is being used and divert accordingly
	if(distance_to_point(targetLocation[0], targetLocation[1]) < 10.0) {
		if(futureActivity != noone &&
			 futureActivity.isPowered && !futureActivity.isBeingPlayed) {
			scrPlayCabinetWithVisitor(futureActivity, self.id);
			return;
		} else {
			// wait or give up
			// give up for now
			futureActivity = noone;
			currentState = VISITOR_IDLE;
			speed = 0;
		}
	}
}