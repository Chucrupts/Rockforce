/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, oBullet))
{
	var range = 1;
	var ran_x = irandom_range(-range,range);
	var ran_y = irandom_range(-range,range);
	draw_sprite_ext(sprite_index, image_index, x + ran_x, y + ran_y, image_xscale, image_yscale, 0, c_white, 1);
}
else 
{
	draw_self();
}
	