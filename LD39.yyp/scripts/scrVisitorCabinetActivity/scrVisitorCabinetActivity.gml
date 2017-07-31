///@func scrVisitorCabinetActivity(visitorID, cabinetID)

var visitorID = argument0;
var cabinetID = argument1;

var styleMult = visitorID.stylePrefs[cabinetID.style];
var amountToChange = styleMult * cabinetID.baseHappiness;
visitorID.happiness = clamp(visitorID.happiness + amountToChange, 0.0, 1.0);

//Decide if user wants to quit playing
if (timeInActivity < objGameControl.timeStep * 3)
    styleMult = 1.0;
var chanceToStay = visitorID.happiness * 0.9 * styleMult * cabinetID.baseHappiness/0.25 - (visitorID.timeInActivity / cabinetID.leaveSteps) * 0.25;

if (cabinetID.style == STYLE_FOOD) {
  chanceToStay -= 0.50;
}
var r = random(1);    

if (r > chanceToStay) {
  visitorID.alarm[2] = room_speed * random(0.75);
}

