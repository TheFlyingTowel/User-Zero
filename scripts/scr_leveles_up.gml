///scr_levles_up(helth,maxHealth,level,xp,maxxp);
var Health = argument[0];
var max_health = argument[1];
var level = argument[2];
var xp = argument[3];
var maxxp = argument[4];
var attack = argument[5];
var lv_up_spd = 2;




if(xp >= maxxp){
switch(level){
case 1:
level += 1;
Health += random_range(1,3);
xp = xp - maxxp;
attack += 1;
maxxp *= lv_up_spd;
break;



default:
level+= 1;
xp = xp - maxxp;
maxxp *= lv_up_spd;
break;
}
}
return(Health);
return(max_health);
return(level);
return(xp);
return(mxxp);
return(damage);