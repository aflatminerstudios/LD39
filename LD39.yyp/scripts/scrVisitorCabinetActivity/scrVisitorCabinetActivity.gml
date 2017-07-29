///@func scrVisitorCabinetActivity(visitorID, cabinetID)

var visitorID = argument0;
var cabinetID = argument1;

var amountToChange = stylePrefs[cabinetID.style] * cabinetID.baseHappiness;
visitorID.happiness = clamp(visitorID.happiness + amountToChange, 0.0, 1.0);