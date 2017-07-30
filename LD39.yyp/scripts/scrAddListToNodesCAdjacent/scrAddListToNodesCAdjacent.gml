///@func scrAddListToNodeCAdjacent(list, node)
///@desc Adds the first parameter list to the objWalkPoints clockwise adjacent list
///@param {ds_list} list list of objWalkPoints to add
///@param {objWalkPoint} node node to add to

var list = argument0;
var node = argument1;

for (var i = 0; i < ds_list_size(list); ++i) {
  ds_list_add(node.adjacentPointsClockwise, list[| i]);
}