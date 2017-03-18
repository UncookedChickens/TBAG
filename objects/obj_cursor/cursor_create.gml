// Create event // Initialise variables
// cp = cursor_pos[on the current line]
// li = current line
// sx = start_x_pos
// sy = start_y_pos
// ex = end_x_pos
// ey = end_y_pos
// ml = maximum_line
//mp[li] = maximum_cursor_pos[on_this_line]

image_speed = 0.5;
cursor_pos = 0;
current_line = 1;
start_xpos = 0;
start_ypos = 0;
end_xpos = 0;
end_ypos = 0;
max_line = 1;
max_position[0] = 0;
otext[0,0] = 0;
global.mode = 0;

for(i=0;i<100;i+=1){
    for(j=0;j<65;j+=1){
        max_position[i] = 0;
        otext[i,j] = 0;
    }

}
