// ==== FUNCTION ====================================================================
// scrCalculateRotatedPositionY(OffsetX, OffsetY, Angle)
// ==================================================================================

    argument2 = scrWrapAngle(argument2);
    return cos(degtorad(argument2))*argument1-sin(degtorad(argument2))*argument0;