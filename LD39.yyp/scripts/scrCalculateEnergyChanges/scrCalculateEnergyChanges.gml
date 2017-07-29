///@func scrCalculateEnduranceChanges(visitorID)

var visitorID = argument0;

var amountToChange = -0.05;

with (visitorID) {
  if (currentState = VISITOR_IDLE) {
  //Being idle is BORING
    amountToChange -= 0.05;
  } else if (currentState = VISITOR_ACTIVE) {
    if (scrIsActivityCabinet(currentActivity)) {
      //If currently playing, you don't lose energy as fast
      amountToChange += 0.025;
    }
  } else if (currentState = VISITOR_WAITING) {
  
  } else if (currentState = VISITOR_ENROUTE) {
  
  }
  
  
  //Now adjust how much you want to leave based on happiness
  if (happiness < 50) {    
    var c = (50 - happiness) / 50;
    amountToChange = -0.2 * c * c * c * c + amountToChange;
  } else {
    var c = (happiness - 50) / 50;
    amountToChange = 0.2 * c * c * c * c + amountToChange;
  }
  
  //If you have no money, you are more likely to want to leave quickly
  if (moneyOnHand < 1) {
    amountToChange -= 0.1;
  }
  
  
  energy = clamp(energy + amountToChange, 0.0, 1.0);
  
}