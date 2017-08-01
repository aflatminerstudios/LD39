/// @func scrToggleCabinet(cabinetId)
/// @desc Toggle a cabinet on/off
/// @param {id} cabinetID The id of the cabinet to toggle

var cabinetID = argument0;

with (cabinetID) {
	isPowered = !isPowered;

	if(isPowered) {
		sprite_index = onSprite;
    if (instance_number(objGameControl) > 0 && objGameControl.isSoundOn) {
			if(!audio_is_playing(sndTurnOnCabinet))
				audio_play_sound(sndTurnOnCabinet, 100, false);
		}
	} else {
		sprite_index = offSprite;
    if (instance_number(objGameControl) > 0 && objGameControl.isSoundOn) {
      if(!audio_is_playing(sndTurnOffCabinet))
				audio_play_sound(sndTurnOffCabinet, 100, false);
		}
	}
}

