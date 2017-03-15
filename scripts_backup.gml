#define sg
execute_file(working_directory + "\scripts\pp\sg.gml");

#define si
execute_file(working_directory + "\scripts\pp\si.gml");

#define cb
execute_file(working_directory + "\scripts\pp\cb.gml");

#define ap
/*
APPROACH
0 - start point
1 - end point
2 - max change

Returns 0 shifted toward 1 by 2, without crossing 0.
Note that if argument2 is negative, you will move AWAY from 0.
Ex:
approach( 5, 0, 2 )     = 3
approach( -5, 0, 2 )    = -3
approach( 1, 0, 1 )     = 0
approach( 1, 0, 2 )     = 0
*/

if ( argument0 < argument1 )
    return min( argument0+argument2, argument1 ); 
else
    return max( argument0-argument2, argument1 );
#define mk
execute_file(working_directory + "\scripts\te\mk.gml");

#define tc
// Text_Create() || Text_Create.gml
// Creates a local variable that takes an integer sent from wherever you called this script from
// This variable is which image index the new text object will have [Should be whatever character you typed][line 3]
var i, j;

// This simple variable assignment allows for this script to recieve an integer from wherever you're calling this script[line 6]
i=argument0;
j=argument1;

// Creates the new text object where your cursor currently is[line 9], then sets the image index to the value you sent[line 10]
pc[li,cp] = instance_create(cp*7,li*8,ot);
pc[li,cp].sprite_index = i;
pc[li,cp].image_index = j;

// Move the cursor infront of the new text object[pc[li,cp]][line 14], then adds to the maximum position[line 15]
cp += 1;
mp[li] += 1;


#define td
execute_file(working_directory + "\scripts\te\td.gml");

#define dt
// Script // Destroy text_object
// destroy_object.gml || destroy_object()

var di;

di=argument0;

with(di){
    instance_destroy();
}

#define kp
// Makes the function in the code look better and simplifies the line so it's easier to read
// keyboard_check_pressed.gml || keyboard_check_pressed()
// ck = check_key_pressed

var ck;

ck=argument0;

keyboard_check_pressed(ck);

#define lr
execute_file(working_directory + "\scripts\lr.gml");

