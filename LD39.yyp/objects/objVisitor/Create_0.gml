/// @description Set up variables
// You can write your code in this editor



// Happiness goes from 0.0-1.0, where 1.0 is max happiness
happiness = 0.5;

// energy goes from 0.0-1.0, where 1.0 is max energy
// energy can be affected by frustration, and (probably) goes down naturally 
//   just by being in the arcade. Food or a good game might increase energy
//   Lack of money may also decrease energy (due to boredom)
energy = 1.0;

// moneyOnHand is how much cash they have available for use in cabinets (games/snacks/etc.)
moneyOnHand = 100.0;

// currentActivity points at the object they are currently engaging with
// If it is an objCabinet, they are currently playing it
// If it is a visitor, they are currently spectating whatever that visitor
//   has as their currentActivity
currentActivity = noone;

// nextActivity is the goal they are trying to achieve currently, but are not there yet
nextActivity = noone;

// Indicates the target location the visitor wants to go to, if they do not have a currentActivity
// represents the perceived location of nextActivity if the person knows it
// Could be an empty location if they are just milling about
nextLocation[0] = room_width/2;
nextLocation[1] = room_height/2;