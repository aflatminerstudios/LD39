/// @description scrPlayRandomCabinetSound()

var randomSound = choose(sndCloudMonkeyCoinPickup, sndDisorientedUFO, sndDoubleBounceBeep, sndFallingZillo, sndFlameFired, sndFlameFired2, sndFlameFired3, sndGlassLaserManRicochet, sndGlassLaserManRicochet2, sndGlassLaserManRicochet3, sndHighShortAsteroidsShot, sndLittleLaserShot, sndLittleLaserShot2, sndLittleLaserShot3, sndLowShortAsteroidsShot, sndLowShortAsteroidsShot2, sndPassingGrungyUFO, sndPowerDown, sndPowerUp, sndRandomBleps, sndSmoothGameOverFall, sndSpringBoxBounce);

audio_play_sound_at(randomSound, irandom_range(-room_width/2, room_width*2), irandom_range(-room_height/2, room_height*2), 50, room_width/2, 10000, 1, false, 1);
