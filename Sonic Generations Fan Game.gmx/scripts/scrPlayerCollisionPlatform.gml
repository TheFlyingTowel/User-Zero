
    // player_collision(x, y, layer)
    if( argument2 == 2) return place_meeting(argument0, argument1, objParentRail);
    if (place_meeting(argument0, argument1, objParentTerrain))    return true;    // Check for normal solid
    if (place_meeting(argument0, argument1, objParentPlatform)) return true;    // Check for platform (without needing to be in ground)
    if (argument2 == 0) return place_meeting(argument0, argument1, objParentTerrainLayer0);             // Check for low layer
    else                return place_meeting(argument0, argument1, objParentTerrainLayer1);            // Check for high layer
