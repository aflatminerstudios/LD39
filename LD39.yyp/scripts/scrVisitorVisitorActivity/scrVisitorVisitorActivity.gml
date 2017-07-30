/// scrVisitorVisitorActivity(visitorID, activityID)

var visitorID = argument0;
var activityID = argument1;

var cabinetID = activityID.currentActivity;

if (cabinetID == noone || !scrIsActivityCabinet(cabinetID)) {
  show_debug_message("Errror: Visitor is watching someone do nothing.");
}

var styleMult = visitorID.stylePrefs[cabinetID.style];
//Get a smaller amount of enjoyment from watching someone play
var amountToChange = styleMult * cabinetID.baseHappiness * 0.5;
visitorID.happiness = clamp(visitorID.happiness + amountToChange, 0.0, 1.0);

//Decide if user wants to quit playing
var chanceToStay = visitorID.happiness * 0.50 * styleMult - (visitorID.timeInActivity / 100) * 0.25;
var r = random(1);    

if (r > chanceToStay) {
  visitorID.alarm[2] = room_speed * random(0.75);
}

