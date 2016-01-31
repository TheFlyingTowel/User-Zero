// ==== FUNCTION ====================================================================
// scrPlayerMotionHurt()
// ==================================================================================

    if (Action = ActionDie) exit;
    if (Action = ActionPipe) exit;
    if (Invincibility) exit;
    
    FlagsAllowCommonInput = false;

    // check if the player had a shield or is player 2
    if (Shield) 
    {
        Shield  = 0;

        Action  = ActionHurt;
        if (Ground) FlagsAllowCommonInput = true;
        if (sign(Speed) != 0) 
        {
            Speed = -2.7*sign(Speed);
            AnimationDirection = -sign(Speed);
        }
        else Speed = -2.7*AnimationDirection;
        Gravity = -4;
        Ground  = false;
        Angle = 0;
        Invincibility       = 2;
        InvincibilityTimer = 240;
        sound_play(sndHitSpike);

    }
    else if (global.Rings)
    {
        scrPlayerCreateRingLoss(min(20, global.Rings), x, y-4);
        global.Rings = 0;

        Action  = ActionHurt;
        if (Ground) FlagsAllowCommonInput = true;
        if (sign(Speed) != 0) 
        {
            Speed = -2.7*sign(Speed);
            AnimationDirection = -sign(Speed);
        }
        else Speed = -2.7*AnimationDirection;
        Gravity = -4;
        Ground  = false;
        Angle = 0;
        Invincibility       = 2;
        InvincibilityTimer = 240;
        sound_play(sndHitSpike);
        sound_play(sndRingLose);

    } else {
    Action = ActionDie;
    sound_stop(sndSliding);
    sound_play(sndDie);
    Speed = 0;
    Gravity = -6;
    Ground = false;
    }
