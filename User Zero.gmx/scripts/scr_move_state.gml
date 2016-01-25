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



/*
//Sprite controle
image_speed = .3;
if(len == 0) image_index = 0;

switch(face){
case RIGHT:
  sprite_index = spr_player_right;
  break;
  
  case LEFT:
  sprite_index = spr_player_left;
  break;
  
  case UP:
  sprite_index = spr_player_up;
  break;
  
  case DOWN:
  sprite_index = spr_player_down;
  break;
}

*/
// send values to the movement script
scr_move(hspd,vspd);