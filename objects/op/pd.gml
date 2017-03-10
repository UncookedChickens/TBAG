draw_self();

if(speed!=0){
    draw_sprite(sc,image_index,x,y);
}
else{
    draw_sprite(sw,0,x,y);
}

if(vpseed!=0){
    draw_sprite(sw,image_index,x,y);
}
else{
	draw_sprite(sc,image_index,x,y);
}
