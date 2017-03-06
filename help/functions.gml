// Common_functions.gml

// Creates an instance of an object[obj]
// Puts it at the x and y coordinates provided in the function
instance_create(x,y,obj);

// Draws a string[str] at the x and y coordinates
draw_text(x,y,str);

// In the draw event, if you're drawing something and you want the object drawing stuff to also make itself visible, this is how you do that
draw_self();

// Draws the specified sprite[spr] and the specified subimage of that sprite[sub] at the x and y coordinates
draw_sprite(spr,sub,x,y);

// Executes the file specified
// to execute a file in the same folder as the program:
// execute_file(working_directory + "\file.filetype");
execute_file(str);

// Obvious
game_restart();
game_end();
game_save(filename);
game_load(filename);

// Destroys the object in which this line of code resides
// Or to destroy another object from this object:
with(object_example){
    instance_destroy();
}
instance_destroy();

// Checks if an object exists
// Usualy used like this
if(instance_exists(obj)){
    //do something
}
instance_exists(obj);

// Checks for an object[obj] that is closest to the specified coordinates[x and y]
instance_nearest(x,y,obj);
