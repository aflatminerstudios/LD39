///scrStopWatchingVisitor(visitorID, activityID)

var visitorID = argument0;
var activityID = argument1;

visitorID.currentActivity = noone;
visitorID.futureActivity = noone;

var target = instance_nearest(x, y, objWalkPoint);
visitorID.targetLocation[0] = target.x;
visitorID.targetLocation[1] = target.y;
visitorID.currentState = VISITOR_ENROUTE;
visitorID.timeInActivity = 0;