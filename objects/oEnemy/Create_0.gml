/// Inicialisation vars
hspd = 0;
vspd = 0;
grv = 0.3;
walkspd = 2;
firingdelay = 0;
recoil = 3;

enum states {
	idle,
	wander,
	attack	
}

state = states.idle;
counter = 0;
counter_attack = 0;
begin_position = x;
image_xscale = -1;
