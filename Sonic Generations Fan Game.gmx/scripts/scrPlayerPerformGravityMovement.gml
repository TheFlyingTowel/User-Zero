

    // ---- Calculate movement speed for Y ------------------------------------- 
    var _MovementSpeed, _MovementSteps, _Movement; 
          
    _MovementSpeed = 0;
    _MovementSpeed = Gravity;
    
    /*
    if (Action != ActionClimb && Action != ActionClimbingRise) 
    {
       _MovementSpeed = Gravity;
    } 
    
    else if (Action == ActionClimb) 
    {
       _MovementSpeed = ClimbRate*ClimbMotion;
    }
    */
    
            //Actual movement
                x   +=  _MovementSpeed*sin(degtorad(Angle));
                y   +=  _MovementSpeed*cos(degtorad(Angle));

                // move the player outside in case he has got stuck into the floor or the ceiling           
                while (Gravity < 0 && scrPlayerCollisionTop( x, y, 0, maskMid ) == true )
                {
                    x += sin(degtorad(Angle));
                    y += cos(degtorad(Angle));
                }            

                while (Gravity > 0 && scrPlayerCollisionBottom( x, y, 0, maskMid ) == true )
                {
                    y   -=  cos(degtorad(Angle));
                }
                
                                
            // wall collision (yeah, again, we should perform that since the y axys has recently changed)
            while (scrPlayerCollisionRight( x, y, Angle, maskMid ) == true )
            {
                x   -=  cos(degtorad(Angle));
                y   +=  sin(degtorad(Angle));
            }
            
            while (scrPlayerCollisionLeft( x, y, Angle, maskMid ) == true )
            {
                x   +=  cos(degtorad(Angle));
                y   -=  sin(degtorad(Angle));
            }
