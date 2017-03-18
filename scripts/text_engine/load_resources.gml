// load resources from folders
// lr load_resources.gml || load_resources()

work_dir = working_directory;

// Load sprites from TBAG/sprites folder
//global.
//global.

// Load scripts from TBAG/scripts folder
global.smod_keys = work_dir + "\scripts\text_engine\mod_keys.gml";
global.stext_recreate = work_dir + "\scripts\text_engine\text_recreate.gml";
global.smap_init = work_dir + "\scripts\text_engine\map_init.gml";
global.smap_create = work_dir + "\scripts\text_engine\map_create.gml";

global.scheck_below = work_dir + "\scripts\platform_physics\check_below.gml";
global.smove_to_room = work_dir + "\scripts\platform_physics\move_to_room.gml";
global.sroom_init = work_dir + "\scripts\platform_physics\room_init.gml";

// Load objects from TBAG/objects folder
global.ocursor_create = work_dir + "\objects\obj_cursor\cursor_create.gml";
global.ocursor_draw = work_dir + "\objects\obj_cursor\cursor_draw.gml";
global.ocursor_step = work_dir + "\objects\obj_cursor\cursor_step.gml";

global.omovable_create = work_dir + "\objects\obj_movable\movable_create.gml";
global.omovable_bstep = work_dir + "\objects\obj_movable\movable_bstep.gml";
global.omovable_estep = work_dir + "\objects\obj_movable\movable_estep.gml";

global.oplayer_create = work_dir + "\objects\obj_player\player_create.gml";
global.oplayer_step = work_dir + "\objects\obj_player\player_step.gml";
global.oplayer_iboundary = work_dir + "\objects\obj_player\player_iboundary.gml";

global.otext_create = work_dir + "\objects\obj_text\otext_create.gml";
global.otext_step = work_dir + "\objects\obj_text\otext_step.gml";
