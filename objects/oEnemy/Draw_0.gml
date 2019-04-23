/// @description Insert description here
// You can write your code in this editor

if (state != states.attack && image_xscale < 0) recoil = 0;

draw_self();
draw_sprite_ext(sEnenyGun, image_index, x + recoil, y, other.image_xscale, image_yscale, image_angle, image_blend, image_alpha);