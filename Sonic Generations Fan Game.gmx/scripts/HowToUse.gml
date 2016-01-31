var t;
t = "

Forum: http://gmc.yoyogames.com/index.php?showtopic=333705
GMFMODSimple v1.8 
Using 
FMOD Sound System, copyright � Firelight Technologies Pty, Ltd., 1994-2007.
FMOD Ex API version: 4.14.03 

 Demo and scripts
 Scripts Only (not tested, faders not included)

This system allows you to load sounds from file into your game

This system replaces the GM native sound system though it
should not interfere with it (on most cards)

You will find an equivalent similar FMOD function for most
commonly used GM sound functions though some functions are
'sound' relative while others are sound 'instance' relative

This system allows playing the same sound at different settings and coordinates

This system allows controlling volume for sounds, instances, and groups
The following 4 groups are available
priority (most important group), effects, ambient music and ambient effects

This system supports Doppler effect and frequency changes ('bullet speed' sound)

This system supports distance relative sounds

Mute, pause your sounds or sound groups

Password protect your sounds using FMODSimplePasswordProtect.exe

Add sound blockers to stop sound from going through walls or set the blocker
to reduce the volume like for a window...

Pan your sounds/groups left and right.

Suitable for topdown and platform games (on default) and 3d fps games though 
it requires work from your part to rotate the players 'ears'

This system plays sounds better than GM's native sound system

This system allows playing sound at x,y,z coordinates in the room

This system allows for hundreds of sounds 'active' in the room

This system allows playing sounds located on the web (you loose the password ability)

Please go to http://www.fmod.org/ for FMOD product information

Please go to http://www.fmod.org/index.php/sales for licencing information.

Let me sum it up
1) For non $$$ products. FREE!! You must add the FMOD logo to your game or add this text in the credits: 
FMOD Sound System, copyright � Firelight Technologies Pty, Ltd., 1994-2007
(I would do both)
2) Shareware (100$) per game created/distributed (not per game sold) and you must do the same thing as in 1)
3) If you are a commercial entity and selling your game outright: 6000$ initial licence (per platform ,PC/XBOX/WII) + 3000 for any other platform you want to support...


MP3 USE has a separate licence

http://www.fmod.org/index.php/sales/mp3/

In short. Multimedia/Sound Editor/WinAmp type application need a licence
Game developers (I think it refers to a commercial entity) require a 2500$ game licence but not if the product distributes less than 5000 games (not sure if it�s limited to $$Sold$$ games). Again, I think it may not apply for free product� In any case, using MP3s have always been a dangerous legal dance between you, the MP3 patent holder and the artist label (like Sony). But don�t take my words as facts. The info on the site is not all that clear.


If used, credit me icuurd12b42

Demo car sprites and engine noise from S-Cape Car Engine 
http://gmc.yoyogames.com/index.php?showtopic=317426

1.1.1 Changes:
FMODUpdate3dpositions renamed to FMODUpdate and must be called every end step no mater what.
"


///////////////////////////////////////////////////////////
//Copy these code snippets to the right spots in your game

//////////////////////
//Simple setup
//On Game Start
LoadFMOD();
FMODinit(100);
//using a password
//FMODSetPassword("password");


//To load sounds
//game background music
global.bkMusic = FMODSoundAdd("bkmusic.mid");
FMODSoundSetGroup(global.bkMusic,3);
//To set the volume to 80%
FMODSoundSetMaxVolume(global.bkMusic,.8);

//To load a special effect
global.gunshot = FMODSoundAdd("gunshot.wav");
FMODSoundSetGroup(global.gunshot,2);

//On Room Start
FMODSoundLoop(global.bkMusic);

//On Sound Controller end Step
FMODUpdate();

//On Player Fire Gun
FMODSoundPlay(global.gunshot);

//On room end
FMODAllStop();

//On Game End
//to free the sounds
FMODSoundFree(global.bkMusic);
FMODSoundFree(global.gunshot);
//to free the system
FMODfree();
UnloadFMOD();
//Simple setup end
////////////////////////


//////////////////////
//3d setup
//On game start
LoadFMOD();
FMODinit(100);
//using a password
//FMODSetPassword("password");


//To load sounds
//game background music
global.bkMusic = FMODSoundAdd("bkmusic.mid");
FMODSoundSetGroup(global.bkMusic,3);
//To set the volume to 80%
FMODSoundSetMaxVolume(global.bkMusic,.8);

