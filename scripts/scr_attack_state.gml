///scr_attack_state
if(attacked == false){
var xx = 0;
var yy = 0;
switch(sprite_index){

case Spr_Player_Front: 
xx = x-15;
yy = y+14;
break;

case Spr_Player_Left:
xx = x - 12; 
yy = y + 2;
break;

case Spr_Player_Right:
xx = x + 12;
yy = y + 2;
break;

case Spr_Player_Up:
xx = x;
yy = y - 10;
break;



}

var damage = instance_create(xx,yy,obj_damage);
damage.creator = id;
attacked = true;


}
