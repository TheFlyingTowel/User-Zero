// ==== FUNCTION ====================================================================
// scrWrapAngle(angle)
// ==================================================================================
//  Wraps angle within 0 to 360 range,ar interpolation
//  (gradient) between "a" and "b" at step "t". Remember
//  that "t" should be in range from 0 to 1.

    while(argument0<0.0)    argument0+=360;
    while(argument0>=360.0) argument0-=360;
    return argument0;