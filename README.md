# TBAG
<b>T</b>ext <b>B</b>ased <b>A</b>dventure <b>G</b>ame <br>

## Objects, scripts, and variables with lengthened names
oc = obj_cursor <br>
ot = obj_text_symbols <br>
op = obj_player <br>
om = obj_moveable <br><br>

mk = scr_modifier_keys() <br>
lr = scr_load_resources() <br>
td = scr_text_destroy() <br>
tc = scr_text_recreate() <br><br>

## Sample code
```gml
if(cursor_pos=max_position[current_line] && current_line<max_line && current_line>0){
  // Action code goes in here
}
```

## Completion list
- [x] Tab button switches mode between editing level and testing level
- [ ] Complete text engine[be able to type any character on the keyboard without problems]
- [ ] Reduce the amount of internal resources to the very minimum possible
- [ ] Fully integrate new platformer engine
- [ ] Character customization -- be able to change the color of your character

## Preview of the game in editor mode
![Screenshot of game](https://github.com/UncookedChickens/uncookedchickens.github.io/blob/master/img/TBAG_splash.png?raw=true)
