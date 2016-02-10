///scr_slot_Item_check(slot,item);

var slot = global.IN_slot[argument[0]];
if(!slot == -1){
 if(global.IN_slot[argument[0]] == argument[1]){

return(1);
}

}else if(slot == -1)return(-1);
return(0)
