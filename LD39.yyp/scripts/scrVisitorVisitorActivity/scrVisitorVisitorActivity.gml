/// scrVisitorVisitorActivity(visitorID, activityID)

var visitorID = argument0;
var activityID = argument1;

var cabinetID = activityID.currentActivity;

if (!scrIsActivityVisitor(visitorID) || !scrIsActivityVisitor(activityID)) {
  show_debug_message("Ack! Something went terrible wrong in watching.");
  return;
}
if (cabinetID == noone || !scrIsActivityCabinet(cabinetID)) {
  show_debug_message("Errror: Visitor is watching someone do nothing.");
}

with (visitorID) {
  if (sprite_index != spriteStaticNW && sprite_index != spriteStaticNE && sprite_index != spriteStaticSW && sprite_index != spriteStaticSE) {
    var actDir = point_direction(x, y, activityID.x, activityID.y);  
    scrSetVisitorStatic(self.id, actDir);
  }
}




var styleMult = visitorID.stylePrefs[cabinetID.style];
//Get a smaller amount of enjoyment from watching someone play
var amountToChange = styleMult * cabinetID.baseHappiness * 0.5;
visitorID.happiness = clamp(visitorID.happiness + amountToChange, 0.0, 1.0);

//Decide if user wants to quit playing
var chanceToStay = visitorID.happiness * 0.50 * styleMult - (visitorID.timeInActivity / cabinetID.leaveSteps) * 0.25;
var r = random(1);    

if (r > chanceToStay) {
  visitorID.alarm[2] = room_speed * random(0.75);
}

