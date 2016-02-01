// ==== FUNCTION ====================================================================
// sc(rObjectCollisionPlatformBottomx, y)
// ==================================================================================
// 

    var CollisionOffsetX, CollisionOffsetY;

    CollisionOffsetX = argument0-SensorOffsetX;
    CollisionOffsetY = argument1-SensorOffsetY+SensorHeight;

    return  collision_rectangle(CollisionOffsetX, CollisionOffsetY,
                                CollisionOffsetX+SensorWidth, CollisionOffsetY+1,
                                objParentPlatform, true, true);
