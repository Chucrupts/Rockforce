    /// @description Handle Input
if(touching){

    if(device_mouse_check_button(touchid, mb_left) == false){
        touching = false
        touchid = -1;
    }
    
}else{

    for(i = 0; i < 2; i++){
    
            touchPoint = point_distance(x,y, device_mouse_x_to_gui(i),device_mouse_y_to_gui(i))
            if(touchPoint <= radius_touching && device_mouse_check_button(i, mb_left)){
                touchid = i;
                touching = true;
            }
        
    }

}


///Logic for Sticks
//handle input
if(touching){

    touchDistance = min(point_distance(x,y, device_mouse_x_to_gui(touchid),device_mouse_y_to_gui(touchid)), radius);
    dir = point_direction(x,y, device_mouse_x_to_gui(touchid),device_mouse_y_to_gui(touchid));
    normaldir = dir;
    joyx = lerp(joyx, lengthdir_x(touchDistance, dir), 0.4);
    joyy = lerp(joyy, lengthdir_y(touchDistance, dir), 0.4);
    image_alpha = 1;
}else{
	image_alpha = 0.5;
    joyx = lerp(joyx, 0, 0.5);
    joyy = lerp(joyy, 0, 0.5);
    
}

//normalize
normalx = (joyx / radius) * 1;
normaly = (joyy / radius) * 1;

//deadzone
if(abs(normalx) < deadzone){ normalx = 0; }
if(abs(normaly) < deadzone){ normaly = 0; }


// Obj follow the finger
if (mouse_check_button_pressed(mb_left))
{
	
	if (device_mouse_x_to_gui(0) <= (display_get_gui_width() / 3) && device_mouse_y_to_gui(0) >= (display_get_gui_height() / 1.5))
	{
		x = device_mouse_x_to_gui(0);
		y = device_mouse_y_to_gui(0);
		
			if (device_mouse_x_to_gui(0) < begin_position_x)
			{
				x = begin_position_x;
			}
			if (device_mouse_y_to_gui(0) > begin_position_y)
			{
				y = begin_position_y;
			}	
	}
}