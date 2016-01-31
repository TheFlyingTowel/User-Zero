        // ---- Enemies ------------------------------------------------------------------------------
        objHandle = scrPlayerCollisionMainObject(x, y, objParentEnemy);
        if (objHandle != noone)
        {
            if (objHandle.Harmful && !Invincibility)
            {
                scrPlayerMotionHurt();
            }
            else
            {
                if (Action == ActionRolling || Action == ActionJumping || Action == ActionStomping  
                || Action == ActionSpinDash || Action == ActionBoostSpin || (Action == ActionShield) 
                || Harmful == 1 || Boost == 1 || Invincibility == 1 || Invincibility == 3)
                {   
                    // Bounce
                    if (!Ground)
                    {
                        Gravity = -7;
                        Homing = 0;
                    }
                    
                    // Destroy enemy
                    with(objHandle) instance_destroy();
                } else scrPlayerMotionHurt();
            }
        }
