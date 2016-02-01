

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
        else if (Ground == true && KeyActionPressed && Action != ActionLookUp && Action != ActionCrouchDown && Action != ActionSpinDash )
        {
            // Jump
            Gravity     =   cos(degtorad(Angle))*(JumpStrength/2) - sin(degtorad(Angle))*Speed;  // algorithm for a sonic-like
            Speed       =   cos(degtorad(Angle))*Speed + sin(degtorad(Angle))*JumpStrength;      // jump.
            
            Ground      =   false;
            Angle       =   0;
            JumpTimer  =   0;
            
            Action      =   ActionJumping;
        }
        
        // --- Look Up ---
        if ( Action == ActionLookUp )
        {
            if (KeyLeft || KeyRight || (!KeyUp && Ground == true))
            {
                Action            = ActionNormal;
                LookUpTimer = 0;
            }
        } else {
            if (Ground == true && Speed == 0 && KeyUp && Action == ActionNormal && !KeyDown && !KeyLeft && !KeyRight)
            {
                Action = ActionLookUp;
            }        
        }
    
        // --- Crouch Down ---
        if ( Action == ActionCrouchDown )
        {
            if (!KeyDown && Ground == true)
            {
                Action            = ActionNormal;
            }
        } else {
            if (Ground == true && Speed == 0 && KeyDown && Action == ActionNormal && !KeyUp && !KeyLeft && !KeyRight)
            {
                Action = ActionCrouchDown;
            }        
        }
