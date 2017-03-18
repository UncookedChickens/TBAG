//Here the player is leaving the room, so the mapX/mapY must
//be changed and the player repositioned, then we can go to
//the new room.

/*if x <= 0 {
    mapX -= 1;
    x = 639;
    x_counter = 0;
    sg();
} else if x >= 640 {
    mapX += 1;
    x = 1;
    x_counter = 0;
    sg();
} else if y <= 0 {
    mapY -= 1;
    y = 479;
    y_counter = 0;
    sg();
} else if y >= 480 {
    mapY += 1;
    y = 1;
    y_counter = 0;
    sg();
}