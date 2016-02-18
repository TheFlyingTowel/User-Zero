//scr_use_item(slot,item);
var use,item,slot;
slot = argument[0];
item  = argument[1];
use = scr_slot_item_check(slot,item);



if(use == 1){

switch(item){
//encounter_meater heal
case 0:
if(encounter_meater != max_encounter_meater){
encounter_meater += .05;
if(encounter_meater > max_encounter_meater)encounter_meater = max_encounter_meater;
}
scr_Item_remove_slot(slot);
break;


case 1:
//heal
scr_Item_remove_slot(slot);
break;

case 2:
//Sword
if(Equiped != "Sword"){
scr_dequip();
Equiped = "Sword";
scr_Item_remove_slot(slot);

}
break;

case 3:
//Ball
if(Equiped != "Ball"){
scr_dequip();
Equiped = "Ball";
scr_Item_remove_slot(slot);
}
break;

case 4:
//Staff
if(Equiped != "staff"){
scr_dequip();
Equiped = "staff";
scr_Item_remove_slot(slot);
}
break;

case 5:
scr_Item_remove_slot(slot);
break;

case 6:
scr_Item_remove_slot(slot);
break;

}










return(1);
}else{return(0);}
