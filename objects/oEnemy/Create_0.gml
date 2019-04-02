/// Inicialisation vars
hspd = 0;
vspd = 0;
grv = 0.3;
walkspd = 2;

enum states {
	idle,
	wander,
	alert,
	attack
}

state = states.idle;
counter = 0;
my_dir = 0;
moveX = 0;
beginPosition = x;

