//export double FMODGroupSetPitch(double group, double pitch)

//Set the group pitch. 0 to 10, 1 is default
//Regular Groups are 1-4. 0 for the master group. Useful for bullet time on all sounds or underwater sound
//this does not override a channel pitch (it has none)
//See Also FMODGroupSetFrequency
return external_call(global.dll_FMODGroupSetPitch,argument0,argument1);