///@func scrVisitorCabinetActivity(visitorID, cabinetID)

var visitorID = argument0;
var cabinetID = argument1;

visitorID.happiness = clamp(visitorID.happiness + cabinetID.baseHappiness, 0.0, 1.0);