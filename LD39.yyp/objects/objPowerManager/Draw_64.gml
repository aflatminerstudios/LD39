/// @description Display total and used power
// You can write your code in this editor


if (objGameControl.displayDebug) {
  var available = totalPower - usedPower;
  draw_text(room_width - 100, 50, "Power: " + string(available));
}
