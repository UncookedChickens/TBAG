// initialise all pre-made tags for the FTC // init_tag_defs()

for(i=0;i<100;i+=1) {
	global.tag[0,i] = "<>";
	global.tag[1,i] = "</>";
	global.def[i,i] = "{}";
}

// {n} is the number the user must enter at that position
// {s} is the string the user must enter at that position

global.tag[0,0] = "<map>";
global.tag[1,0] = "</map>";

global.tag[0,1] = "<line:{n}>";
global.tag[1,1] = "</line:{n}>";

global.tag[0,2] = "<space:{n}>";
global.tag[1,2] = "</space:{n}>";

global.tag[0,3] = "<rm_width:{s}/>";

global.tag[0,4] = "<new_map:{s}/>";
global.tag[0,5] = "<load_map:{s}/>";
global.tag[0,5] = "<mods:{s}/>";
global.tag[0,6] = "<options:{s}/>";
global.tag[0,5] = "<esc:{s}/>";

// These are all the definitions of the input positions in the tags above

global.def[0,0] = "-";
global.def[0,1] = " ";
global.def[0,2] = ".";
global.def[0,3] = "=";
global.def[0,4] = "_";
global.def[0,5] = "\";
global.def[0,6] = "/";
