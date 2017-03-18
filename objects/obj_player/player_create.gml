//Physics objects must call the parent object's create event
//to initialize physics variables.  Here we are calling it
//BEFORE we initialize the player's stats because obj_moveable
//also defines S_SLOPE_SLOW for itself and we want to
//overwrite the value of it with one specifically for obj_player
event_inherited();

//Here some player stats are defined (so they can be easily
//tweaked if needed).
SG = 0.3;      //Accel. due to gravity (pixels/step*step)
RA = 0.8;      //Accel. from running on ground (pixels/step*step)
RF = 0.5;      //Friction on the ground (pixels/step*step)
AA = 0.4;      //Accel. from running in the air (pixels/step*step)
AF = 0.2;      //Friction in the air (pixels/step*step)
JS = -06;
DS = -04;       //Double jump speed
MH = 4.0;        //Max horizontal speed
MV = 5.0;        //Max vertical speed
SS = 0.7;      //Decceleration while climbing slopes

//Whether the player can currently double jump
check_jump = true;   
