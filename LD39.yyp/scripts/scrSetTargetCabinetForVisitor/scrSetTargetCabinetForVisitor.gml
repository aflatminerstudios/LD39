/// scrSetTargetCabinetForVisitor(cabinetInstance, visitorInstance)

var cabinetInstance = argument0;
var visitorInstance = argument1;

if(cabinetInstance == noone || visitorInstance == noone) {
	show_debug_message("Invalid instance in call to scrSetTargetCabinetForVisitor(" + string(cabinetInstance) + ", " + string(visitorInstance) + ")");
	return;
}

visitorInstance.currentState = VISITOR_ENROUTE;
visitorInstance.futureActivity = cabinetInstance;

//Calculate based on size of sprites
visitorInstance.targetLocation[0] = cabinetInstance.playPos[0];
visitorInstance.targetLocation[1] = cabinetInstance.playPos[1];