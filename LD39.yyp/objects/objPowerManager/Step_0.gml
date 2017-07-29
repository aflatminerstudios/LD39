/// @description Deal with used power
// You can write your code in this editor

usedPower = 0;

with (objCabinet) {

	if (isPowered) {
		other.usedPower += scrGetPowerUsage(self.id);
	}

}


if (usedPower > totalPower) {
	show_message("TOO MUCH POWER!");
	
	with (objCabinet) {
		isPowered = false;
	}
	
}
