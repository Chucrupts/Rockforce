/// Inicialisation vars
hspd = 0;
vspd = 0;
grv = 0.3;
walkspd = 2;
firingdelay = 0;

enum states {
	idle,
	wander,
	attack	
}

state = states.idle;
counter = 0;
begin_position = x;
enemy_vision = instance_create_layer(x, y , layer, oEnemyVision);
