///@func scrAddListToNodeCAdjacent(listToAdd, destList)
///@desc Adds the first parameter list to the second parameter list counter clockwise adjacent list
///@param {ds_list} listToAdd list of objWalkPoints to add
///@param {ds_list} destList list of objWalkPoints to add to

var listToAdd = argument0;
var destList = argument1;

for (var i = 0; i < ds_list_size(destList); ++i) {
  scrAddListToNodesCCAdjacent(listToAdd, destList[| j]);  
}