// ==== FUNCTION ====================================================================
// scrPlayerHandleObjectsInteractive()
// ==================================================================================
//
if (Action==ActionHurt) exit;
if (Action==ActionDie) exit;
var _ObjectHandle;

// --- Main Hurt Object ---
if (scrPlayerCollisionMainObject(x,y,objParentHurtPlayer)) {
scrPlayerMotionHurt();
}
if (scrPlayerCollisionMainObject(x,y,obj_GreenHill_BigChopperPar)) {
scrPlayerMotionHurt();
}

// --- Nut & Screw ---
_ObjectHandle = instance_nearest(x, y, objScrewBolt);
if (_ObjectHandle != noone) {
if (Ground == true && scrPlayerCollisionBottomObject(x,y,Angle,maskMega,_ObjectHandle) &&
_ObjectHandle.ScrewActive == false && x <= _ObjectHandle.x+2 && x >= _ObjectHandle.x-2) {
with (_ObjectHandle) {
if ((other.KeyRight && (place_meeting(x, y-1, objParentTerrain) == false)) ||
(other.KeyLeft && place_meeting(x, y+1, objParentTerrain) == false)) {
ScrewActive = true;
other.FlagsOnScrew = true;
other.Speed = 0;
other.FlagsAllowX = false;
}
}
} else if (_ObjectHandle.ScrewActive == true) {
// ---- Add acceleration while pressing ----------------------------------------
if ((Action == ActionNormal) || (Action == ActionJumping)) {
if (KeyRight && _ObjectHandle.Speed > -TopSpeed) _ObjectHandle.Speed -= Acceleration;
if (KeyLeft && _ObjectHandle.Speed < TopSpeed) _ObjectHandle.Speed += Acceleration;
}
// ---- Deceleration while no key is pressed -----------------------------------
if (!KeyRight && _ObjectHandle.Speed < 0 && Ground == true)
_ObjectHandle.Speed = min(_ObjectHandle.Speed+Deceleration, 0);
if (!KeyLeft && _ObjectHandle.Speed > 0 && Ground == true)
_ObjectHandle.Speed = max(_ObjectHandle.Speed-Deceleration, 0);

// ---- Check for stopping conditions ------------------------------------------
with (_ObjectHandle) {
if ((other.Ground == false || place_meeting(x, y+sign(Speed), objParentTerrain) == true && ScrewActive == true)) {
Speed = 0;
ScrewActive = false;
other.FlagsOnScrew = false;
other.FlagsAllowX = true;
}
}
// --- Snap player to center ---
x = _ObjectHandle.x;
y = _ObjectHandle.y-13;
}
}

// ---- Bumpers ------------------------------------------------------------------------------
objHandle = scrPlayerCollisionMainObject(x, y, objBumper);
if (objHandle != noone)
{
  // Get the angle between the bumper and Sonic and then reset the and y speeds
  AngleToBumper = degtorad(round(scrWrapAngle(point_direction(x, y, objHandle.x, objHandle.y)-90)/22.5)*22.5);
  Speed = sin(scrWrapAngle(AngleToBumper))*7;
  Gravity = cos(scrWrapAngle(AngleToBumper))*7;
  objHandle.alarm[0]    = 20;
  objHandle.image_speed = 0.5;
  Ground = false;
  Action = 1;
  global.Score += 10;
  sound_play(sndBumper);
}

// --- Colored Rings ---
objHandle = instance_nearest(x, y, objColorRing);
if (scrPlayerCollisionMainObject(x,y,objHandle)) {
if (Action != ActionColorRing) 
  {
  x = objHandle.x;  
  y = objHandle.y;
  sound_play(sndColorRingA);
  IdleTimer = 0;
  Ground = false;
  Action = ActionColorRing;
  ShoomDirection = 1;
  TrickAngle = objHandle.RingAngle;
  }
}

// --- Red Rings ---
objHandle = scrPlayerCollisionMainObject(x, y, objRedRing);
if (objHandle != noone)
{ 
  if objHandle.Activated = false
  {
  with (objHandle) {execute_string("global.RedRing[Index] = 1")};
  global.RedRing += 1;
  sound_play(sndRedRing);
  effect_create_above(ef_ring,objHandle.x,objHandle.y,0.55,c_red);
  instance_create(objHandle.x,objHandle.y,objRedRingFade);
  with (objHandle) 
  {Activated = true;}
  }
}


