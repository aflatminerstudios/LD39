/// @description Calculate energy and whether to leave
// You can write your code in this editor

scrCalculateEnergyChanges(self.id);

var r = random(1);
/*Originally thought visitor stays with an energy % chance,
but I changed it up to this to make the visitor less likely to leave, can always switch it up
*/
//if (r >= energy)
var toCompare = 1 - ((1 - energy) / 2)

if ( r >= toCompare) {
  //Stick around, check endurance later
  alarm[0] = objGameControl.timeStep;
} else {
  //Leave, will need to do something here, temporarily setting another alarm
  //random so they don't always leave on step
  alarm[1] = 2 * room_speed * random(1);
}