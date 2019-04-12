/// @description Insert description here
// You can write your code in this editor
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


if (touching) game_restart();