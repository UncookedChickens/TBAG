var cur_pos, cur_line, action, inst_des, spr_ind, img_ind;

action = argument0;
cur_pos = argument1;
cur_line = argument2;
inst_des = argument3;
spr_ind = argument4;
img_ind = argument5;

if(action==0) {
	// Script // Destroy text_object
	// destroy_object.gml || destroy_object()

	with(inst_des){
		instance_destroy();
	}

}

else if(action==1) {
	// Create a temporary variable for setting which line is being edited
	// Checks if there is a text object directly below your current cursor position
	// Since when td.gml is used, it's always in a nested for loop, thats why there's
	// undefined variables(i and j)
	if(instance_exists(otext[line_below,cur_pos])){

		otext[cur_line,cur_pos] = instance_create(cur_pos*7,cur_line*8,obj_text);
    	otext[cur_line,cur_pos].sprite_index = otext[cur_line+1,cur_pos].sprite_index;
    	otext[cur_line,cur_pos].image_index = otext[cur_line+1,cur_pos].image_index;

    	max_position[cur_line] += 1;
    	max_position[cur_line+1] -= 1;

    	with(otext[cur_line+1,cur_pos]){
        	instance_destroy();
    	}

	}

}

else if(action==2) {
	// Text_Create() || Text_Create.gml
	// Creates a local variable that takes an integer sent from wherever you called this script from
	// This variable is which image index the new text object will have [Should be whatever character you typed]

	// This simple variable assignment allows for this script to recieve an integer from wherever you're calling this script
	// Creates the new text object where your cursor currently is, then sets the image index to the value you sent
	otext[cur_line,cur_pos] = instance_create(cur_pos*7,cur_line*8,obj_text);
	otext[cur_line,cur_pos].sprite_index = spr_ind;
	otext[cur_line,cur_pos].image_index = img_ind;

	// Move the cursor infront of the new text object[pc[cursor_line,cursor_pos]], then adds to the maximum position
	cursor_pos += 1;
	max_position[cur_line] += 1;

}
