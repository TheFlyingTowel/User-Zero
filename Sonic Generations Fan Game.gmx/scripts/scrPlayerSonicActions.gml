if (Action == ActionHurt && Ground == true) || (Action == ActionPush && Ground == false)
{
  Speed = 0;
  Action = ActionNormal;
  FlagsAllowCommonInput = true;
}

// --- Rotating Poles (like from City Escape) ---
objHandle = instance_nearest(x,y,objRotatePole);
if (scrPlayerCollisionMainObject(x, y, objHandle)) {
if (Action != ActionRotate) && !(objHandle.Activated)
  {
  Angle      = 0;
  Ground     = false;
  Homing     = false;
  HomingMiss = false;
  Action    = ActionRotate;
  x         = objHandle.x;
  y         = objHandle.y+13;
  objHandle.Direction = 180;
  objHandle.Activated = true;
  objHandle.XDir = AnimationDirection;
  sound_play(sndPoleCatch);
  }
}

// -- Collision Marker ---
if (scrPlayerCollisionTopObject(x,y,Angle,maskMega,objCeilingMarker)) CeilingLanding = false;

    if (Action == ActionPipe)
    {
    Ground = false;
    Speed = GoSpeed;
    Gravity = GoGravity;
    }
     
    //TRICKS AND SHOOM
    if (Action == ActionShoom) 
    {
    AnimationDirection = ShoomDirection;
    Angle     = 0;
    Speed     = (11+(Boost*2))*ShoomDirection;
    Gravity  += JumpStrength/65;
    } 
    
    if (Action == ActionReaction)
    {
    AnimationDirection = ShoomDirection;
    IdleTimer += 1;
    if (IdleTimer<15) {
       Animation = "Shoom";
       Speed     = 11*ShoomDirection;
       Gravity  += JumpStrength/65;
       } else if (IdleTimer<210) {
       Speed   = (1/2)*ShoomDirection;
       Gravity = -1/2;
       } else {
       Action  = ActionNormal;
       Gravity = -5;
       Speed   = 5*ShoomDirection;  
       with (objTrickRamp) Activated=0;     
       }     
    }
    
    if (Action == ActionTrick) 
    {
    AnimationDirection = ShoomDirection;
    Boost     = false;
    Harmful   = false;
    Speed     = (8+BonusSpeed)*ShoomDirection;
    Gravity  += JumpStrength/57;
    if (KeyUpPressed || KeyDownPressed || KeyLeftPressed || KeyRightPressed) && TrickTimer<30 && Wait == 0 && TrickFinish == 0
        {
        if TrickTimer<20 sound_play(choose(sndActionTrick,sndActionTrick2))
        Animation = choose("Trick","Trick1","Trick2","Trick3");
        AnimationDirection = 1;
        AnimationFrame = AnimationStart;        
        if (Gravity<-8) Gravity -= 0.8;
        BonusSpeed  += 1/4*AnimationDirection;
        TrickTimer  += 1;
        global.Score += 100;
        Wait = 1;
        alarm[0] = 9;
        eff=instance_create(x,y,sfxTrick)        
        }
    if ((KeyActionPressed && KeyBoost) or (KeyAction && KeyBoostPressed)) && TrickFinish == 0
        {
        Gravity -= 1;
        Speed   += 1;
        Animation = "Trick";
        AnimationDirection = 1;
        TrickFinish = 1;
        AnimationFrame = AnimationStart; 
        sound_play(sndActionTrick3); 
        sound_play(sndTrickFinal);
        }
    if Speed>11 {Speed=11}
    if Gravity<-5 {Gravity=-5}
    } 
    
    if (Action == ActionColorRing) 
    {
    if (IdleTimer<30) {
     Animation = "Shoom";
     AnimationAngle = TrickAngle;
     Speed = cos(degtorad(TrickAngle))*9;
     Gravity = sin(degtorad(TrickAngle))*-9;
     IdleTimer += 1;
     } else {
     Speed     = 6*ShoomDirection;
     Gravity  += JumpStrength/90;
     Harmful   = false;
     }
     if (KeyUpPressed || KeyDownPressed || KeyLeftPressed || KeyRightPressed) && TrickTimer<20 && Wait == 0 && TrickFinish == 0 
        {
        if TrickTimer<19 sound_play(choose(sndActionTrick,sndActionTrick2))
        Animation = choose("Trick1","Trick2","Trick3");
        AnimationDirection = 1;
        AnimationFrame = AnimationStart;        
        TrickTimer  += 1;
        global.Score += 100;
        Gravity   -= 0.2;
        Wait = 1;
        alarm[0] = 9;
        eff=instance_create(x,y,sfxTrick)        
        }
    if ((KeyActionPressed && KeyBoost) or (KeyAction && KeyBoostPressed)) && TrickFinish == 0
        {
        Animation = "Trick";
        AnimationDirection = 1;
        Gravity     -= 2;
        Speed       += 2;
        AnimationFrame = AnimationStart;        
        TrickFinish = 1;        
        sound_play(sndActionTrick3); 
        sound_play(sndTrickFinal);
        }
    } 
    if (TrickFinish == 1) {
       if (sign(TrickTimer)=1) {
       instance_create(x+cos(degtorad(Angle))*100,y+sin(degtorad(Angle))*-100,objBoostEmblem);
       TrickTimer -= 1;
       }
    }

    if (Action == ActionShoom || Action == ActionTrick || Action == ActionColorRing) {Homing = false; HomingMiss = false}
    if (!Ground) {if eff{eff.x=x;eff.y=y}} else {if eff{with eff instance_destroy()}};
    
    //SLIDING!!
    if (Action != ActionSliding) {sound_stop(sndSliding)};
    if (Action == ActionSliding) 
    {    
            Speed -= 0.046875*AnimationDirection;
            Harmful = 1;
            if distance_to_object(objUnderPass)<60
            {
            if (AnimationDirection = -1){if (Speed >= -2) Speed = -2;}
            else                         {if (Speed <= 2) Speed = 2;}
            }
            else
            {   
            if (AnimationDirection = -1){if (Speed >= 0) Speed = 0;}
            else                         {if (Speed <= 0) Speed = 0;}
            }    
            if !KeyMove || Speed = 0 || (Angle > 45 && Angle < 315) || !Ground
            {if distance_to_object(objUnderPass)>60 {Action = ActionNormal; sound_stop(sndSliding)};} //cancel out the sounds if the player is not sliding   
            break;
    } 
    else if (Ground) && (Action == ActionNormal || Action == ActionCrouchDown) 
    {    
        if (KeyMovePressed && abs(Speed) > 1)
        {
            Action = ActionSliding;
            sound_loop(sndSliding);
        }
    }
         
    /// STOMP ///  
    if (Action == ActionStomping) 
    {
            Speed = 0;
            if !Ground {Gravity = 16};
            if Ground  {Gravity = 0 Action = ActionSpring};
            Harmful     = 1;
            Homing      = 0;
            HomingMiss  = 0;
    }
    //set the required actions for stomping to work
    else if (Action == ActionJumping || Action == ActionFlip || Action == ActionSpring || 
    (Action == ActionWallJump && (Animation == "WallJump" && AnimationFrame > 137)) || Action == ActionCloud ||
    Action == ActionNormal && (!instance_place(x,y,objFourWayCannon)) && Ground = false && (Gravity > 0 or Gravity < 0))
    {
            if ( KeyMovePressed && Action != ActionStomping && (Action != ActionShoom && Action != ActionTrick && Action != ActionReaction && Action != ActionColorRing) )
            {            
                Speed       = 0;
                Angle       = 0;
                Harmful     = true;
                Action      = ActionStomping;
                Animation   = "Stomping";
                sound_play(sndStomp);
            }
    }               
      
                             
          
    /// BOOST ///
    //set the boost limits
    if (!KeyBoost || (KeyBoost && (!KeyLeft || !KeyRight) && abs(Speed) < 6)) {Boost = false; Harmful = false}
    
    //give the player the criteria needed for the boost
    if (!Boost) && (!instance_place(x,y,objFourWayCannon)) && (Action != ActionSpring && Action != ActionWallJump &&
    Action != ActionPipe && Action != ActionSkid && Action != ActionReaction && Action != ActionColorRing && 
    Action != ActionStomping && Action != ActionShoom && Action != ActionTrick && Action != ActionHurt 
    && Action != ActionGrab && BoostTimer > 0 && KeyBoostPressed)
    {
        Boost = true;
        BoostTimer -= 3;
        instance_create(x,y,sfxDistortion);
        if (AnimationDirection = -1) Speed = -11;
        else                          Speed =  11;
        
        if (Ground && Action != ActionNormal) Action = ActionNormal;
        if (Action == ActionJumping) Action = ActionSpring;
        if (!Ground) {if (Action = ActionCloud) Action = ActionSpring; Gravity = 0}
    }

    //set up the keys needed to activate the boost
    if (KeyBoost && Boost) 
    {
        BoostTimer -= 0.1875;
        
        //implement advanced acceleration
        if (Action == ActionRolling)
        {
        if (KeyLeft)  
        {
            if (Speed > -8) Speed -= 0.375;
            else               Speed -= 0.0703125;
        }
        if (KeyRight)  
        {
            if (Speed <  8) Speed += 0.375;
            else               Speed += 0.0703125;
        }
        }
        else
        {
        if (KeyLeft)  
        {
            if (Speed > -13) Speed -= 0.375;
            else               Speed -= 0.0703125;
        }
        if (KeyRight)  
        {
            if (Speed <  13) Speed += 0.375;
            else               Speed += 0.0703125;
        }
        }
    }
    
    //cancel out the sounds if the player is not boosting
    if (!Boost) {sound_stop(sndBoosting);}
                 //with sfxBlurEffect instance_destroy();}
    if (Action == ActionDie) Boost=false;
                 
    if (KeyBoostPressed && Boost)
    {
    sound_play(sndBeginBoost);
    sound_play(sndBoosting);
    }
    
    
    
   
    /// RING DASH ///
    
    if (KeyMovePressed)
    {
    if (distance_to_object(objLightRing) < 48 && !Lightdash) 
        {
            Lightdash = true;
            ShieldUsable = false;
            Ground = false;
            Target = objLightRing;
            sound_play(sndLightdash);
        } 
    }

    //set up the variables and start dashing
    if distance_to_object(objLightRing) < 64
    {
        if Lightdash = true
        {
            LightdashTarget = instance_nearest(x,y,objLightRing);
            
            var dir;
            dir = floor(point_direction(x,y,LightdashTarget.x,LightdashTarget.y));
            
            x +=  cos(pi/180*dir) * LightdashSpeed;
            y += -sin(pi/180*dir) * LightdashSpeed;
            
            if AnimationDirection = -1
            then AnimationAngle = dir+180;
            else AnimationAngle = dir;
            
            Gravity = 0;
            Action = ActionLightdash;
            Harmful = 1;
        }
    }
    else if Lightdash = true then Lightdash = false sound_stop(sndLightdash);

    //reset to a jump variable(which ever one you want)
    if (Lightdash = false and Action = ActionLightdash) 
    {
        Speed = LightdashSpeed*AnimationDirection;
        if (Ground) Action  = ActionNormal;
        else        Action  = ActionSpring;
        ShieldUsable = true;
        sound_stop(sndLightdash);
    } 
         
      
    /// HOMING ATTACK /// 
        
    Target = instance_nearest(x,y,objParentHoming);    
    if((Action == ActionJumping) or 
       (Action == ActionSpring) or 
       (Action == ActionCloud) or 
       (Action == ActionFlip and AnimationFrame > 94) or
       (Action == ActionWallJump && Animation == "WallJump" && AnimationFrame > 138))
    && ((AnimationDirection == 1 and Target.x >= x) || (AnimationDirection == -1 and Target.x < x))
    && (scrCheckCollisionHoming() == true)
    {
                if distance_to_object(Target) < 180
                {
                    with (Target) {if (!setuped) {setuped = true; sound_stop(sndBeep) sound_play(sndBeep);}}
                    if (!HaveTarget) {HaveTarget = true; sound_stop(sndBeep) sound_play(sndBeep);}
                    if KeyActionPressed
                    {
                        Homing = true;
                        Speed = 0;
                        Gravity = 0;
                        Action = ActionJumping;
                        sound_play(sndHomingAttack);
                    }
                }
                else {with (objParentHoming) {setuped = false;}}
    }
    else
    {
                with (objParentHoming) {setuped = false;}
                HaveTarget = false;
    }
    
    //while the player is homing in on a target, perform a homing attack
    if (Homing == true) {
      mp_linear_step(Target.x+(10*AnimationDirection), Target.y, 15, false);
      HomingMiss = false;
    }
    
    //reset the variables when finished
    if Ground = true then Homing = false;

    //just in case the player hits the wall while homing in on an enemy
    if (Homing && scrPlayerCollisionRight(x,y,Angle,maskBig))
            {
            Homing  = false;
            Gravity = 0;
            }
    if (Homing && scrPlayerCollisionLeft(x,y,Angle,maskBig))
            {
            Homing  = false;
            Gravity = 0;
            }
                       
                       
    /// AIR DASH ///
    
    if (!HaveTarget)
    {
    if((Action == ActionJumping) or 
       (Action == ActionSpring) or 
       (Action == ActionCloud) or
       (Action == ActionFlip and AnimationFrame > 94) or
       ((Action == ActionWallJump) && (Animation == "WallJump" && AnimationFrame > 138)))
    && (KeyActionPressed && ActionTimer = 0 && !HomingMiss)    
                {
                    ActionTimer      = 0;
                    if abs(Speed) != 9
                    {
                    if (AnimationDirection = 1) Speed = 9;
                    else Speed = -9;
                    }
                    HomingMiss       = true;
                    Action           = ActionJumping;
                    sound_play(sndHomingAttack);
                }
    }
    if (Ground) {HomingMiss = 0;ActionTimer = 0}
    if (HomingMiss = true) 
    {
                ActionTimer   += 1;
                Gravity        = 0;    
                if ActionTimer > 15 {HomingMiss = 0;Action = ActionSpring}
    }
                
                                
    /// COLLISION WITH HOMINGED TARGETS ///
    
    objHandle = scrPlayerCollisionMainObject(x, y, objParentHoming);
        
        if (objHandle != noone)
        {   
        if (Homing)  {
        Speed = 0;
        HomingMiss = false;
        HaveTarget = false;
        Action = ActionFlip;
        Harmful = 1;
        Animation = "Flip";
        Homing = false;
        }
        }
        
        /// WALL JUMP ///
              
    if (Action == ActionWallJump)
    {
        Harmful = false;
        Ground = false;
        Homing = 0;
        HomingMiss = 0;
        if (Ground) Action = ActionNormal;
        if (Animation == "WallGrab")
        {
          Speed = 0;
          if (Gravity > 3) Gravity = 3;
          if ( KeyActionPressed )
            {
            Speed   =  8*AnimationDirection; 
            Gravity = -8;
            Animation = "WallJump";
            sound_play(sndJump);
            }
        }       
        if (Animation == "WallJump" && Speed = 0) 
        {
            Speed = 0;
            Gravity = 0;
            if (scrPlayerCollisionRightObject(x,y,Angle,maskBig,objPanelR)) AnimationDirection = -1; //for if you hit the right wall
            if (scrPlayerCollisionLeftObject(x,y,Angle,maskBig,objPanelL))  AnimationDirection =  1; //for if you hit the left wall
            Animation = "WallGrab";
        }
        if (Animation == "WallJump" && Gravity > 1)||(Animation == "WallGrab" && !place_meeting(x-(5*AnimationDirection),y,objPanelL) && !place_meeting(x-(5*AnimationDirection),y,objPanelR))
        {
            Action = ActionSpring;
        }
    }
    else
    if (Action == ActionJumping && Ground = false && Gravity >= -3 ) || (Action == ActionFlip || Action == ActionCloud ||
    Action == ActionSpring || Action == ActionShoom || Action == ActionNormal && Ground = false && 
    (Gravity > 0 or Gravity < 0))
    {
        if (AnimationDirection == 1) && (scrPlayerCollisionRightObject(x,y,Angle,maskBig,objPanelR)) //if you hit the right wall
        {
            Speed = 0;
            Gravity = 0;
            Homing = 0;
            HomingMiss = 0;
            AnimationDirection = -1;
            Action = ActionWallJump;
            Animation = "WallGrab";
        }
        if (AnimationDirection == -1) && (scrPlayerCollisionLeftObject(x,y,Angle,maskBig,objPanelL)) //if you hit the right wall
        {
            Speed = 0;
            Gravity = 0;
            Homing = 0;
            HomingMiss = 0;
            AnimationDirection = 1;
            Action = ActionWallJump;
            Animation = "WallGrab";
        }
    }        

  
  
    // --- Jumping ---
        if (Action == ActionJumping)
        {
                    if (Ground == true)
                    {
                        Action = ActionNormal;
                        FlagsAllowDoubleJumpAction = false;
                        FlagsAllowCommonInput = true;
                    }
            if (!KeyAction) JumpTimer = 13;
            if (Gravity < 0 && JumpTimer <= 13 && KeyAction)
            {
                Gravity    += JumpStrength/(26);
                JumpTimer  += 1;
            }
        }
        else if !place_meeting(x, y, objForcedTubeRoll) && !place_meeting(x, y, objForcedTubeRoll2)
        && 
        (Ground == true && KeyActionPressed && Action != ActionLookUp && Action != ActionCrouchDown 
        && Action != ActionSpinDash && Action != ActionPeelOut)
        or (KeyActionPressed && (Action == ActionPullUp || Action == ActionGrab))
        {
            Gravity      =   cos(degtorad(Angle))*(JumpStrength/2) - sin(degtorad(Angle))*Speed;  // algorithm for a sonic-like
            Speed        =   cos(degtorad(Angle))*Speed + sin(degtorad(Angle))*JumpStrength;      // jump.
            
            Ground       =   false;
            Angle        =   0;
            JumpTimer    =   0;
            ShieldUsable = true;
            
            if (Action = ActionPush) FlagsAllowCommonInput = true;
            Action      =   ActionJumping;
            sound_play(sndJump);
            sound_play(sndJumpSpinning);
        }
        
        // --- Look Up ---
        if ( Action == ActionLookUp )
        {
            if (KeyLeft || KeyRight || (!KeyUp && Ground == true))
            {
                Action            = ActionNormal;
                LookUpTimer = 0;
                FlagsAllowCommonInput = true;
            }
        } else {
            if (Ground == true && Speed == 0 && KeyUp && Action == ActionNormal && !KeyDown && !KeyLeft && !KeyRight)
            {
                Action = ActionLookUp;
                FlagsAllowCommonInput = false;
            }        
        }
    
        // --- Crouch Down ---
        if ( Action == ActionCrouchDown )
        {
            if (!KeyDown && Ground == true)
            {
                Action            = ActionNormal;
                FlagsAllowCommonInput = true;
            }
        } else {
            if (Ground == true && Speed == 0 && KeyDown && Action == ActionNormal && !KeyUp && !KeyLeft && !KeyRight)
            {
                Action = ActionCrouchDown;
                FlagsAllowCommonInput = false;
            }        
        }
   
               
        // --- Rolling ---
        if ( Action == ActionRolling )
        {
            // first check the direction of the movement
            if ( Speed > 0 )
            {
                // deaccelerate depending on what are you pressing
                if (KeyLeft)       Speed -= RollingDecelerationBraking;
                else if (KeyRight) Speed -= RollingDeceleration;
                else               Speed -= RollingDeceleration;
                
                // set to 0 the Speed if it got lower than 0 (this is for preventing
                // decimal precission leftovers)
                if ( floor(Speed) < 0 ) Speed = 0;
            } else if ( Speed < 0 ) {
                // deaccelerate depending on what are you pressing
                if (KeyLeft)       Speed += RollingDeceleration;
                else if (KeyRight) Speed += RollingDecelerationBraking;
                else                Speed += RollingDeceleration;
                
                // set to 0 the Speed if it got greater than 0 (this is for preventing
                // decimal precission leftovers)
                if ( floor(Speed) > 0 ) Speed = 0;
            }
            
            // if the speed got 0, set back the normal Action
            if ( Speed == 0 ) {
            Action = ActionNormal;
            FlagsAllowCommonInput = true;
            }
            
            // if the character isn't on the Ground anymore, change to jump
            // Action
            if ( Ground == false ) {
            Action = ActionJumping;
            ShieldUsable = true;
            }
            
        } else {
            // if the player is running, on the Ground and pressed down, roll
            if ( Action == ActionNormal && Ground == true && abs(Speed) >= 1 && KeyDown )
            {
                Action = ActionRolling;
                sound_play(sndSpinDashGo);
            }
        }
        
        // --- Skidding ---
        if ( Action == ActionSkid )
        {
            // first check the direction of the movement
            if ( Speed > 0 )
            {
                // decelerate while pressing left
                if (KeyLeft)       Speed -= SkidDeceleration;
                
                // finish skidding
                if ( floor(Speed) < 0 || !KeyLeft || !Ground ) Action = ActionNormal;
            }
            else if ( Speed < 0 ) {
                // decelerate while pressing left
                if (KeyRight)      Speed += SkidDeceleration;
                
                // finish skidding
                if ( floor(Speed) > 0 || !KeyRight || !Ground ) Action = ActionNormal;
            }
            if (abs(Speed) < 1) Action = ActionNormal;
            if (Ground == false) Action = ActionNormal;
            Boost = false;
        }
        else {
            if ( Action == ActionNormal && Ground == true)
            {
                if ((Speed<-5) && KeyRight)
                {
                    Action = ActionSkid;
                    sound_play(sndSkid);
                }
                if ((Speed>5) && KeyLeft)
                {
                    Action = ActionSkid;
                    sound_play(sndSkid);
                }
            }
        }
        
        // --- Spring Jumps ---
        if (Action = ActionSpring) {
              FlagsAllowCommonInput = true;
              Harmful = false;
              if (Ground == true) Action = ActionNormal;
              if (ActionSpringTime > 0) {
              ActionSpringTime -= 1;
              Speed   =   cos(degtorad(SpringDirection))*SpringStrength;
              Gravity =   sin(degtorad(SpringDirection))*-SpringStrength;
              }
        }
        
        // --- Corkscrews ---
        if ( Action == ActionCorkscrew || Action == ActionCorkscrewRoll )
        {
            var corkscrewObject; corkscrewObject = scrPlayerCollisionMainObject(x, y, objCorkscrew);
            
            if ( abs(Speed) < 3 )         Action = ActionNormal;
            if (corkscrewObject == noone) Action = ActionNormal; 
            else
            {        
                var relativePosition, angleInCorkscrew;
                relativePosition = x - corkscrewObject.x;
                angleInCorkscrew = degtorad((relativePosition/288)*360);
                
                // Set position acording to relative position to corkscrew
                Gravity = 0;
                y = corkscrewObject.y + CorkYOffset + (1+cos(angleInCorkscrew))*(65*0.5);
                
                // Change animation frame depending on angle
                if ( Action == ActionCorkscrew ) AnimationFrame = AnimationCorkscrewStart+abs((radtodeg(angleInCorkscrew)/360*11) mod 11);
            }
        }
        else if ( abs(Speed) >= 3 && Ground == true && scrPlayerCollisionMainObject(x, y, objCorkscrew) != noone )
        {
            // Set different Actions based on current
            if ( Action == ActionRolling ) Action = ActionCorkscrewRoll;
            else                           Action = ActionCorkscrew;
            
            // Common stuff
            Ground = false;
            Angle = 0;
        } 
        
        // --- Grinding ---
        if( scrPlayerCollisionBottomObject(x,y,Angle,maskBig,objParentRail) && Gravity >= 0 && Action != ActionGrind) {
        // If you collide with a grind rail, set the action to grind and the
        // layer to the grind layer. In addition, make sure we're on the ground
          Action = ActionGrind;
          Layer = 2;
          Gravity = 0;
          Ground = true;
          sound_stop(sndGrind);
          sound_loop(sndGrind);
        }
        
        if( Action == ActionGrind) {
        
          if(!KeyLeft && !KeyRight && abs(Speed) < 1 ) {
          // If you ever stop while not pressing anything, give a good jolt
          // so you never get too stuck
          if(Speed == 0)
          Speed = AnimationDirection * 2.185;
          Speed = 2.185 * sign(Speed);
        }
        
        // Left/right acceleration
        if( KeyLeft )  Speed -= 0.012;
        if( KeyRight ) Speed += 0.012;

        // Friction for the rail
        Speed = Speed * 0.99;

        // Extra gravity for rails
        Speed -= sin(degtorad(Angle))*0.3;

        if( !Ground) {
          // If you ever fall from the ground, set the action and layer
          // to normal and give a nice small hop off the rail
          Action   = ActionNormal;
          Speed   += lengthdir_x( 2, Angle + 90);
          Layer = 0;
          sound_stop(sndGrind);
         }
        }
        if (Action != ActionGrind) {sound_stop(sndGrind)};
        
        // If you're ever not on the rail for whatever reason, set the layer to normal
        if( Action != ActionGrind && Layer == 2) {
        Layer = 0;
        FlagsAllowCommonInput = true;
        sound_stop(sndGrind);
        }
        
        if (Action == ActionBoostSpin)
        {
           Animation = "BoostSpin";
           if (floor(AnimationFrame)>=AnimationBoostSpinEnd) Action = ActionNormal;
           if (Ground == false) Action = ActionNormal;
        }
        
        
        
        
        
        
        
