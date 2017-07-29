///@func scrStopPlayingCabinetWithVisitor(visitorID, cabinetID)

var visitorID = argument0;
var cabinetID = argument1;

if(cabinetID == noone || visitorID == noone) {
	show_debug_message("Invalid instance in call to scrPlayCabinetWithVisitor(" + string(cabinetID) + ", " + string(visitorID) + ")");
	return;
}

visitorID.currentState = VISITOR_IDLE;
visitorID.currentActivity = noone;
visitorID.futureActivity = noone;

cabinetID.isBeingPlayed = false;


/*TODO: Change this to something else, perhaps have some sets 
of points it's safe to head towards and head towards closest?*/
visitorID.targetLocation[0] = room_width/2;
visitorID.targetLocation[1] = room_height/2;
visitorID.currentState = VISITOR_ENROUTE;