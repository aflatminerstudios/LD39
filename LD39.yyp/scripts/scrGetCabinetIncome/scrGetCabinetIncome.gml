/// @func scrGetCabinetIncome(cabinetInstance)
/// @desc Toggle a cabinet on/off
/// @param {id} cabinetID The id of the cabinet to toggle

var cabinetInstance = argument0;

if(cabinetInstance != noone) {
  var moneyToGet = cabinetInstance.coinBox;
  cabinetInstance.coinBox = 0;
	return moneyToGet;
}
