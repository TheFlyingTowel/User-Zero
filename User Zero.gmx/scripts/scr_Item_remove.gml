///scr_Item_remove();

for(i = 0; i < maxItems; i += 1){

if(global.IN_slot[i] == argument[0]){
     item_string[i] = "";
     global.IN_slot[i] = -1;
     return(1);
}
}
return(0);