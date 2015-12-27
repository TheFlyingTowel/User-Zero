///scr_Item_check();

for(i = 0; i < maxItems; i += 1){

if(global.IN_slot[i] == argument[0]){
     return(1);

}
return(0);
}
