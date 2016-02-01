// ==== FUNCTION ====================================================================
// scrObjectCollisionTop()
// ==================================================================================
// 

    var CollisionOffsetX, CollisionOffsetY;

    CollisionOffsetX = argument0-SensorOffsetX;
    CollisionOffsetY = argument1-SensorOffsetY;

    return  collision_rectangle(CollisionOffsetX, CollisionOffsetY-1,
                                CollisionOffsetX+SensorWidth, CollisionOffsetY,
                                objParentTerrain, true, true);