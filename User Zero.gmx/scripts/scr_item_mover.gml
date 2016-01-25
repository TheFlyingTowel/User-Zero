///scr_item_mover(item,slot);
if(global.IN_slot[argument[1]] == -1){//Check if empty

global.IN_slot[argument[1]] = argument[0];
return(1);
}
return(0);
