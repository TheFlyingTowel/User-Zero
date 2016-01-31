                // check for landing
                if (Gravity >= 0 && scrPlayerCollisionBottom( x, y, 0, maskBig ) == true)
                {
                    if ( scrPlayerCollisionLeftLimiter( x, y, 0 ) && scrPlayerCollisionRightLimiter( x, y, 0 ) )
                        Angle   =   scrPlayerCalculateAngle( x, y, 0 );
                    else
                        Angle   =   0;
                        
                    Speed -=  sin(degtorad(Angle)) * Gravity;
                    Gravity =   0;
                    Ground  =   true;
                    
                    // If pressing down, roll
                   if (KeyDown && abs(Speed) >= 0.2 && Action != ActionGlideSlide) 
                      {
                        Action                = ActionRolling;
                        FlagsAllowCommonInput = false;
                        if (instance_exists(objPlayerSonic)) sound_play(sndSpinDashGo) else sound_play(sndRollClassic);
                      }
                   }
                 
                
    // ---- Check for ceiling landing ---------------------------------------------
    if (Gravity<0 && scrPlayerCollisionTop(x,y,0,maskMega)==true) {
        // Calculate new terrain angle
        Angle = 180;

        // Check if possible to land using that angle
        if (scrPlayerCollisionLeftLimiter(x,y,Angle)==true && scrPlayerCollisionRightLimiter(x,y,Angle)==true) {
            Angle = scrPlayerCalculateAngle(x,y,Angle);

            // Check if the landed angle isn't a flat top
            if (Angle>150 && Angle<210) {
                Angle = 0;
                exit;
            }
        } else {
            Angle = 0;
            exit;
        }
            
        // Calculate new movement values
        Speed   -= sin(degtorad(Angle))*Gravity;
        Ground  =  true;
    }
