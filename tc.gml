var i;

i=argument0;

pc[li,cp] = instance_create(cp*7,li*8,oc);
pc[li,cp].image_index = i;
    
if(instance_exists(pc[li,cp])){
    cp += 1;
    mp[li] += 1;
}
else{
    cp = cp;
}
