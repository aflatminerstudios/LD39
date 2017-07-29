/// scrPlayCabinetWithVisitor(cabinetInstance, visitorInstance)

var cabinetInstance = argument0;
var visitorInstance = argument1;

if(cabinetInstance == noone || visitorInstance == noone) {
	show_debug_message("Invalid instance in call to scrPlayCabinetWithVisitor(" + string(cabinetInstance) + ", " + string(visitorInstance) + ")");
	return;
}
visitorInstance.currentActivity = cabinetInstance;
visitorInstance.x = cabinetInstance.x;
visitorInstance.y = cabinetInstance.y + 100;
cabinetInstance.isBeingPlayed = true;