///scr_get_input
spd = 2;
 up_key = keyboard_check(vk_up)*spd;
 down_key = keyboard_check(vk_down)*spd;
 left_key = keyboard_check(vk_left)*spd;
 right_key = keyboard_check(vk_right)*spd;

   if(keyboard_check(vk_shift)){
 spd = 3;
  hspd =  (keyboard_check(vk_right) - keyboard_check(vk_left))*spd;
 vspd = (keyboard_check(vk_down) - keyboard_check(vk_up))*spd;
if(instance_exists(obj_ally)){
   obj_ally.aspd = spd;
}
}else{obj_ally.aspd = spd}
//get axis
  xaxis = (right_key - left_key);
 yaxis = (down_key - up_key);

 
 
 
 //get controller input
 if(gamepad_is_connected(0)){
      gamepad_set_axis_deadzone(0, .35);
      xaxis = gamepad_axis_value(0, gp_axislh);
        yaxis = gamepad_axis_value(0, gp_axislv);
         dash_key = gamepad_button_check(0, gp_face1);


        // Speed
        if(gamepad_button_check(0, gp_face2)){
        spd = 5;
          hspd =  (xaxis)*spd;
          vspd = (yaxis)*spd;
        
      } 
      }
