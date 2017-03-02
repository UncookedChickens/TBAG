if(instance_exists(pc[i+1,j])){
    pc[i,j] = instance_create(j*7,i*8,oc);
    pc[i,j].image_index = pc[i+1,j].image_index;
    mp[i] += 1;
    if(i+1<=ml){
        mp[i+1] -= 1;
    }
    with(pc[i+1,j]){
        instance_destroy();
    }
                    
}
