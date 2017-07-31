/// @description Set up variables
// You can write your code in this editor
#macro VISITOR_IDLE 1
#macro VISITOR_ACTIVE 2
#macro VISITOR_WAITING 4
#macro VISITOR_OFFPATH 5
#macro VISITOR_LEAVING 6
#macro VISITOR_ENROUTE 8

walkingSpeed = 3.0;

// visitor states are VISITOR_IDLE, VISITOR_ACTIVE, VISITOR_WAITING, VISITOR_ENROUTE
currentState = VISITOR_IDLE;

// currentActivity points at the object they are currently engaging with
// If it is an objCabinet, they are currently playing it
// If it is a visitor, they are currently spectating whatever that visitor
//   has as their currentActivity
currentActivity = noone;

// futureActivity is the goal they are trying to achieve currently, but are not there yet
futureActivity = noone;

// Indicates the target location the visitor wants to go to, if they do not have a currentActivity
// represents the perceived location of futureActivity if the person knows it
// Could be an empty location if they are just milling about
targetLocation[0] = room_width/2;
targetLocation[1] = room_height/2;
targetNode = noone;
nextNode = noone;
//
whichDir = 0;

// Happiness goes from 0.0-1.0, where 1.0 is max happiness
happiness = 0.5;

// energy goes from 0.0-1.0, where 1.0 is max energy
// energy can be affected by frustration, and (probably) goes down naturally 
//   just by being in the arcade. Food or a good game might increase energy
//   Lack of money may also decrease energy (due to boredom)
energy = 1.0;

// moneyOnHand is how much cash they have available for use in cabinets (games/snacks/etc.)
moneyOnHand = 100.0;


//Sets up how much a particular visitor likes each style. All the same for now.
for (var i = 0; i < NUM_STYLES; ++i) {
  stylePrefs[i] = 1.0;
}
stylePrefs[STYLE_FOOD] = 4.0;

//Number of steps user has been doing current activity, used to help decide if they quit
timeInActivity = 0;

isWalking = false;
isPlaying = false;

//Calculate endurance every time step
alarm[0] = objGameControl.timeStep;


///Sprite list

spriteStatic = sprVisitor;
spritePlaying = sprVisitor;
spriteWalkingNW = sprVisitor;
spriteWalkingNE = sprVisitor;
spriteWalkingSE = sprVisitor;
spriteWalkingSW = sprVisitor;




