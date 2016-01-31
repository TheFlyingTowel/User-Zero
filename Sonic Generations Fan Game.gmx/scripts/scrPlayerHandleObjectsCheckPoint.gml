if (Action = ActionHurt) exit;

       //Checkpoints
        objHandle = scrPlayerCollisionMainObject(x, y, objCheckPoint);
        if (objHandle != noone)
        {
            if (objHandle.Activated == false)
            {
                sound_play(sndCheckpoint);
                objHandle.Activated     = true;
                objHandle.Rotating      = true;
                objHandle.sprite_index = sprCheckpointSparkle;
                global.StartX = objHandle.x;
                global.StartY = objHandle.y;
                global.ScorePrevious = global.Score;
                global.GameTimePrevious = global.GameTime; 
                global.GetStart = 1;
            }
        }
