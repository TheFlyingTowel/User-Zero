///scr_Item_remove_slot(slot);

var slot;
if(mpos == 0){
slot = 0;
}else if(mpos == 1){
slot = 1;
}else if(mpos == 2){
slot = 2;
}else if(mpos == 3){
slot = 3;
}else if(mpos == 4){
slot = 4;
} 







/*
switch(mpos){
case 0:
slot = 0;
break;

case 1:
slot = 1;
break;

case 2:
slot = 2;
break;

case 3:
slot = 3;
break;

case 4:
slot = 4;
break;

}
*/
item_string[slot] = "";
global.IN_slot[slot] = -1;

