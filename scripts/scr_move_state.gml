/// scr_move_state
scr_get_input();

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




//Sprite controle
image_speed = img_spd;
if(len == 0) image_index = 0;

switch(face){
case RIGHT:
  sprite_index = Spr_Player_Right;
  break;
  
  case LEFT:
  sprite_index =Spr_Player_Left;
  break;
  
  case UP:
  sprite_index = Spr_Player_Up;
  break;
  
  case DOWN:
  sprite_index = Spr_Player_Front;
  break;
}


// send values to the movement script
scr_move(hspd,vspd);