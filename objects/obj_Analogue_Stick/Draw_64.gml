//draw_sprite(sprite_index, 0, x, y);
//draw_sprite(sprite_index, 1, x + joyx, y + joyy);

draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, 1, x + joyx, y + joyy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

//Draw Border
//draw_circle(x, y, radius, 2);

//Draw CenterPoint
//draw_circle(x, y, 10, 2);

//Draw Joystick
//draw_circle(x + joyx, y +joyy, 8, 2);
//draw_line(x,y, x+joyx, y+joyy);

