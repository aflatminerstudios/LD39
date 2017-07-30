///@func scrWatchVisitor(visitorID, activityID)
///@param visitorID
///@param activityID

var visitorID = argument0;
var activityID = argument1;


if(activityID == noone || visitorID == noone) {
	show_debug_message("Invalid instance in call to scrPlayCabinetWithVisitor(" + string(visitorID) + ", " + string(activityID) + ")");
	return;
}

visitorID.currentState = VISITOR_ACTIVE;
visitorID.currentActivity = activityID;
//visitorInstance.x = cabinetInstance.x;
//visitorInstance.y = cabinetInstance.y + 100;
visitorID.futureActivity = noone;
visitorID.speed = 0;