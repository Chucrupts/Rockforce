jump_state		= place_meeting(x, y + 1, oSolid) && (key_jump) && !ladder;
wall_jump_state = place_meeting(x - 1, y, oSolid) || place_meeting(x + 1, y, oSolid) && !place_meeting(x, y, oLadder) && !place_meeting(x, y + 1, oSolid);
ladder_state	= place_meeting(x, y, oLadder) || place_meeting(x, y + 1, oLadderSolid);
on_ground_state = place_meeting(x, y + 1, oSolid);


