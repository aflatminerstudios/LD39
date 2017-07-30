///@func scrIsActivityCabinet(activityID) 

var activityID = argument0;

if (activityID == noone || is_undefined(activityID) || !instance_exists(activityID))
  return false;

if (activityID.object_index == objCabinet || object_get_parent(activityID.object_index) == objCabinet) {
  return true;
}

return false;


