/// @description Upadate Camera

// Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

// Keep camera inside room
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

// Screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude));

// Update camera position
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

// Paralax backgorund

layer_x("Backgrounds_1", x/3);
layer_x("Backgrounds_2", x/4);
layer_x("Backgrounds_5", x/8);
layer_x("Backgrounds_6", x/8);