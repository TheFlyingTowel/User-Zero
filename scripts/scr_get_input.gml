///scr_get_input
img_spd = .1
spd = 2;
up_key = keyboard_check (vk_up)*spd || keyboard_check(ord("W"))*spd;
 down_key = keyboard_check(vk_down)*spd || keyboard_check(ord("S"))*spd;
    left_key = keyboard_check(vk_left)*spd || keyboard_check(ord("A"))*spd;
        right_key = keyboard_check(vk_right)*spd || keyboard_check(ord("D"))*spd;
         attack_key = keyboard_check(ord('Z'));    
        
        
   if(keyboard_check(vk_shift)){
    spd = 3;
    img_spd = .2
        hspd =  (keyboard_check(vk_right) - keyboard_check(ord("D") - keyboard_check(vk_left) - keyboard_check(ord("A")*spd)));
            vspd = (keyboard_check(vk_down) - keyboard_check(ord("D") - keyboard_check(vk_up) -  keyboard_check(ord("W"))*spd));

if(instance_exists(obj_ally_Claire))
{
      A_img = .2
      obj_ally_Claire.aspd = spd;
}
}

else if(instance_exists(obj_ally_Claire))

{
A_img = .1
obj_ally_Claire.aspd = spd
}

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
