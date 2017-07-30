/// @description This is where the magic happens
// You can write your code in this editor

//Change depth
depth = layer_get_depth("Instances") - ( y + sprite_height / 2);

//Handle state
if(currentState == VISITOR_IDLE) {
    timeInActivity = 0;
		scrGetActivityForVisitor(self.id);
		// Didn't find someting to do, so just go to the center of the room
		if(currentState == VISITOR_IDLE) {
    
      //Find 3 random walking points, pick the closest, so it biases towards not moving as much
      var tar1 = instance_find(objWalkPoint, irandom(instance_number(objWalkPoint) - 1));
      var tar2 = instance_find(objWalkPoint, irandom(instance_number(objWalkPoint) - 1));
      var tar3 = instance_find(objWalkPoint, irandom(instance_number(objWalkPoint) - 1));
      var d1 = distance_to_point(tar1.x, tar1.y);
      var d2 = distance_to_point(tar2.x, tar2.y);
      var d3 = distance_to_point(tar3.x, tar3.y);
      var target;
      if (d1 < d2 && d1 < d3) {
        target = tar1;
      } else if (d2 < d1 && d2 < d3) {
        target = tar2;
      } else {
        target = tar3;
      }
      
			targetLocation[0] = target.x;
			targetLocation[1] = target.y;
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
  

  if (scrIsActivityVisitor(currentActivity)) {
    //If watching a visitor not playing a game, stop
    if (!scrIsActivityCabinet(currentActivity.currentActivity)) {
      alarm[2] = 1;
    }
  }
  
  timeInActivity += 1;
  
} else if(currentState == VISITOR_WAITING) {
  timeInActivity = 0;
	// if alarm is not active, set waiting alarm
  if (alarm[3] <= 0) {
    alarm[3] = objGameControl.timeStep;
  }
} else if(currentState == VISITOR_ENROUTE) {
	// Move one step closer, avoiding obstacles
	motion_add(point_direction(x, y, targetLocation[0], targetLocation[1]), walkingSpeed);
	if(speed > walkingSpeed)
		speed = walkingSpeed;
	
	// Check if we are there and interact with activity instance if we have one
	// Probably good to check that if we are going for a futureActivity
	//   to see (at a distance) if it is being used and divert accordingly
	if(distance_to_point(targetLocation[0], targetLocation[1]) < 10.0) {
		if(futureActivity != noone) {
      if (scrIsActivityCabinet(futureActivity) && futureActivity.isPowered) {
        if (futureActivity.isBeingPlayed) {          
          scrSetTargetCabinetWatchForVisitor(self.id, futureActivity);
          return;
        } else {        
          scrPlayCabinetWithVisitor(futureActivity, self.id);
          return;
        }
  		}  else if (scrIsActivityVisitor(futureActivity) && scrIsActivityCabinet(futureActivity.currentActivity)) {
        //future activity is a person playing a game        
        scrWatchVisitor(self.id, futureActivity);
      } else {      
  			// wait or give up
  			// give up for now
  			futureActivity = noone;
  			currentState = VISITOR_WAITING;
  			speed = 0;
  		}
  	} else {
	// wait or give up
  			// give up for now
  			futureActivity = noone;
  			currentState = VISITOR_WAITING;
  			speed = 0;    
    }
  }
}