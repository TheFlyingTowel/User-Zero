///Save Game 
if (file_exists ("save.tl")) file_delete ("save.tl");
ini_open ("save.tl");
//room
var SaveRoom = room;
ini_write_real ("save","room",SaveRoom);


//player data
var player_x = obj_player.x;
var player_y = obj_player.y;
var player_face = obj_player.face;
ini_write_real("Player","face",player_face);
ini_write_real("Player","Player.x",player_x);
ini_write_real("Player","Player.y",player_y);


//Alley data
if(instance_exists(obj_ally_Claire))
{
var ally_x = obj_ally_Claire.x;
var ally_y = obj_ally_Claire.y;
var ally_sprite = obj_ally_Claire.sprite_index;
var ally_depth = obj_ally_Claire.depth;
ini_write_real("Ally","Ally.x",ally_x);
ini_write_real("Ally","Ally.y",ally_y);
ini_write_real("Ally","Sprite",ally_sprite);
ini_write_real("Ally","Depth",ally_depth);
}
//inventory
var inventory_0 =  global.IN_slot[0];
var inventory_1 =  global.IN_slot[1];
var inventory_2 =  global.IN_slot[2];
var inventory_3 =  global.IN_slot[3];
var inventory_4 =  global.IN_slot[4];
//var inventory_5 =  global.IN_slot[5];

ini_write_real("Inventory","Slot[0]",inventory_0);
ini_write_real("Inventory","Slot[1]",inventory_1);
ini_write_real("Inventory","Slot[2]",inventory_2);
ini_write_real("Inventory","Slot[3]",inventory_3);
ini_write_real("Inventory","Slot[4]",inventory_4);


ini_close();


//var SaveFile = file_text_open_write("save.tl");