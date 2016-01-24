///scr_drop_slot(slot);

if(global.IN_slot[argument[0]] != 1){

global.IN_slot[argument[0]] = -1;
return(1);
}
return(0);
