// ---- Invincibility ---

    if (InvincibilityTimer > 0)
    {
        InvincibilityTimer -= 1;
        if (InvincibilityTimer == 0) Invincibility = 0;
    }

    
// ---- Shoes ---
    if (SpeedSneakersTimer > 0)
    {
        SpeedSneakersTimer -= 1;
        if (SpeedSneakersTimer == 0) SpeedSneakers = 0;
    }