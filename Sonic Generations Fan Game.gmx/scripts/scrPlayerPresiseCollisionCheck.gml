// ==== FUNCTION ====================================================================
// scrPlayerPresiseCollisionCheck(x, y, Object)
// ==================================================================================
// 

    var CollisionTest;
    
    argument0 = floor(argument0);
    argument1 = floor(argument1);

    // ------------------------------------------------------------------------------
        
        // ---- Calculate position --------------------------------------------------
        CollisionTest    = place_meeting(argument0, argument1, argument2);
        
        // ---- Revert collision mask -----------------------------------------------
        sprite_index     = maskMain;
        image_index      = 0;
        image_xscale     = 1;
        image_yscale     = 1;
        image_angle      = 0;

    // ------------------------------------------------------------------------------
    return CollisionTest;