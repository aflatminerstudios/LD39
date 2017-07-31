///@func scrFindNextNodeInPath(currentNode, targetNode, dir)
///@desc Finds the next node in the path given a current node and target node
///@param {objWalkPoint} currentNode The node you are starting from
///@param {objWalkPoint} targetNode The node you are going to
///@param dir 1 for clockwise, -1 for counterClockwise

var currentNode = argument0;
var targetNode = argument1;
var dir = argument2;

//If at target, then finished
if (currentNode = targetNode) {
  return noone;
}

var rVal;
if (dir == 1) {
  if (ds_list_find_index(currentNode.adjacentPointsClockwise, targetNode) != -1) {
    rVal = targetNode;    
  } else {
    var which = random(ds_list_size(currentNode.adjacentPointsClockwise));  
    rVal = currentNode.adjacentPointsClockwise[| which];
  }
} else {
  if (ds_list_find_index(currentNode.adjacentPointsCounterClockwise, targetNode) != -1) {
    rVal = targetNode;   
  } else {
    var which = random(ds_list_size(currentNode.adjacentPointsCounterClockwise));
    rVal = currentNode.adjacentPointsCounterClockwise[| which];
  }
}

//show_debug_message("Going to " + string(rVal.groupNum) + " on the way to " + string(targetNode.groupNum));

return rVal;