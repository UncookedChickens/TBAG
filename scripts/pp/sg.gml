//Loads the appropriate room, based on the current values 
//of global variables mapX and mapY.

execute_string( "room = rm_" + string( mapX ) + "_" + string( mapY ) + ";" );