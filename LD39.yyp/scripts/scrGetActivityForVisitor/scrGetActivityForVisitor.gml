///scrGetActivity(visitorID)

var visitorID = argument0;

var aCabinet = scrGetRandomCabinet();
var randomMax = 1.15;


//Get first random variable (might need more later)
var r = random(randomMax);

if (aCabinet != noone) {
  if (aCabinet.isPowered) {
    //Is the user specifically feeling this particular cabinet
    if (r < visitorID.stylePrefs[aCabinet.style]) {
      if (aCabinet.isBeingPlayed) {
        //Aww, someone else is playing, user might want to give up or might want to watch
        r = random(randomMax);
        if (r < visitorID.stylePrefs[aCabinet.style]) {
          scrSetTargetCabinetWatchForVisitor(aCabinet, visitorID);
          return; 
        }
      } else {
        //Hooray, user can play!
        scrSetTargetCabinetForVisitor(aCabinet, visitorID);
        return;
      }
    }
    r = random(randomMax);
  }
}

aCabinet = scrGetRandomPoweredCabinet();

if (aCabinet != noone) {
  //Is the user specifically feeling this particular cabinet
  if (r < visitorID.stylePrefs[aCabinet.style]) {
    if (aCabinet.isBeingPlayed) {
      //Aww, someone else is playing, user might want to give up or might want to watch
      r = random(randomMax);
      if (r < visitorID.stylePrefs[aCabinet.style]) {
        scrSetTargetCabinetWatchForVisitor(aCabinet, visitorID);
        return;  
      }
    } else {
      //Hooray, user can play!
      scrSetTargetCabinetForVisitor(aCabinet, visitorID);
      return;
    }
    r = random(randomMax);
  }
}

scrFindCabinetToPlayForVisitor(visitorID);