//To load a special effect
global.gunshot = FMODSoundAdd("gunshot.wav",true);
FMODSoundSetGroup(global.gunshot,2);
//to set it's 3d settings
FMODSoundSet3dMinMaxDistance(global.gunshot, 200,600);

//To load a ambient effect
global.enemygrunt = FMODSoundAdd("enemygrunting.wav",true);
FMODSoundSetGroup(global.enemygrunt,4);
//to set it's 3d settings
FMODSoundSet3dMinMaxDistance(global.enemygrunt,100,400);


//On Room Start
FMODSoundLoop(global.bkMusic);

//On Player Fire Gun
FMODSoundPlay3d(global.gunshot,x,y,0);
//On Player end step
FMODListenerSet3dPosition(1,x,y,0);

//On Sound Controller end Step
FMODUpdate();

//On enemy create
instance = FMODSoundLoop3d(global.enemygrunt,x,y,0);
//on enemy end step
FMODInstanceSet3dPosition(instance,x,y,0)
//On Enemy Fire Gun
FMODSoundPlay3d(global.gunshot,x,y,0);


//On room end
FMODAllStop();

//On Game End
//to free the sounds
FMODSoundFree(global.bkMusic);
FMODSoundFree(global.enemygrunt);
FMODSoundFree(global.gunshot);
//to free the system
FMODfree();
UnloadFMOD();
//3d setup end
////////////////////////

//////////////////////////////
//To quickly play a file in an object without having it loaded on game start
//on create
sound = 0;
instance = 0;
alarm[0] = 1;

//on alarm[0]
sound = FMODSoundAdd("music.mid");
FMODSoundSetGroup(sound,3);
instance = FMODSoundLoop(sound);


//on room end
instance_destroy();

//on instance destroy
FMODInstanceStop(instance);
FMODSoundFree(sound);
//////////////////////////////
//////////////////////////////

//////////////////////////////
//To quickly play random files in an object without having it loaded on game start
//on create
sound = 0;
instance = 0;
alarm[0] = 1;

//on alarm[0]
if(!FMODInstanceIsPlaying(instance)) //The system is smart enough to handle 0
{
    FMODInstanceStop(instance);
    FMODSoundFree(sound);
    sound = FMODSoundAdd(choose("music1.mid","music2.mid","music3.mid","music4.mid"));
    FMODSoundSetGroup(sound,3);
    instance = FMODSoundPlay(sound);
}

alarm[0] = room_speed;

//on room end
instance_destroy();

//on instance destroy
FMODInstanceStop(instance);
FMODSoundFree(sound);
//////////////////////////////
//////////////////////////////


//////////////////////////////
//To quickly play a file in a moving object without having it loaded on game start
//Recommended for MIDIs or streamed files
//on create
sound = 0;
instance = 0;
alarm[0] = 1;
path_start(path0,3,3,true);

//on alarm[0]
sound = FMODSoundAdd("music.mid",true,false /* or true if large mp3*/);
//It's really like a moving boombox or a talking character, so ambient effect group could be used
FMODSoundSetGroup(sound,4);
FMODSoundSet3dMinMaxDistance(sound,100,300);
instance = FMODSoundLoop3d(sound,x,y,0);

//on end step
FMODInstanceSet3dPosition(instance,x,y,0);
//With the player or controler object
//calling FMODUpdate3dPositions(); 
//once every step, this should work fine


//on room end
instance_destroy();

//on instance destroy
FMODInstanceStop(instance);
FMODSoundFree(sound);
//////////////////////////////
//////////////////////////////


/////////////////////////
/////////////////////////
//Example web music

//On Game Start
LoadFMOD();
FMODinit(100,true);

//To load sounds
//game background music
global.bkMusic = FMODSoundAdd("http://thewebsite/thewebfileofmusicprovider",false,true);
FMODSoundSetGroup(global.bkMusic,3);
//To set the volume to 80%
FMODSoundSetMaxVolume(global.bkMusic,.8);

//On Player Fire Gun
FMODSoundPlay(global.bkMusic);

//On room end
FMODAllStop();

//On Game End
//to free the sounds
FMODSoundFree(global.bkMusic);
//to free the system
FMODfree();
UnloadFMOD();
//web setup end
////////////////////////


//////////
//Example instance saving code script
//Play3dEcono
//Must be called by object making the noise
//You mus set the playerobject to your object
with(PlayerObj)
{
    if(point_distance(x,y,other.x,other.x) < FMODSoundGetMaxDist(argument0))
    {
        FMODSoundPlay3d(argument0,other.x,other.y,0);
    }
}
///////////////////
/////////////////