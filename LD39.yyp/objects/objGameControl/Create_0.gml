/// @description Sets up base variables
// You can write your code in this editor

randomise();

timeStep = room_speed * 2;
timeStepsInDay = 12;

scrCreateMacros();

instancesID = layer_get_id("Instances");
layer_script_begin(instancesID, scrLayerShaderStart);
layer_script_end(instancesID, scrLayerShaderEnd);


showCircuits = false;

//For sounds
audio_group_load(soundEffects);
audio_group_set_gain(soundEffects, 0, 1);
audio_group_set_gain(audiogroup_default, 0, 1);

//For debugging
displayDebug = false;
isSoundOn = false;
isAmbienceOn = true;

draw_set_font(fontNormal);