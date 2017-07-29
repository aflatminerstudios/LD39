/// @description Sets up variables


totalPower = 100;
usedPower = 0;

powerDifference = 0;
brightness = 1.0;

minTime = 5;
maxTime = 15;


isLowPower = false;

//fluctuate in alarm[0]
alarm[0] = irandom_range(minTime, maxTime) * room_speed;