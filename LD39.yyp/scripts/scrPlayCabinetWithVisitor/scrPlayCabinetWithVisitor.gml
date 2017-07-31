/// scrPlayCabinetWithVisitor(cabinetInstance, visitorInstance)

var cabinetInstance = argument0;
var visitorInstance = argument1;

if(cabinetInstance == noone || visitorInstance == noone) {
	show_debug_message("Invalid instance in call to scrPlayCabinetWithVisitor(" + string(cabinetInstance) + ", " + string(visitorInstance) + ")");
	return;
}

visitorInstance.currentState = VISITOR_ACTIVE;
visitorInstance.currentActivity = cabinetInstance;
//visitorInstance.x = cabinetInstance.x;
//visitorInstance.y = cabinetInstance.y + 100;
visitorInstance.futureActivity = noone;
visitorInstance.speed = 0;
visitorInstance.isWalking = false;


cabinetInstance.isBeingPlayed = true;
cabinetInstance.sprite_index = cabinetInstance.playingSprite;
