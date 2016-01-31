///scr_cheack_for_player()
if (instance_exists(obj_player)){
 var dis = point_distance(x,y, obj_player.x, obj_player.y);
 if(dis < sight){
 E_state = scr_chase_enemy_state_;
targetx = obj_player.x;
targety = obj_player.y;
 }else{
 E_state = scr_enemy_choose_next_state();
 }
}else{
 E_state = scr_enemy_choose_next_state();
}
