/// @description Insert description here
// You can write your code in this editor

next = instance_nearest(x, y - 20 , object_index);
if (next == id)
{
	instance_create_layer(x, y, "Enemies", oLadderSolid);
	instance_create_layer(x, y + 4, "Enemies", oLadderSolid1);
}