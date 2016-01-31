// ==== FUNCTION ====================================================================
// scrObjectCollisionLeft()
// ==================================================================================
// 

    var CollisionOffsetX, CollisionOffsetY;

    CollisionOffsetX = argument0-SensorOffsetX;
    CollisionOffsetY = argument1-SensorOffsetY;

    return  collision_rectangle(CollisionOffsetX-1, CollisionOffsetY,
                                CollisionOffsetX, CollisionOffsetY+SensorHeight-SensorStepUp,
                                objParentTerrain, true, true);