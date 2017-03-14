// Text_Destroy() || Text_Destroy.gml
// Create a temporary variable for setting which line is being edited
// Checks if there is a text object directly below your current cursor position
var l;
l = i+1;

if(instance_exists(pc[l,j])){
    pc[i,j] = instance_create(j*7,i*8,ot);
    pc[i,j].sprite_index = pc[l,j].sprite_index;
    pc[i,j].image_index = pc[l,j].image_index;
    mp[i] += 1;
    mp[l] -= 1;
    with(pc[l,j]){
        instance_destroy();
    }

}
