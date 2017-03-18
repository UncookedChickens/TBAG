//This script should be called every time a gameplay room starts
//Here you can do things like load background/foregrounds, save the game,
//set the room speed, change the music, create debug objects, etc. and
//know that this script will fire at every new room the player enters.

room_caption = "Grandma Engine - v" + string( __grandmaEngineVer );

instance_create(0,0,obj_debug);
