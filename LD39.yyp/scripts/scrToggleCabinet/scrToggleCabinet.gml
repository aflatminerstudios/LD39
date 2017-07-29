/// @func scrToggleCabinet(cabinetId)
/// @desc Toggle a cabinet on/off
/// @param {id} cabinetID The id of the cabinet to toggle

var cabinetID = argument0;

with (cabinetID) {
	isPowered = !isPowered;

	if(isPowered) {
		sprite_index = sprCabinet;
	} else {
		sprite_index = sprCabinetOff;
	}
}

