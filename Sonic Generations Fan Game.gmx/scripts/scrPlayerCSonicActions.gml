if (Action == ActionHurt && Ground == true) 
{
  Speed = 0;
  Harmful = false;
  Action = ActionNormal;
  FlagsAllowCommonInput = true;
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
    Speed     = (10)*ShoomDirection;
    Gravity  += JumpStrength/90;
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
       Speed   = 1*ShoomDirection;
       Gravity = -1/2;
       } else {
       Action  = ActionNormal;
       Gravity = -3;
       Speed   = 3*ShoomDirection;  
       with (objTrickRamp) Activated=0;     
       }     
    }
    
    if (Action == ActionTrick) 
    {
    AnimationDirection = ShoomDirection;
    Speed     = (13)*ShoomDirection;
    Gravity  += JumpStrength/80;
    } 


// --- Shield Actions ---
switch (Shield)
 {
  case 2: // Fire Shield
   if (ShieldUsable && Action == ActionJumping && KeyActionPressed )
   {
    if (AnimationDirection = 1) Speed = 10;
    else Speed = -10;
    Gravity = 0;
    ShieldUsable = false;
    Action = ActionShield;
    sound_play(sndFireAirAttack);
   }
  case 3: // Electric Shield
  if (ShieldUsable && Action == ActionJumping && KeyActionPressed )
   {
    Speed = Speed/2
    Gravity = -6
    ShieldUsable = false;
    Action = ActionShield;
    sound_play(sndBoltAirAttack);
    
            // Create Sparks
            ntemp = instance_create(x,y,objThunderEffect);
            ntemp.direction = 45;
            ntemp = instance_create(x,y,objThunderEffect);
            ntemp.direction = 135;
            ntemp = instance_create(x,y,objThunderEffect);
            ntemp.direction = 225;
            ntemp = instance_create(x,y,objThunderEffect);
            ntemp.direction = 315; 
   }
   case 4: // Water Shield
   if (ShieldUsable && Action == ActionJumping && KeyActionPressed )
   {
    Speed = 0;
    Gravity = 12;
    Action = ActionShield;
    Animation = "Jump";
    sound_play(sndWaterAirAttack);
   }
   break;
   default:
   if (Action == ActionShield) Action = ActionJumping;          
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
        else if (!place_meeting(x,y,objForcedTubeRoll) && !place_meeting(x,y,objForcedTubeRoll2)) &&
        (Ground == true && KeyActionPressed && Action != ActionLookUp && Action != ActionCrouchDown && Action != ActionSpinDash && Action != ActionPeelOut)
        or (Ground == false && KeyActionPressed && Action != ActionNormal && (Action = ActionPull || Action = ActionGrab))
        {
            Gravity     =   cos(degtorad(Angle))*(JumpStrength/2) - sin(degtorad(Angle))*Speed;  // algorithm for a sonic-like
            Speed       =   cos(degtorad(Angle))*Speed + sin(degtorad(Angle))*JumpStrength;      // jump.
            
            Ground      =   false;
            Angle       =   0;
            JumpTimer  =   0;
            ShieldUsable = true;
            
            if (Action = ActionPush)    FlagsAllowCommonInput = true;
            if (!FlagsAllowCommonInput) FlagsAllowCommonInput = true;
            Action      =   ActionJumping;
            sound_play(sndJumpClassic);
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
   
        // --- Spin Dash ---
        if ( Action == ActionSpinDash )
        {   
        FlagsAllowCommonInput = false;
        
            // if the player doesn't pressed down anymore, roll
            if ( !KeyDown )
            {
                // start rolling
                FlagsAllowCommonInput = true;
                Action = ActionRolling;
                
                // set speed to the accumulator and set depending on the direction
                if ( AnimationDirection == 1 ) // facing to the right
                    Speed = SpinDashRev;
                else
                    Speed = -SpinDashRev;
                    
                sound_stop(sndSpinDashChargeClassic);
                sound_play(sndSpinDashGoClassic);
                
                ShieldUsable = false;
            }
            
            // if the player press again jump add power to the spindash accumulator,
            // otherwise, deaacelerate
            if ( KeyActionPressed )
            {
                SpinDashRev = min( SpinDashRev + SpinDashRevCharge, SpinDashMaxSpeed );
                sound_play(sndSpinDashChargeClassic);
            } else {
                SpinDashRev = max( SpinDashRev - SpinDashRevLose, SpinDashMinSpeed );
            }
        } else {
            // spindash. if the character is crouching down, and the player pressed the Action key,
            // activate the spindash
            if ( Action == ActionCrouchDown && KeyAction )
            {
                Action = ActionSpinDash;                   // set Action to spindash
                SpinDashRev = SpinDashMinSpeed;    // reset the spindash accumulator
                sound_play(sndSpinDashChargeClassic);
            }
        }
        
        // --- Another Spin Dash ---
        if ( Action == ActionAltSpinDash )
        {  
        FlagsAllowCommonInput = false;
        Speed = 0;
        SpinDashRev = min( SpinDashRev + SpinDashRevCharge, SpinDashMaxSpeed );
        
            // if the player doesn't pressed button anymore, roll
            if ( KeyAction ) FlagsAllowCommonInput = true;
            if ( !KeyBoost )
            {
                // start rolling
                FlagsAllowCommonInput = true;
                Action = ActionRolling;
                
                // set speed to the accumulator and set depending on the direction
                if ( AnimationDirection == 1 ) // facing to the right
                    Speed = SpinDashRev;
                else
                    Speed = -SpinDashRev;
                    
                sound_stop(sndSpinDashChargeClassic);
                sound_play(sndSpinDashGoClassic);
                
                ShieldUsable = false;
                
         if (!Ground) {
         FlagsAllowCommonInput = true; 
         Action = ActionNormal
         };
            }            
        } else {
            // spindash. if the character is crouching down, and the player pressed the Action key,
            // activate the spindash
            if ( Action == ActionNormal || Action == ActionCrouchDown && Ground == true && KeyBoostPressed )
            {
                Action = ActionAltSpinDash;                   // set Action to spindash
                Speed = 0;
                SpinDashRev = SpinDashMinSpeed;    // reset the spindash accumulator
                sound_play(sndSpinDashChargeClassic);
            }
        }
        
        // --- Peel Out ---
        if ( Action == ActionPeelOut )
        {   
            // Set the flag check variable
            FlagsAllowCommonInput = false;
            PeelOutHolder = 1;    
        
            // if the player doesn't pressed down anymore, roll
            if ( !KeyUp )
            {  
                FlagsAllowCommonInput = true;
                // start rolling
                Action = ActionNormal;
            
                // set speed to the accumulator and set depending on the direction
                if ( AnimationDirection == 1 ) // facing to the right
                    Speed = SpinDashRev;
                else
                    Speed = -SpinDashRev;
                    
                sound_stop(sndSpinDashChargeClassic);
                sound_play(sndSpinDashGoClassic);
                
                ShieldUsable = false;
            }
            
            // if the player press again jump add power to the spindash accumulator,
            // otherwise, deaacelerate
            if ( KeyActionPressed )
            {
                SpinDashRev = min( SpinDashRev + SpinDashRevCharge, SpinDashMaxSpeed );
                sound_play(sndSpinDashChargeClassic);
            } else {
                SpinDashRev = max( SpinDashRev - SpinDashRevLose, SpinDashMinSpeed );
            }
        } else {
            // spindash. if the character is crouching down, and the player pressed the Action key,
            // activate the spindash
            if ( Action == ActionLookUp && KeyAction )
            {
                Action = ActionPeelOut;                   // set Action to spindash
                SpinDashRev = SpinDashMinSpeed;    // reset the spindash accumulator
                sound_play(sndSpinDashChargeClassic);
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
            FlagsAllowCommonInput = true;
            ShieldUsable = true;
            }
            
            // turn the player from ball for making instant spindash
            if ( KeyBoostPressed ) {
            Action = ActionNormal;
            FlagsAllowCommonInput = true;
            }
            
        } else {
            // if the player is running, on the Ground and pressed down, roll
            if ( Action == ActionNormal && Ground == true && abs(Speed) >= 1 && KeyDown )
            {
                Action = ActionRolling;
                sound_play(sndRollClassic);
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
            if (abs(Speed) < 1)  Action = ActionNormal;
            if (Ground == false) Action = ActionNormal;
        }
        else {
            if ( Action == ActionNormal && Ground == true)
            {
                if ((Speed<-3) && KeyRight)
                {
                    Action = ActionSkid;
                    sound_play(sndSkidClassic);
                }
                if ((Speed>3) && KeyLeft)
                {
                    Action = ActionSkid;
                    sound_play(sndSkidClassic);
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
                if ( Action == ActionCorkscrew ) AnimationFrame = AnimationCorkscrewStart+abs((radtodeg(angleInCorkscrew)/360*6) mod 6);
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
        if( place_meeting(x,y,objParentRail) && Gravity >= 0 && Action != ActionGrind) {
        // If you collide with a grind rail, set the action to grind and the
        // layer to the grind layer. In addition, make sure we're on the ground
          Action = ActionGrind;
          Layer = 2;
          Ground = true;
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
        
