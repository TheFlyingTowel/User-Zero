
    // player_collision(x, y, layer)
    if (place_meeting(argument0, argument1, objTrickRamp) && Action != ActionReaction) return true; // Check for ramp solid
    if (place_meeting(argument0, argument1, objBoostRamp) && Action != ActionShoom)    return true;
    if (place_meeting(argument0, argument1, objRBoostRamp)&& Action != ActionShoom)    return true;
    if (place_meeting(argument0, argument1, objColorRamp) && Action != ActionTrick)    return true;
    
    if( argument2 == 2) return place_meeting(argument0, argument1, objParentRail);
    if (place_meeting(argument0, argument1, objParentTerrain))            return true;    // Check for normal solid
    if (place_meeting(argument0, argument1, objParentPlatform) && Ground) return true;    // Check for platform (only while on ground)
    if (argument2 == 0) return place_meeting(argument0, argument1, objParentTerrainLayer0);             // Check for low layer
    else                return place_meeting(argument0, argument1, objParentTerrainLayer1); 