// --- Air Dashers ---
objHandle = scrPlayerCollisionMainObject(x, y, objAirDasher);
if (objHandle != noone) 
{
if objHandle.Usable = false
{
 x = objHandle.x;  
 y = objHandle.y;
 MotionAngle = objHandle.RingAngle;
 Ground = false;
 Speed = cos(degtorad(objHandle.RingAngle))*10;
 Gravity = sin(degtorad(objHandle.RingAngle))*-10;
 Action = ActionAirDashing;
 Homing = 0;
 HomingMiss = 0;
 ActionTimer = 0;
 ShieldUsable = 0;
 sound_play(sndAirDasher);
 effect_create_above(ef_ring,objHandle.x,objHandle.y,0.4,c_orange) 
 objHandle.Usable = true;
 objHandle.alarm[0] = 50;
}
}

// --- Boost Ramps ---
objHandle = instance_nearest(x,y,objBoostRamp);
if (scrPlayerCollisionMainObject(x, y, objHandle)) {
if (Action != ActionShoom) 
  {
  Ground = false;
  Angle      = 0;
  Action = ActionShoom;
  Animation = "Shoom";
  ShoomDirection = 1;
  Gravity = -6;
  sound_stop(sndJumpPanel);
  sound_play(sndJumpPanel);
  }
}
objHandle = instance_nearest(x,y,objRBoostRamp);
if (scrPlayerCollisionMainObject(x, y, objHandle)) {
if (Action != ActionShoom) 
  {
  Ground = false;
  Angle      = 0;
  Animation = "Shoom";
  Action = ActionShoom;
  ShoomDirection = -1;
  Gravity = -6;
  sound_stop(sndJumpPanel);
  sound_play(sndJumpPanel);
  }
}


// --- Unleashed Trick Ramps ---
objHandle = instance_nearest(x,y,objTrickRamp);
if (scrPlayerCollisionRightObject(x, y, Angle, maskMain, objHandle) and Speed>1) {
if (Action != ActionReaction) 
  {
  Ground = false;
  IdleTimer = 0;
  Angle     = 0;
  Action = ActionReaction;
  Gravity = -6;
  Animation = "Shoom";
  ShoomDirection = objHandle.ShoomDirection;
  objHandle.alarm[10] = 1;
  sound_stop(sndJumpPanel);
  sound_play(sndJumpPanel);
  }
}



// --- Color Trick Ramps ---
objHandle = instance_nearest(x,y,objColorRamp);
if (scrPlayerCollisionMainObject(x, y, objHandle)) {
if (Action != ActionTrick) 
  {
  Animation = "Shoom";
  BonusSpeed = 0;
  TrickTimer = 0;
  Angle      = 0;
  Ground = false;
  Action = ActionTrick;
  ShoomDirection = 1;
  Gravity = -7;
  sound_stop(sndJumpPanel);
  sound_play(sndJumpPanel);
  }
}

// --- Poles ---
objHandle = instance_nearest(x,y,objSpringPole);
if (scrPlayerCollisionMainObject(x, y, objHandle)) {
if (Gravity >= 0) 
  {
  Angle      = 0;
  Ground     = false;
  Homing     = false;
  HomingMiss = false;
  Action  = ActionSpring;
  if (objHandle.XScale == 1)
    {
    if (floor(x)<=objHandle.x-18) {Gravity = -10} else {Gravity = -5};
    }
  else {
    if (floor(x)>=objHandle.x+18) {Gravity = -10} else {Gravity = -5};
    }
  sound_play(sndSpringPole);
  objHandle.SpringActivated = true;
  }
}

// --- Collision With One of the Goals ---
objHandle = scrPlayerCollisionMainObject(x, y, objParentGoal);
if ( objHandle != noone ) then if ( objHandle.finish == false )
{
if (AnimationDirection == 1) Speed = 9 else Speed = -9;
global.TimeLock = 1;
with objPlayer FlagsAllowKeyboard = false;

  objGlobalController.RingsTimer = 0;
  objGlobalController.ScoreTimer = 0;
  objGlobalController.AlphaTimer = 0;
  objGlobalController.LivesTimer = 0;
  objGlobalController.BoostTimer = 0;

global.Camera1.CameraTarget = objHandle.object_index;
view_hspeed[0] = 1;
view_vspeed[0] = 1;

        with (objHandle)
        {
            image_speed = img_speed;
            if ( object_index = objSignPost ) {sound_play(sound)}
            else {sound_loop(sound)};
            
            finish = true;
        }
}

// --- Cloud Spring --------------------------------------------
_ObjectHandle = instance_nearest(x, y, objCloud);
if (scrPlayerCollisionBottomObject(x,y,Angle,maskBig,_ObjectHandle) && Gravity>=0)
{
 Ground = false;
 Gravity = -8;
 sound_stop(sndObjCloud);
 sound_play(sndObjCloud);
 Action = ActionCloud;
}

if Action = ActionCloud {
 Animation = "Running";
 if Ground {Action = ActionNormal AnimationAngle = 0};
}





