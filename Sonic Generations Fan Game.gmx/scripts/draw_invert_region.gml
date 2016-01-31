/*

void draw_invert_region(x, y, width, height)

*/

argument0 -= 0.5;
argument1 -= 0.5;

draw_set_blend_mode_ext(bm_inv_dest_color, bm_zero);
draw_rectangle(argument0, argument1, argument0 + argument2, argument1 + argument3, false);
draw_set_blend_mode(bm_normal);
