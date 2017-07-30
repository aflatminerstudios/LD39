/// @description Randomly changes total amount of power
// You can write your code in this editor

powerDifference += irandom_range(-30, -1);

//change brightness if power is changing
if (powerDifference > 0) {
  brightness = 1.50;
  objPowerMeter.isPowerIncreasing = true;
} else if (powerDifference < 0) {
  brightness = 0.50;
  objPowerMeter.isPowerDecreasing = true;
  
  if (objOpenSign.alarm[0] <= 0)
    objOpenSign.alarm[0] = 1;
  
}




//alarm for changing power
alarm[1] = room_speed;

//alarm for brightness
alarm[2] = room_speed / 2;