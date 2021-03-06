/// @description Visitor updates every timestep
// You can write your code in this editor

//Visitor is playing cabinet
if (scrIsActivityCabinet(currentActivity)) {
  //Adjust visitor's happiness based on cabinet being played
  scrVisitorCabinetActivity(self.id, currentActivity);
}

  
if (scrIsActivityVisitor(currentActivity)) {
  //Engage in watching
  scrVisitorVisitorActivity(self.id, currentActivity);  
}

//Not happy if you're not doing anything at all
if (currentState == VISITOR_IDLE || currentState == VISITOR_WAITING) {
  happiness -= 0.1;
} else if (currentState = VISITOR_ENROUTE && currentActivity == noone && futureActivity == noone) {  
  //Also frustrating if you're just wandering aimlessly
  happiness -= 0.1;
}


scrCalculateEnergyChanges(self.id);

var r = random(1);
/*Originally thought visitor stays with an energy % chance,
but I changed it up to this to make the visitor less likely to leave, can always switch it up
*/
//if (r >= energy)
var toCompare = 1 - ((1 - energy) / 2)



if ( r <= toCompare) {
  //Stick around, check endurance later
  alarm[0] = objGameControl.timeStep;
} else {
  //Leave, will need to do something here, temporarily setting another alarm
  //random so they don't always leave on step
  alarm[1] = 2 * room_speed * random(1);
  
  //TODO: REMOVE THIS LATER WHEN THEY ACTUALLY LEAVE
  //alarm[0] = objGameControl.timeStep;
}