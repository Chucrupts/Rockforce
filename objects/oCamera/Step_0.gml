/// @description Upadate Camera

// Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo - x) / 5; //-- 25
y += (yTo - y) / 5; //-- 25

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
ScrParalax();