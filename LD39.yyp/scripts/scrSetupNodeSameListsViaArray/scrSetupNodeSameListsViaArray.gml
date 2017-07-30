///@func scrSetupNodeSameListsViaArray(nodeArray, indexArray);
///@desc uses the array of indexes to go through and add nodes to each other's same lists
///@param nodeArray Array of objWalkPoints
///@param indexArray Which nodes in the array to deal with

var nodeArray = argument0;
var indexArray = argument1;

if (!is_array(nodeArray) || !is_array(indexArray)) {
  show_debug_message("Passed in non-array to scrSetupNodeSameListsViaArray");
  return;
}

for (var i = 0; i < array_size(indexArray); ++i) {
  for (var j= 0; j < array_size(indexArray); ++i) {
    ds_list_add(nodeArray[indexArray[i]].samePointList, nodeArray[indexArray[j]]);
  }
}