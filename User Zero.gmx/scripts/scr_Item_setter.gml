///scr_Item_setter();

for(i = 0; i < maxItems; i += 1){
if(global.IN_slot[i] == -1){
   
     global.IN_slot[i] = argument[0];
     return(1);

}
}
return(0);

