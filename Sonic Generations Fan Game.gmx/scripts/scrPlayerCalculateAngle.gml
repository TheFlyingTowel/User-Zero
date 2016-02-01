/*
*       scrPlayerCalculateAngle( x, y, angle );
*
*   =============================================
*
*   This functions returns the angle of the surface at the given position & angle.
*
*/


    // Temporal values
    temporal_mask   =   mask_index;
    mask_index      =   maskDot;
    
    // Limit the angle we're using from 360 directions to 36 for preventing thikering
    // when detecting the collision
    argument2   = round(argument2 / 10) * 10;

    // Set the starting position of the sensors (depending on angle)
    point_1_x   =   argument0 - cos(degtorad(argument2)) * 7;   // Left point
    point_1_y   =   argument1 + sin(degtorad(argument2)) * 7;

    point_2_x   =   argument0 + cos(degtorad(argument2)) * 7;   // Right point
    point_2_y   =   argument1 - sin(degtorad(argument2)) * 7;
    
    // Now, perform the checking. Push down the two points in order to know the angle
    repeat(25)      // Repeat a limited amount of times
    {
        if (scrPlayerCollision(floor(point_1_x), floor(point_1_y), Layer) == false)
        {
            point_1_x   +=  sin(degtorad(argument2));
            point_1_y   +=  cos(degtorad(argument2));
        }
        if (scrPlayerCollision(floor(point_2_x), floor(point_2_y), Layer) == false)
        {
            point_2_x   +=  sin(degtorad(argument2));
            point_2_y   +=  cos(degtorad(argument2));
        }        
    }

    // Return to the old mask
    mask_index      =   temporal_mask;
    
    // Calculate the direction
    return floor(point_direction(point_1_x,point_1_y,point_2_x,point_2_y));
    
    