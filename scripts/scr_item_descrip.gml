//scr_item_descrip(line[0],line[1],line[2]);
var out_come,lin0,lin1,lin2;
lin0 = argument0;
lin1 = argument1;
lin2 = argument2;
var color,cs,ns,sn,num;

switch(lin2){
///Wooden Staff
case "4":
num = 4;
if(instance_exists(obj_player)){cs = obj_player.attack;}else{cs = "NULL";num = "NULL"}
ns = cs + num;


if(cs < ns) sn = "+";
if(cs > ns) sn = "-";
if(cs == ns) sn = "*";

lin2 = "Power: "+string(cs)+" --> "+string(ns)+" | "+string(num)+sn;

break;


}









out_come = lin0+"#"+lin1+"#"+lin2;
return(out_come)
