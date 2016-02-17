///scr_dequip();
var slot = argument0;
for(i = 0;i<maxItems;i++){
if(Equiped != ""){
switch(Equiped){



case "staff":if(global.IN_slot[i] != -1){if(Equiped == "")Equiped = "staff";}else{Equiped = "";Equiped = "staff";scr_Item_setter(4);scr_Item_remove_slot(slot)}break;


case "Sword":if(global.IN_slot[i] != -1){if(Equiped == "")Equiped = "staff";}else{Equiped = "";Equiped = "Sword";scr_Item_setter(2);scr_Item_remove_slot(slot);}break;


case "Ball":if(global.IN_slot[i] != -1){if(Equiped == "")Equiped = "staff";}else{Equiped = "";Equiped = "Ball";scr_Item_setter(3);scr_Item_remove_slot(slot);}break;





}



}

 
}




