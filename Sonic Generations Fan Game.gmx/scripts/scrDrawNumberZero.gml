
    // draw_number_zero(x, y, number, length)
    var number_string, zeros_string;
    number_string = string(argument2);
    zeros_string  = "";

    // Add all necessary 0    
    for (i=0; i<(argument3-string_length(number_string)); i+=1)
        zeros_string = zeros_string + "0";

    // Return
    draw_text(argument0, argument1, zeros_string+number_string);