///@func scrGetDirectionToTravel(currentNode, targetNode)
///@desc Returns the direction to go 1 for clockwise, -1 for counterclockwise
///@param {objWalkPoint} currentNode The node you are starting from
///@param {objWalkPoint} targetNode The node you are going to

var currentNode = argument0;
var targetNode = argument1;

if (targetNode == noone || currentNode == noone) {
  show_debug_message("Invalid target or current node when getting direction");
  return 0;
}


var diff = targetNode.groupNum - currentNode.groupNum;

var dir = 0;

if (abs(diff) <= 4) {
  dir = sign(diff);
} else {
  dir = -1 * sign(diff);
}

return dir;