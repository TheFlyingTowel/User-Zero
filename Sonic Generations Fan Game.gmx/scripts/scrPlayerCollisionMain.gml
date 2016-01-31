/*
*       player_collision_main( x, y );
*
*   =============================================
*
*   This functions returns if the main sensor has collided
*
*/

    /* This function is used essentially for collision detection with slopes up. 
       It just detect collision of the main sensor (the big sensor that involves the
       main collisions).
    */
    
    // Store the actual mask for setting it up later
    temporal_mask   =   mask_index;
    mask_index      =   maskMain;

    // Test collision
    collision_test  =   scrPlayerCollision( floor(argument0), floor(argument1), Layer );

    // Set to the old mask
    mask_index      =   temporal_mask;
    
    // Calculate the direction
    return  collision_test;
