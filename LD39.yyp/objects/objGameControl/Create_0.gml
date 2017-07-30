/// @description Sets up base variables
// You can write your code in this editor

randomise();

timeStep = room_speed * 12;
timeStepsInDay = 2;

scrCreateMacros();

instancesID = layer_get_id("Instances");
layer_script_begin(instancesID, scrLayerShaderStart);
layer_script_end(instancesID, scrLayerShaderEnd);


showCircuits = false;

//For sounds
audio_group_load(soundEffects);


//For debugging
displayDebug = false;
isSoundOn = false;

draw_set_font(fontNormal);