// ==== FUNCTION ====================================================================
// scrObjectCollisionRight()
// ==================================================================================
// 

    var CollisionOffsetX, CollisionOffsetY;

    CollisionOffsetX = argument0-SensorOffsetX+SensorWidth;
    CollisionOffsetY = argument1-SensorOffsetY;

    return  collision_rectangle(CollisionOffsetX, CollisionOffsetY,
                                CollisionOffsetX+1, CollisionOffsetY+SensorHeight-SensorStepUp,
                                objParentTerrain, true, true);