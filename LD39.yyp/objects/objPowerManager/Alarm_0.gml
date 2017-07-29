/// @description Randomly changes total amount of power
// You can write your code in this editor

powerDifference += irandom_range(-20, 20);

//change brightness if power is changing
if (powerDifference > 0) {
  brightness = 1.50;
} else if (powerDifference < 0) {
  brightness = 0.50;
}


//alarm for changing power
alarm[1] = room_speed;

//alarm for brightness
alarm[2] = room_speed;