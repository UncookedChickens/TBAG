draw_self();

if(hspeed!=0){
    draw_sprite(sw,image_index,x,y);
}
else{
    draw_sprite(sc,image_index,x,y);
}

if(vpseed!=0){
    draw_sprite(sc,image_index,x,y);
}
else{
	draw_sprite(sw,image_index,x,y);
}
