// Usage: sound_set_position(sound, posX, posY, listenerX, listenerY, minrange, maxrange, minvolume, maxvolume, maxpan)
// argument                      0,    1,    2,         3,         4,        5,        6,         7          8       9
// Parameters:
// * minrange:  Distance from which on the sound has the full volume.
// * maxrange:  Distance from which on the sound is not hearable anymore.
// * maxvolume: The maximum volume. Usually 1.

// This function/script allows adjusting  a sound such that it gives the impression
// of originating from a position relative to the listener. 
// This works only for one instance of the sound at a time (one-sound-per-position).

// All the functionality used for this is also available in the un-registered version of Game Maker,
// unlike the real 3D positional sound commands.

// Measure distance and calculate volume from this. 
var distance, volume, difference;
distance = sqrt(sqr(argument3 - argument1) + sqr(argument4 - argument2));

if      (distance > argument6) 
    volume = argument7;
else if (distance < argument5)
    volume = argument8;
else
{
    difference = argument6 - argument5;
    volume     = 1 - ((distance - argument5) / difference);
    volume    *= (argument8 - argument7);
    volume    += argument7;
}

// Calculate pan from angle
var pan;
pan = cos(point_direction(argument3, argument4, argument1, argument2) / 180 * pi);
pan *= argument9;

// Apply changes
sound_pan   (argument0, pan);
sound_volume(argument0, volume);
