//Load Game
if (file_exists ("save.tl")){

ini_open ("save.tl");
//Room Data
var LoadedRoom = ini_read_real ("Save","room",Rm_Mystical_Garden );

//Player data
var obj_player_x = ini_read_real("Player","Player.x",0);
var obj_player_y = ini_read_real("Player","Player.y",0);
var player_face = ini_read_real("Player","face",0);
//Ally
if(instance_exists(obj_ally_Claire))
{
var ally_x = ini_read_real("Ally","Ally.x",0);
var ally_y = ini_read_real("Ally","Ally.y",0);
var ally_sprite = ini_read_real("Ally","Sprite",0);
var ally_depth = ini_read_real("Ally","Depth",0);
}
//Inventory
var inventory_0 = ini_read_real("Inventory","Slot[0]",0);
var inventory_1 = ini_read_real("Inventory","Slot[1]",1);
var inventory_2 = ini_read_real("Inventory","Slot[2]",2);
var inventory_3 = ini_read_real("Inventory","Slot[3]",3);
var inventory_4 = ini_read_real("Inventory","Slot[4]",4);
ini_close();

//load room data
room_goto(LoadedRoom);
//load player data
obj_player.x = obj_player_x;
obj_player.y = obj_player_y;
obj_player.face = player_face;
//load Ally data
if(instance_exists(obj_ally_Claire))
{
obj_ally_Claire.x = ally_x;
obj_ally_Claire.y = ally_y;
obj_ally_Claire.sprite_index = ally_sprite;
obj_ally_Claire.depth = ally_depth;
}
//load inventory data
global.IN_slot[0] = inventory_0;
global.IN_slot[1] = inventory_1;
global.IN_slot[2] = inventory_2;
global.IN_slot[3] = inventory_3;
global.IN_slot[4] = inventory_4;


}
else 
{
//Do Nothing 
}