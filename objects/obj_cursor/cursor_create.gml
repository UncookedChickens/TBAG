// Create event // Initialise variables

// Cursor blinking speed // Variable that stores object id's

image_speed = .5;
otext[0,0] = 0;

// Cursor positioning variables // Cursor's current position
// Plus its maximum position on the current line

cursor_pos = 0;
max_position[0] = 0;

// Cursor's current line
// Plus the last line in the editor

current_line = 1;
max_line = 1;

// Where the player starts // Where the finish is

start_xpos = 0;
start_ypos = 0;
end_xpos = 0;
end_ypos = 0;

spr_ind = 0;
read_file = false;
global.map_file = "";
global.map_string[0] = "";
global.map_string_pos[0,0] = "";

global.mode = 0;
global.gamemode = true;

work_dir = working_directory;

init_key_defs();

for(i=0;i<100;i+=1){

    for(j=0;j<100;j+=1){

      	otext[i,j] = 0;
        otext[i,j].link = 0;
        max_position[i] = 0;
		global.map_string[i] = "";
        global.map_string_pos[i,j] = "";
    }

}
