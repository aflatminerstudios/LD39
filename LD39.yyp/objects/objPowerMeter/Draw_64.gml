/// @description Insert description here
// You can write your code in this editor

draw_self();

var boxCount = 0;

var totalPower = objPowerManager.totalPower;
var usedPower = objPowerManager.usedPower;

var usedBoxes = 0;
if (usedPower >= 10) {
  usedBoxes = floor((usedPower)/10);
}

var totalBoxes = floor((totalPower)/10);
if (totalPower % 10 != 0) {
  totalBoxes += 1;
}

if (totalBoxes < usedBoxes) 
  usedBoxes = totalBoxes;
  

totalBoxes -= usedBoxes;



for (var i = 0; i < usedBoxes; ++i) {
  draw_sprite(sprPowerFull, 0, x + 30 + 10 * boxCount, y);
  boxCount += 1;
}

for (var i = 0; i < totalBoxes; ++i) {
  draw_sprite(sprPowerEmpty, 0, x + 30 + 10 * boxCount, y);
  boxCount += 1;
}

if (isPowerDecreasing) {
  draw_sprite(sprPowerDecreasing, 0, x + 40, y + 15);
}

if (isPowerIncreasing) {
  draw_sprite(sprPowerIncreasing, 0, x + 40 + 10 * boxCount, y - 15);
}