///scr_descript_check(slot);
var slot = argument0;
var item0,item1,item2,item3,item4;
switch(slot){

case 64: 

item0 = scr_slot_item_check(0,0);
item1 = scr_slot_item_check(0,1);
item2 = scr_slot_item_check(0,2);
item3 = scr_slot_item_check(0,3);
item4 = scr_slot_item_check(0,4);
item5 = scr_slot_item_check(0,5);
item6 = scr_slot_item_check(0,6);
break;



case 111.50: 
var item0,item1,item2,item3,item4;
item0 = scr_slot_item_check(1,0);
item1 = scr_slot_item_check(1,1);
item2 = scr_slot_item_check(1,2);
item3 = scr_slot_item_check(1,3);
item4 = scr_slot_item_check(1,4);
item5 = scr_slot_item_check(1,5);
item6 = scr_slot_item_check(1,6);
break;




case 159: 
var item0,item1,item2,item3,item4;
item0 = scr_slot_item_check(2,0);
item1 = scr_slot_item_check(2,1);
item2 = scr_slot_item_check(2,2);
item3 = scr_slot_item_check(2,3);
item4 = scr_slot_item_check(2,4);
item5 = scr_slot_item_check(2,5);
item6 = scr_slot_item_check(2,6);
break;




case 206.50: 
var item0,item1,item2,item3,item4;
item0 = scr_slot_item_check(3,0);
item1 = scr_slot_item_check(3,1);
item2 = scr_slot_item_check(3,2);
item3 = scr_slot_item_check(3,3);
item4 = scr_slot_item_check(3,4);
item5 = scr_slot_item_check(3,5);
item6 = scr_slot_item_check(3,6);
break;



case 254: 
var item0,item1,item2,item3,item4;
item0 = scr_slot_item_check(4,0);
item1 = scr_slot_item_check(4,1);
item2 = scr_slot_item_check(4,2);
item3 = scr_slot_item_check(4,3);
item4 = scr_slot_item_check(4,4);
item5 = scr_slot_item_check(4,5);
item6 = scr_slot_item_check(4,6);
break;

}
var ret = "";
if(item0 == 1)ret = scr_item_descrip("This is a potion","it is cool :)","it add to the meater");
if(item1 == 1)ret = scr_item_descrip("this is a heal","","");
if(item2 == 1)ret = scr_item_descrip("I Think this is a sword","null","null");
if(item3 == 1)ret = scr_item_descrip("probbly a ball","null","null");
if(item4 == 1)ret = scr_item_descrip("This staff was given to"," you by the old man ","4");
if(item5 == 1)ret = scr_item_descrip("Item5","null","null");
if(item6 == 1)ret = scr_item_descrip("Item6","null","null");

return(ret);







