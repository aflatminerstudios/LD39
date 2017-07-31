/// @description Insert description here
// You can write your code in this editor

var money = 150.00;
draw_set_font(fontLarge);
draw_text(50, 50, "$" + string_format(money,0,2));


var color = c_white;
//draw hearts
var heartPosX = 448;
var heartPosY = 636;

var usedBoxes = 5;
var totalBoxes = 5;
var boxCount = 0;
for (var i = 0; i < usedBoxes; ++i) {
  draw_sprite_ext(sprHappyFull, 0, heartPosX + 30 + 10 * boxCount, heartPosY, 1, 1, 0, color, 1);
  boxCount += 1;
}


for (var i = 0; i < totalBoxes; ++i) {
  draw_sprite_ext(sprHappyEmpty, 0, heartPosX + 30 + 10 * boxCount, heartPosY, 1, 1, 0, color, 1);
  boxCount += 1;
}

//draw power
var powerPosX = 448;
var powerPosY = 688;

usedBoxes = 4;
totalBoxes = 5;
boxCount = 0;

for (var i = 0; i < usedBoxes; ++i) {
  draw_sprite_ext(sprPowerFull, 0, powerPosX + 30 + 10 * boxCount, powerPosY, 1, 1, 0, color, 1);
  boxCount += 1;
}


for (var i = 0; i < totalBoxes; ++i) {
  draw_sprite_ext(sprPowerEmpty, 0, powerPosX + 30 + 10 * boxCount, powerPosY, 1, 1, 0, color, 1);
  boxCount += 1;
}