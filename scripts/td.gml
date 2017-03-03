// Text_Destroy() || Text_Destroy.gml
// Create a temporary variable for setting which line is being edited
// Checks if there is a text object directly below your current cursor position
if(instance_exists(pc[i+1,j])){
    pc[i,j] = instance_create(j*7,i*8,ot);
    pc[i,j].image_index = pc[i+1,j].image_index;
    mp[i] += 1;
    mp[i+1] -= 1;
    with(pc[i+1,j]){
        instance_destroy();
    }

}
