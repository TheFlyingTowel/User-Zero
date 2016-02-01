//This is the code for the Zoom tubes from Green Hill Zone in Sonic 1.
//Ported from the Sonic Worlds Engine in MMF2.

var ObjHandle;

ObjHandle = scrPlayerCollisionMainObject(x, y, objForcedTubeRoll);

if (ObjHandle != noone && Ground == true){

if Action != ActionRolling {Action = ActionRolling; if (instance_exists(objPlayerSonic)) sound_play(sndSpinDashGo) else sound_play(sndRollClassic);};

if (abs(Speed) < 1){

Speed = sin(objPlayer.AnimationAngle)*-10;

if (KeyRight){Speed = sin(objPlayer.AnimationAngle)*-10;}
if (KeyLeft){Speed = sin(objPlayer.AnimationAngle)*-10;}

switch (AnimationDirection){
case 1: Speed = 4;
break;
case-1: Speed =-4;
break;
}

    }
}

