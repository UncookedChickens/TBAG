//This object will never actually be instantiated - it's just
//a parent for all objects which will use the custom movement
//system.

SS = 0.5;     //Slow down while climbing slopes

//This variables hold the actual speed the object is travelling at
hor_speed = 0;
ver_speed = 0;

//These variables have their respective speeds added to them at each
//step.  The object is moved based on these rounded, but the un-used
//fraction of a pixel is saved for next step, so objects with a
//speed less than 1 will still gradually move.
hc = 0;
vc = 0;

//This variables holds whether the object is sitting on solid ground.
on_ground = false;
