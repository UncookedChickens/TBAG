var s, i, j, z;
s=argument0;
i=argument1;
j=argument2;

for(l=0;l<string_length(s);l+=1){
    z = string_pos(s,l);

    if(s>47 && s<58){
        tc(cl,z);
    }

    if(s>64 && s<91){
        tc(cs,z);
    }

    if(s>96 && s<123){
        tc(cs,z);
    }

}
