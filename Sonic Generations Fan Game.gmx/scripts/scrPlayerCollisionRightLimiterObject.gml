/*
*   player_collision_left_edge_object(x,y,angle,object)
*
*   =============================================
*
*   This functions returns if the left edge sensor has collided
*   on the given angle.
*
*/

    var test_x, test_y;

    // Store the actual mask for setting it up later
    temporal_mask   =   mask_index;
    temporal_index  =   sprite_index;
    temporal_image  =   image_index;
    
    mask_index      =   maskLines;
    sprite_index    =   maskLines;
    image_index     =   floor(argument2/22.5);  // 0 to 359 possible images

    // Transform angle to radians and precalculate cosine and sine
    argument2   = degtorad(argument2);
    cosine      = cos(argument2);
    sine        = sin(argument2);

    // Get x and y coordinates of the test
    test_x = floor(argument0 + cosine * 8 + sine * 11);
    test_y = floor(argument1 - sine * 8 + cosine * 11);
    
    // Test collision
    collision_test  =   instance_place( test_x, test_y, argument3);
    
    // Set to the old mask
    mask_index      =   temporal_mask;
    sprite_index    =   temporal_index;
    image_index     =   temporal_image;
    
    // Calculate the direction
    return  collision_test;