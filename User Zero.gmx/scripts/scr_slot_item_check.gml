///scr_slot_Item_check(slot,item);

var slot = global.IN_slot[argument[0]];

if(slot != -1){
var check = scr_Item_check(argument[1]);
if(check == 1){
return(1);
}

}else if(slot == -1)return(-1);
return(0)

