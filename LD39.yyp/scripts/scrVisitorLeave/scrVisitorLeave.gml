///@func scrVisitorLeave(visitorID)
///@desc Makes visitor leave arcade
///@param visitorID visitor to leave

var visitorID = argument0;

with (visitorID) {
//Gets target node if they don't have it yet
  if (targetNode == noone) {
    targetNode = objNavControl.nodeArray[0];
  }
  
  //Gets the next node if they don't have one yet
  if (nextNode == noone) {
    nextNode = scrChooseNode(x, y);
    whichDir = scrGetDirectionToTravel(targetNode, nextNode);
  }
  motion_add(point_direction(x, y, nextNode.x, nextNode.y), walkingSpeed);
	if(speed > walkingSpeed)
		speed = walkingSpeed;
  
  //If they have reached the target node
  if (distance_to_point(targetNode.x, targetNode.y) < 5.0) {
    if (targetNode == objNavControl.exitNode) {
      targetNode = noone;
      nextNode = noone; 
      instance_destroy();
    } else {
      nextNode = objNavControl.exitNode;
      targetNode = nextNode;
    }  
  } else {
    //If they have reached the next node on their path
    if (distance_to_point(nextNode.x, nextNode.y) < 5.0) {
      nextNode = scrFindNextNodeInPath(nextNode, targetNode, whichDir);
    }
  }
  
}