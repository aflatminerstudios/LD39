/// @description Deal with used power
// You can write your code in this editor

usedPower = 0;

with (objCabinet) {

	if (isPowered) {
		other.usedPower += scrGetPowerUsage(self.id);
	}

}


if (usedPower > totalPower) {
  if (usedPower > totalPower + 25) {
    //Turn them all off
    with (objCabinet) {
  		if (isPowered) {
  			scrToggleCabinet(self.id);
  		}
  	}    
    
  } else {
    if (!isLowPower) {
    //low power mode
    	with (objCabinet) {
    		if (isPowered) {
    			scrLowPower(self.id);
    		}
    	}
  	}
  }
  isLowPower = true;
} else {
  if (isLowPower) {
    with (objCabinet) {
      baseHappiness -= lowPowerAdjustment;
      lowPowerAdjustment = 0        
    }
  }
  isLowPower = false;
}


