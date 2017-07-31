/// @description Sets up variables


totalPower = 100;
usedPower = 0;

powerDifference = 0;
brightness = 1.0;

minTime = 2;
maxTime = 8;


isLowPower = false;
isInDanger = false;

//fluctuate in alarm[0]
alarm[0] = irandom_range(minTime, maxTime) * room_speed;