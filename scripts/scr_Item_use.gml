var slot = argument[0];
var item = argument[1];
switch(item){
case "potion":
var use;
use = scr_slot_item_check(slot,0);
if(use == 1){
encounter_meater += 0.1;
scr_Item_remove_slot(0,slot);
break;
}


case "heal":
use = scr_slot_item_check(slot,1);
if(use == 1){scr_Item_remove_slot(1,slot);
break;
}

case "sword":
use = scr_slot_item_check(slot,2);
if(use == 1){scr_Item_remove_slot(2,slot);
break;
}
case "???":
use = scr_slot_item_check(slot,3);
if(use == 1){scr_Item_remove_slot(3,slot);
break;
}
case "Wooden Staff":
use = scr_slot_item_check(slot,4);
if(use == 1){scr_Item_remove_slot(4,slot);
break;
}

}


