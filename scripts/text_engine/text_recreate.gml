// Text_Destroy() || Text_Destroy.gml
// Create a temporary variable for setting which line is being edited
// Checks if there is a text object directly below your current cursor position
// Since when td.gml is used, it's always in a nested for loop, thats why there's
// undefined variables(i and j)
line_below = i+1;

if(instance_exists(otext[line_below,j])){
    otext[i,j] = instance_create(j*7,i*8,obj_text);
    otext[i,j].sprite_index = otext[line_below,j].sprite_index;
    otext[i,j].image_index = otext[line_below,j].image_index;
    max_position[i] += 1;
    max_position[line_below] -= 1;
    with(otext[line_below,j]){
        instance_destroy();
    }

}
