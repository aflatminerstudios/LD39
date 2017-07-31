/// @description Insert description here
// You can write your code in this editor

var maxHappy = 100;
var averageHappy = 0;
var visitorCount = 0;
var boxCount = 0;

with (objVisitor) {
  averageHappy += happiness;  
  visitorCount++;
}

averageHappy /= visitorCount;
averageHappy *= 100;



var usedBoxes = 0;
if (averageHappy >= 10) {
  usedBoxes = floor((averageHappy)/10);
}

var totalBoxes = floor((maxHappy)/10);
if (maxHappy % 10 != 0) {
  totalBoxes += 1;
}

totalBoxes -= usedBoxes;

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, color, 1);



for (var i = 0; i < usedBoxes; ++i) {
  draw_sprite_ext(sprPowerFull, 0, x + 30 + 10 * boxCount, y, 1, 1, 0, color, 1);
  boxCount += 1;
}


for (var i = 0; i < totalBoxes; ++i) {
  draw_sprite_ext(sprPowerEmpty, 0, x + 30 + 10 * boxCount, y, 1, 1, 0, color, 1);
  boxCount += 1;
}

