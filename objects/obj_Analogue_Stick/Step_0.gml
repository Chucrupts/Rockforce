 /// @description Handle Input
if(touching){

    if(device_mouse_check_button(touchid, mb_left) == false){
        touching = false
        touchid = -1;
    }
    
}else{

    for(i = 0; i < 2; i++){
    
            touchPoint = point_distance(x,y, device_mouse_x_to_gui(i),device_mouse_y_to_gui(i))
            if(touchPoint <= radius && device_mouse_check_button(i, mb_left)){
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
    
}else{

    joyx = lerp(joyx, 0, 0.5);
    joyy = lerp(joyy, 0, 0.5);
    
}

//normalize
normalx = (joyx / radius) * 1;
normaly = (joyy / radius) * 1;

//deadzone
if(abs(normalx) < deadzone){ normalx = 0; }
if(abs(normaly) < deadzone){ normaly = 0; }

