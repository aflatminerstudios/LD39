///@func scrSetTargetCabinetForVisitor(cabinetInstance, visitorInstance)
///@param cabinetInstance  
///@param visitorInstance  

var cabinetInstance = argument0;
var visitorInstance = argument1;

if(cabinetInstance == noone || visitorInstance == noone) {
	show_debug_message("Invalid instance in call to scrSetTargetCabinetForVisitor(" + string(cabinetInstance) + ", " + string(visitorInstance) + ")");
	return;
}

var watchedVisitor = noone;

with (objVisitor) {
  if (currentActivity == cabinetInstance) {
    watchedVisitor = self.id;
    break;
  }
}

if (watchedVisitor == noone) {
  show_debug_message("Chose a cabinet that is not being played to watch. That is incorrect");
  return;
}

visitorInstance.currentState = VISITOR_ENROUTE;
visitorInstance.futureActivity = watchedVisitor;

//Calculate based on size of sprites
visitorInstance.targetLocation[0] = watchedVisitor.x + 25 * sign(random_range(-1,1)) + random_range(-10, 10);
visitorInstance.targetLocation[1] = watchedVisitor.y + 60 + random_range(-15, 15);