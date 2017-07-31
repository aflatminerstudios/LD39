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




var target = instance_nearest(visitorID.x, visitorID.y, objWalkPoint);
visitorID.targetLocation[0] = target.x;
visitorID.targetLocation[1] = target.y;
visitorID.targetNode = target;
visitorID.nextNode = target;
visitorID.currentState = VISITOR_ENROUTE;
visitorID.timeInActivity = 0;


if (scrIsActivityCabinet(cabinetID)) {
  if (cabinetID.isPowered) 
    cabinetID.sprite_index = cabinetID.onSprite;
  else
    cabinetID.sprite_index = cabinetID.offSprite;
}