/// scr_move_state
scr_get_input();

if(attack_key){
image_index = 0;
state = scr_attack_state;
}


// Get direction
 dir = point_direction(0 , 0 , xaxis, yaxis);

// get length
if(xaxis == 0 and yaxis = 0){
len = 0;
}else{
 len = spd;
scr_get_face();
}

//get hspd vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);


if(down_key||up_key||left_key||right_key){

//Sprite controle
image_speed = img_spd;
if(len == 0) image_index = 0;

switch(face){
case RIGHT:
  sprite_index = spr_walking_Right;
  break;
  
  case LEFT:
  sprite_index = spr_walking_Left;
  break;
  
  case UP:
  sprite_index = spr_walking_up;
  break;
  
  case DOWN:
  sprite_index = spr_walking_Down;
  break;
}


// send values to the movement script
scr_move(hspd,vspd);
}else{

switch(face){
case RIGHT:
  sprite_index = spr_right;
  break;
  
  case LEFT:
  sprite_index = spr_left;
  break;
  
  case UP:
  sprite_index = spr_up;
  break;
  
  case DOWN:
  sprite_index = spr_down;
  break;
}





}