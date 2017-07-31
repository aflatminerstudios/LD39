/// @description Visitor leaves
// You can write your code in this editor

//show_debug_message("Visitor " + string(self.id) + " should be leaving now.");

targetNode = noone;
nextNode = noone;

//Make game stop playing
if (currentActivity != noone) {
  if (scrIsActivityCabinet(currentActivity)) {
    currentActivity.isBeingPlayed = false;
    if (currentActivity.isPowered) {
      currentActivity.sprite_index = currentActivity.onSprite;
      currentActivity.image_index = 0;
    } else {
  currentActivity.sprite_index = currentActivity.offSprite;
      currentActivity.image_index = 0;    
    }
  }
}

currentState = VISITOR_LEAVING;
energy = 0;