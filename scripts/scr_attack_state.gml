///scr_attack_state
if(/*image_index >= 2 &&*/ attacked == false){
var xx = 0;
var yy = 0;
switch(sprite_index){

case spr_walking_Down: 
xx = x;
yy = y+14;
break;

case spr_walking_up:
xx = x; 
yy = y -10;
break;

case spr_walking_Left:
xx = x - 12;
yy = y + 2;
break;

case spr_walking_Right:
xx = x + 12;
yy = y + 2;
break;

case spr_down: 
xx = x;
yy = y+14;
break;

case spr_up:
xx = x; 
yy = y -10;
break;

case spr_left:
xx = x - 12;
yy = y + 2;
break;

case spr_right:
xx = x + 12;
yy = y + 2;
break;



}

 damage = instance_create(xx,yy,obj_damage); 
 damage.creator = id;
 attacked = true;


}