///scrIsActivityVisitor(activityID)

var activityID = argument0;

if (activityID == noone)
  return false;

if (activityID.object_index == objVisitor) {
  return true;
}

return false;