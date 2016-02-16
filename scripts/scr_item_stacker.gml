///scr_item_stacker(item,stack amount);
var number = argument[1];
var item = scr_Item_check(argument[0]);
if(item == 1){



}else if(item == 0){
for(i = 0; i < maxItems; i += 1){
global.IN_slot[i] = item;
}
}