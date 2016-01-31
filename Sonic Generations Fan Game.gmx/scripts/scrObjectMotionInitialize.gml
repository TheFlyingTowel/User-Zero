// ==== FUNCTION ====================================================================
// scrObjectMotionInitialize(Width, Height, Xoffset, Yoffset, up step, down step)
// ==================================================================================
// Initializes motion for objects like monitors, blocks, etc

    // ---- Sensor variables --------------------------------------------------------
    SensorWidth    = argument0-2;
    SensorHeight   = argument1-2;
    SensorOffsetX  = argument2;
    SensorOffsetY  = argument3;
    SensorStepUp   = argument4;
    SensorStepDown = argument5;
    
    // ---- Movement variables ------------------------------------------------------
    Motion = true;

    Speed        = 0;
    Acceleration = 0;
    TopSpeed     = 0;

    Gravity      = 0;
    GravityForce = 0;
    TopGravity   = 0;

    Ground = false;