///for layer shader beign
if (event_type == ev_draw) {
  if (event_number == 0) {
  ///Set for shader
    var uID = shader_get_uniform(shaderLights, "multiplier");
    var mult = objPowerManager.brightness; //(objPowerManager.totalPower/100.0);// + objPowerManager.powerDifference)/100.0;        
    shader_set(shaderLights);
    shader_set_uniform_f(uID, mult);
  }
}