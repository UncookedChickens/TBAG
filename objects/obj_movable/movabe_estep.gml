var h, v, co, sl;

//Add to the counters, then get the h and v (pixels to move this step) from them.
hc += hor_speed;
vc += ver_speed;
h = round(hc);
v = round(vc);
hc -= h;
vc -= v;

//This loop will move the object based on hspd.  The object will never
//actually collide with a floor object, because this loop (and the next one for vspd)
//will always position it right next to them without overlapping.  If the
//object collides with a wall, it will call one of two events:
// User Event 0 - if the collision is horizontal
// User Event 1 - if the collision is vertical
co = false;
sl = false;
repeat (abs(h))
{
    if (place_meeting(x + sign(h), y, ot))
    {
        if (!place_meeting(x + sign(h), y - 1, ot))
        {
            //Running up slopes
            y -= 1;
            x += sign(h);
            sl = true;
        }
        else
        {
            //Hit a wall
            co = true;
            break;
        }
    }
    else
    {
        if (og)
        {
            if (!place_meeting(x + sign(h), y + 1, ot) && place_meeting(x + sign(h), y + 2, ot))
                y += 1;
        }
        x += sign(h);
    }

}

if (co)
    event_perform(ev_other, ev_user0);

if (sl)
    hor_speed = ap(hor_speed, 0, SS);

co = false;
repeat (abs(v))
{
    if (ver_speed <= 0)
    {
        if (place_meeting( x, y + sign(v), ot))
        {
            co = true;
            break;
        }
        else
            y += sign(v);
    }
    else if (cb())
    {
        co = true;
        break;
    }
    else
        y += sign(v);

}

if (co)
    event_perform( ev_other, ev_user1 );
