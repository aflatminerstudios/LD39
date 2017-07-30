///@func scrSetupNodeSameListsViaArray(nodeArray, indexArray);
///@desc uses the array of indexes to go through and add nodes to each other's same lists
///@param nodeArray Array of objWalkPoints
///@param indexArray Which nodes in the array to deal with
///@param groupNumber Which group are these nodes in

var nodeArray = argument0;
var indexArray = argument1;
var groupNumber = argument2;

if (!is_array(nodeArray) || !is_array(indexArray)) {
  show_debug_message("Passed in non-array to scrSetupNodeSameListsViaArray");
  return;
}

var length = array_length_1d(indexArray);

for (var i = 0; i < length; ++i) {
  for (var j= 0; j < length; ++j) {
    ds_list_add(nodeArray[indexArray[i]].samePointList, nodeArray[indexArray[j]]);
  }
  nodeArray[indexArray[i]].groupNum = groupNumber;
}