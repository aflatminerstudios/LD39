/// @description Add money from powered game cabinets
// You can write your code in this editor
with (objCabinet) {

	if (isPowered) {
		other.money += scrGetCabinetIncome(self.id);
	}

}