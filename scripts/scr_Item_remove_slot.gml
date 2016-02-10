///scr_Item_remove_slot(item[id],slot;


if(global.IN_slot[argument[1]] == argument[0]){
     item_string[argument[1]] = "";
     global.IN_slot[argument[1]] = -1;
     return(1);
}

return(0);
