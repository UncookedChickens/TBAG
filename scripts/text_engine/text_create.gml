// Text_Create() || Text_Create.gml
// Creates a local variable that takes an integer sent from wherever you called this script from
// This variable is which image index the new text object will have [Should be whatever character you typed]
var spr_ind, img_ind, cur_pos, cur_line;

// This simple variable assignment allows for this script to recieve an integer from wherever you're calling this script
spr_ind=argument0;
img_ind=argument1;
cur_pos=argument2;
cur_line=argument3;

// Creates the new text object where your cursor currently is, then sets the image index to the value you sent
otext[cur_line,cur_pos] = instance_create(cur_pos*7,cur_line*8,obj_text);
otext[cur_line,cur_pos].sprite_index = spr_ind;
otext[cur_line,cur_pos].image_index = img_ind;

// Move the cursor infront of the new text object[pc[cursor_line,cursor_pos]], then adds to the maximum position
cursor_pos += 1;
max_position[current_line] += 1;
