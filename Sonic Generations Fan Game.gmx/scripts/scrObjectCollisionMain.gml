// ==== FUNCTION ====================================================================
// scrObjectCollisionMain()
// ==================================================================================
// 

    var CollisionOffsetX, CollisionOffsetY;

    CollisionOffsetX = argument0-SensorOffsetX;
    CollisionOffsetY = argument1-SensorOffsetY;

    return  collision_rectangle(CollisionOffsetX, CollisionOffsetY,
                                CollisionOffsetX+SensorWidth, CollisionOffsetY+SensorHeight,
                                objParentTerrain, true, true);