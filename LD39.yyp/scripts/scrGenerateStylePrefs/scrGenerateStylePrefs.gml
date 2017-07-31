///@func scrGenerateStylePrefs()
///@desc genereates a style prefs array and returns it

var sp;

//First, set up non-food styles

//Should add up to be equivalent to 1.0 for all
var total = (NUM_STYLES - 1) * 1.0;
var current = total;

//Sets up minimum multiplier (0.2)
for (var i = 0; i < NUM_STYLES - 1; ++i) {
  sp[i] = 0.2;
  current -= 0.2;
}

show_debug_message(string(current) + " should be 3.2");
///Randomly split between style prefs in increments of 0.05
while (current != 0) {  
  var which = irandom(NUM_STYLES - 2);
  current -= 0.05;
  sp[which] += 0.05
}

for (var i = 0; i < NUM_STYLES - 1; ++i) {
  show_debug_message("Generated " + string(sp[i]) + " for " + string(i));
}

//Sets up food to be between 3 and 5
sp[STYLE_FOOD] = 4.0 + irandom_range(-1, 1);




return sp;