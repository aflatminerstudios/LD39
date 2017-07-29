/// @description Insert description here
// You can write your code in this editor

if(currentState == VISITOR_IDLE) {
		scrFindCabinetToPlayForVisitor(self.id);
} else if(currentState == VISITOR_ACTIVE) {

} else if(currentState == VISITOR_WAITING) {
	// if alarm is not active, set waiting alarm
} else if(currentState == VISITOR_ENROUTE) {
	// Move one step closer, avoiding obstacles
	motion_add(point_direction(x, y, targetLocation[0], targetLocation[1]), walkingSpeed);
	if(speed > walkingSpeed)
		speed = walkingSpeed;
	
	// Check if we are there and interact with activity instance\
	// Probably good to check that if we are going for a futureActivity
	//   to see (at a distance) if it is being used and divert accordingly
	if(distance_to_point(targetLocation[0], targetLocation[1]) < 10.0) {
		if(!futureActivity.isBeingPlayed) {
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