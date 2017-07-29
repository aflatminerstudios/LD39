/// @func scrLowPower(cabinetId)
/// @desc Put cabinet in low power mode
/// @param {id} cabinetID 

var cabinetID = argument0;

var r = random(1);
var adjust;
//50% chance bad things happen
if (r < 0.10) {
  //drops happiness to 0, the game is literally unplayable
  adjust = -1 * cabinetID.baseHappiness;
} else if (r < 0.25) {
  adjust = -0.5 * cabinetID.baseHappiness;
} else if (r < 0.50) {
  //just drops by a basic 5
  adjust = -0.05;
} else if (r < 0.70) {
  //25% chance good things happen
  adjust = 0.05;
} else if (r < 0.75) {
  //5% chance happiness doubles
  adjust = cabinetID.baseHappiness;
} else {
  //25% chance no change happens
  adjust = 0;
}

with (cabinetID) {
  lowPowerAdjustment = adjust;
  baseHappiness += lowPowerAdjustment;
}

scrToggleCabinet(cabinetID);

