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
