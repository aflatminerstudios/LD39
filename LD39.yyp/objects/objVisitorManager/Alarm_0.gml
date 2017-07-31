/// @description Decide whether to spawn a new visitor
// You can write your code in this editor

//don't ALWAYS spawn if they get here
var r = irandom_range(-5, maxVisitors);

var door = instance_find(objDoorframe, 0);
if ((r >= numVisitors && numVisitors < maxVisitors)|| numVisitors == 0) {
  var number = choose(1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5);
  var maxToSpawn = clamp(maxVisitors - numVisitors, 1, number);
  var numToSpawn = irandom_range(1, maxToSpawn);
  for (var i = 0; i < numToSpawn; ++i) {
    instance_create_layer(door.x, door.y, "Instances", objVisitor);
    numVisitors += 1;
  }
}

alarm[0] = random_range(minTime, maxTime);
