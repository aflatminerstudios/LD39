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

var target = instance_nearest(x, y, objWalkPoint);
visitorID.targetLocation[0] = target.x;
visitorID.targetLocation[1] = target.y;
visitorID.currentState = VISITOR_ENROUTE;

if (cabinetID.isPowered) 
  cabinetID.sprite_index = cabinetID.onSprite;
else
  cabinetID.sprite_index = cabinetID.offSprite;