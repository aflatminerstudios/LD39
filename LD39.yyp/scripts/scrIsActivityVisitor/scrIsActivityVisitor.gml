///scrIsActivityVisitor(activityID)

var activityID = argument0;

if (activityID == noone || is_undefined(activityID) || !instance_exists(activityID))
  return false;

if (activityID.object_index == objVisitor) {
  return true;
}

return false;