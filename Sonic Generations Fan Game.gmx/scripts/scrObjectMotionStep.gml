// ==== FUNCTION ====================================================================
// scrObjectMotionStep()
// ==================================================================================
// Processes 1 step of motion

    // Quit if not in motion
    if (Motion == false) exit;
    
    // ---- Limit movement values ---------------------------------------------------
    Speed   = min(max(Speed, -TopSpeed), TopSpeed);
    Gravity = min(max(Gravity, -TopGravity), TopGravity);
    
    // ---- X axis movement ---------------------------------------------------------
    x += Speed;
    while (Speed>=0 && scrObjectCollisionRight(x, y)) x -= 1;
    while (Speed<=0 && scrObjectCollisionLeft(x, y))  x += 1;

    // ---- Y axis movement ---------------------------------------------------------
    if (Ground == false) {
        y += Gravity;
        Gravity += GravityForce;
        while (Gravity<0 && scrObjectCollisionTop(x, y))     y += 1;
        while (Gravity>=0 && scrObjectCollisionBottom(x, y)) y -= 1;
        while (Speed>=0 && scrObjectCollisionRight(x, y))    x -= 1;
        while (Speed<=0 && scrObjectCollisionLeft(x, y))     x += 1;
        
        // ---- Landing -------------------------------------------------------------
        if (Gravity>=0 && (scrObjectCollisionBottom(x, y+SensorStepDown) 
        || scrObjectCollisionPlatformBottom(x, y+SensorStepDown))) {
           Gravity = 0;
           Ground  = true;
        }
    }    

    // ---- Slope movement ----------------------------------------------------------
    if (Ground) {
        while (scrObjectCollisionMain(x, y) == false && scrObjectCollisionBottom(x, y+SensorStepDown))
            y += 1;
        while (scrObjectCollisionMain(x, y))
            y -= 1;
    }

    // ---- Check if the object is on the ground ------------------------------------
    if (Ground && !scrObjectCollisionBottom(x, y+SensorStepDown)) Ground = false;
