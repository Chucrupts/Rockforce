
// Basic Scripts
ScrCollision();
ScrAnimation(sEnemy,sEnemyRun,sEnemy);

// Attach enemy vision
enemy_vision.x = x;
enemy_vision.y = y;

if (state == states.idle)
{
	#region Idle
	// Behaviour
	counter +=1;
	hspd = 0;
	
	// Transition Triggers
	if (counter >= room_speed * 2)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0 : state = states.wander;
			case 1 : counter = 0; break;
		}
	}
	with (enemy_vision)
	{
		if (place_meeting(x, y, oPlayer))
		{
			other.state = states.attack;
		}
	}
	#endregion
}
else if (state == states.wander)
{
	#region Wander
	// Behaviour
	counter +=1;
	
	if (x > begin_position + 20 || x < begin_position - 20) hspd = hspd * -1;
	
	// Transition Triggers
	if (counter >= room_speed * 3)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0 : state = states.idle;
			case 1 :
				hspd = choose(1, -1);
				counter = 0;
		}
	}
	with (enemy_vision)
	{
		if (place_meeting(x, y, oPlayer))
		{
			other.state = states.attack;
		}
	}
	
	#endregion
}
else if (state == states.attack)
{
	#region Wander
	// Behaviour
	hspd = 0;
	image_xscale = sign( x - oPlayer.x ) * -1;
	
	
	
	#endregion
}
	

