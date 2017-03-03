// Text_Destroy() || Text_Destroy.gml
// Create a temporary variable for setting which line is being edited
var l;

l=argument0;

// Checks if there is a text object directly below your current cursor position
if(instance_exists(pc[i+l,j])){
    pc[i-1,j] = instance_create(j*7,i*8,oc);
    pc[i-1,j].image_index = pc[i+l,j].image_index;
    mp[i-1] += 1;
    if(i+l<=ml){
        mp[i+l] -= 1;
    }
    with(pc[i+l,j]){
        instance_destroy();
    }
                    
}
