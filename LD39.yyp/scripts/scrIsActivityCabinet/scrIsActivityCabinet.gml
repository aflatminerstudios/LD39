///@func scrIsActivityCabinet(activityID) 

var activityID = argument0;

if (activityID.object_index == objCabinet || object_get_parent(activityID.object_index) == objCabinet) {
  return true;
}

return false;


