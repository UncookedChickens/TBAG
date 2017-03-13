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
cp = 0;
li = 1;
sx = 0;
sy = 0;
ex = 0;
ey = 0;
ml = 1;
mp[0] = 0;
tp[0] = 0;
pc[0,0] = 0;
global.md = 0;

for(i=0;i<100;i+=1){
    for(j=0;j<37;j+=1){
        mp[i] = 0;
		tp[i] = 0;
        pc[i,j] = 0;
    }

}
