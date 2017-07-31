/// @description Deal with used power
// You can write your code in this editor

usedPower = 0;

with (objCabinet) {

	if (isPowered) {
		other.usedPower += scrGetPowerUsage(self.id);
	}

}

if (objNeonSign.isPowered) {
  usedPower += objNeonSign.powerUsage;
}

if (usedPower > totalPower) {
  
  if (!isInDanger) {
    alarm[3] = room_speed * 2;
  }
  
  if ((usedPower > totalPower + 25) && isLowPower && alarm[3] <= 0) {
    alarm[3] = 1;
  }
  objPowerMeter.isInDanger = true;
  isInDanger = true;

} else {
  if (isLowPower) {
    with (objCabinet) {
      baseHappiness -= lowPowerAdjustment;
      lowPowerAdjustment = 0        
    }
  }
  
  isInDanger = false
  objPowerMeter.isInDanger = false;
  alarm[3] = -1;
  isLowPower = false;
}


