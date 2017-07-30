/// @description Insert description here
// You can write your code in this editor



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

var extraBoxes = 0;
if (totalBoxes < usedBoxes) {
  var extraBoxes = usedBoxes - totalBoxes;
  usedBoxes = totalBoxes;
}
  

totalBoxes -= usedBoxes;

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, color, 1);

var color2 = c_white;

if (isInDanger) {
  color2 = c_red;
}

for (var i = 0; i < usedBoxes; ++i) {
  draw_sprite_ext(sprPowerFull, 0, x + 30 + 10 * boxCount, y, 1, 1, 0, color2, 1);
  boxCount += 1;
}


for (var i = 0; i < totalBoxes; ++i) {
  draw_sprite_ext(sprPowerEmpty, 0, x + 30 + 10 * boxCount, y, 1, 1, 0, color2, 1);
  boxCount += 1;
}

if (isInDanger) {
  if (alarm[0] <= 0) {
    alarm[0] = room_speed / 3;
  }
  for (var i = 0; i < extraBoxes; ++i) {
  
    var sprite = sprPowerEmpty;
    if (color == c_white) {
      sprite = sprPowerFull;
    }
    draw_sprite_ext(sprite, 0, x + 30 + 10 * boxCount, y, 1, 1, 0, c_red, 1);
    boxCount += 1;
  }  
}



if (isPowerDecreasing) {
  draw_sprite(sprPowerDecreasing, 0, x + 40, y + 15);
}

if (isPowerIncreasing) {
  draw_sprite(sprPowerIncreasing, 0, x + 40 + 10 * boxCount, y - 15);
}