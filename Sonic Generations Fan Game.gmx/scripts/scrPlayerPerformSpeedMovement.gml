// ==== FUNCTION ====================================================================
// scrPlayerMotionPerformSpeedMovement()
// ==================================================================================

        x   +=  cos(degtorad(Angle)) * Speed;
        y   -=  sin(degtorad(Angle)) * Speed;

            // move the player outside in case he has got stuck into the wall
            while (Speed > 0 && scrPlayerCollisionRight( x, y, Angle, maskMid ) == true )
            {
                x   -=  cos(degtorad(Angle));
                y   +=  sin(degtorad(Angle));
            }
            
            while (Speed < 0 && scrPlayerCollisionLeft( x, y, Angle, maskMid ) == true )
            {
                x   +=  cos(degtorad(Angle));
                y   -=  sin(degtorad(Angle));
            }
