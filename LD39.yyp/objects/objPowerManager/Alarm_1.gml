/// @description Actually change power
// You can write your code in this editor


var change = clamp(powerDifference, -2, 2);

totalPower += change;
powerDifference -= change;

if (totalPower < 20) 
	totalPower = 20;

//Only allow more fluctuations if power and brightness are both stable
if (powerDifference == 0 && brightness == 1.0) {
  alarm[0] = irandom_range(1, 5) * room_speed;  
} else {
  alarm[1] = room_speed / 2;  
}