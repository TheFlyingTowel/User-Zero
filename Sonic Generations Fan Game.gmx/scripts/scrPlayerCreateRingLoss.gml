// ==== FUNCTION ====================================================================
// scrPlayerCreateRingLoss()
// ==================================================================================
// Creates Ring loss.

var RingsLost;
var OffsetX;
var OffsetY;

var RingsAngle; // Actual RingsAngle of the rings (for launch it in a direction)
var RingsStep; // Angle step between all the rings to create
var Steps;
var RingsInRow;
var _Handle; // Handle to the object, we'll need it to change the settings of the ring

RingsLost = argument0;
OffsetX = argument1;
OffsetY = argument2;
RingsAngle = 0;

/*
The difficulty of the ring loss example doesn't stay at the actual
ring movement, but more on the creation method. In Sonic games, the
ring loss creates circles of 16 rings, with a max of 2 circles (32 rings).

Then, how can we mimic that? Yet again, we're going to use our
best pal, the trigonometry. The first stage of the routine is to check
on how much stages the rings will be created. For this, since each ring of
rings has 16 rings, we need to divide the total number of rings to lose by 16.

That is how we start.
*/

// Reject if we aren't going to create any rings, otherwise, there would be a division
// by zero on calculating the step RingsAngle.
if ( RingsLost == 0 ) return false;

// Set the maximum value of dropped rings to 32
RingsLost = min(32, RingsLost);

// Since only 16 rings can be thrown in one row, check out how many rows of rings there will be
Steps = ceil(RingsLost/16);

// And now, create all the rings
var i;
for (i=1; i<=Steps; i+=1) {
// Set the RingsAngle to 0, that way we'll start over.
RingsAngle = 0;

// Calculate how much rings will be thrown in this row, for later use.
RingsInRow = min(16,RingsLost);

// And now, since the rings are fired into 16 directions, calculate the RingsAngle step between
// each direction, depending on how many rings would be thrown. Also, calculate them in radians
// for speeding up the calculations.
RingsStep = degtorad(360/RingsInRow); // Of course, transform into radians

// Now, repeat the creation sequency the necessary amount of times.
repeat (RingsInRow) {
// Create a new rings instance and get it's id.
_Handle = instance_create (OffsetX, OffsetY, objRing);

// Setup motion of the ring.
_Handle.Motion = true; // Yeah, the ring is in movement
_Handle.Speed = cos(RingsAngle)*(3.14159/i); // Thrown at a lower speed depending
_Handle.Gravity = -sin(RingsAngle)*(3.14159/i); // on the actual row of rings.
_Handle.Timer = 300;

// Substract one to the total rings to lose count.
RingsLost -= 1;
if (RingsLost == 0) return true; // If there are no more rings, exit.

// And now, go to the next RingsAngle
RingsAngle += RingsStep;
}
}

// All done
return true;