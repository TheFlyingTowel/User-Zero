//Call this when the game starts to create the dll interface
//returns nothing... GM will stop if the dll could not be linked

//NOTE: You must have GMFMODSimple.dll and fmodex.dll in your game directory

//Example call
//When the game starts
//LoadFMOD();
if !file_exists('GMFMODSimple.dll') show_message("File not found: GMFMODSimple.dll#In directory: " + working_directory);

var WTF;
WTF = false;
//export double FMODfree(void)
global.dll_FMODfree=external_define("GMFMODSimple.dll","FMODfree",dll_stdcall,ty_real,0);
if(WTF) show_message("Defined: FMODfree")
//export double FMODinit(double maxsounds, supportwebmusic)
global.dll_FMODinit=external_define("GMFMODSimple.dll","FMODinit",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODinit")
//export double FMODSoundSetEffects(double sound, double effects)
global.dll_FMODSoundSetEffects=external_define("GMFMODSimple.dll","FMODSoundSetEffects",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundSetEffects")
//export double FMODSoundSetGroup(double sound, double group)
global.dll_FMODSoundSetGroup=external_define("GMFMODSimple.dll","FMODSoundSetGroup",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundSetGroup")
//export double FMODGroupSetVolume(double group, double volume)
global.dll_FMODGroupSetVolume=external_define("GMFMODSimple.dll","FMODGroupSetVolume",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODGroupSetVolume")
//export double FMODSoundSetMaxVolume(double sound, double volume)
global.dll_FMODSoundSetMaxVolume=external_define("GMFMODSimple.dll","FMODSoundSetMaxVolume",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundSetMaxVolume")
//export double FMODSoundLoop(double sound,paused)
global.dll_FMODSoundLoop=external_define("GMFMODSimple.dll","FMODSoundLoop",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundLoop")
//export double FMODSoundPlay(double sound,paused)
global.dll_FMODSoundPlay=external_define("GMFMODSimple.dll","FMODSoundPlay",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundPlay")
//export double FMODSoundLoop3d(double sound, double x, double y, double z,paused)
global.dll_FMODSoundLoop3d=external_define("GMFMODSimple.dll","FMODSoundLoop3d",dll_stdcall,ty_real,5,ty_real,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundLoop3d")
//export double FMODSoundPlay3d(double sound, double x, double y, double z,paused)
global.dll_FMODSoundPlay3d=external_define("GMFMODSimple.dll","FMODSoundPlay3d",dll_stdcall,ty_real,5,ty_real,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundPlay3d")
//export double FMODInstanceSet3dPosition(double channel,double x,double y,double z)
global.dll_FMODInstanceSet3dPosition=external_define("GMFMODSimple.dll","FMODInstanceSet3dPosition",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSet3dPosition")

//export double FMODSoundAdd(LPCSTR soundfile, double threed, double streamed)
global.dll_FMODSoundAdd=external_define("GMFMODSimple.dll","FMODSoundAdd",dll_stdcall,ty_real,3,ty_string,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundAdd")


//export double FMODMasterSetVolume(double volume)
global.dll_FMODMasterSetVolume=external_define("GMFMODSimple.dll","FMODMasterSetVolume",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODMasterSetVolume")
//export double FMODListenerSetNumber(double number)
global.dll_FMODListenerSetNumber=external_define("GMFMODSimple.dll","FMODListenerSetNumber",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODListenerSetNumber")
//export double FMODListenerSet3dPosition(double number, double x, double y, double z)
global.dll_FMODListenerSet3dPosition=external_define("GMFMODSimple.dll","FMODListenerSet3dPosition",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODListenerSet3dPosition")
//export double FMODSetWorldScale(double scale)
global.dll_FMODSetWorldScale=external_define("GMFMODSimple.dll","FMODSetWorldScale",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODSetWorldScale")
//export double FMODSoundSet3dMinMaxDistance(double sound, double Min, double Max)
global.dll_FMODSoundSet3dMinMaxDistance=external_define("GMFMODSimple.dll","FMODSoundSet3dMinMaxDistance",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundSet3dMinMaxDistance")
//export double FMODUpdate()
global.dll_FMODUpdate=external_define("GMFMODSimple.dll","FMODUpdate",dll_stdcall,ty_real,0);
if(WTF) show_message("Defined: FMODUpdate")
//export double FMODSoundFree(double sound)
global.dll_FMODSoundFree=external_define("GMFMODSimple.dll","FMODSoundFree",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODSoundFree")
//export double FMODGroupStop(double group)
global.dll_FMODGroupStop=external_define("GMFMODSimple.dll","FMODGroupStop",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODGroupStop")
//export double FMODAllStop()
global.dll_FMODAllStop=external_define("GMFMODSimple.dll","FMODAllStop",dll_stdcall,ty_real,0);
if(WTF) show_message("Defined: FMODAllStop")
//export double FMODInstanceStop(double instance)
global.dll_FMODInstanceStop=external_define("GMFMODSimple.dll","FMODInstanceStop",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceStop")
//export double FMODInstanceIsPlaying(double instance)
global.dll_FMODInstanceIsPlaying=external_define("GMFMODSimple.dll","FMODInstanceIsPlaying",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceIsPlaying")
//export double FMODGroupSetMuted(double group, double mute)
global.dll_FMODGroupSetMuted=external_define("GMFMODSimple.dll","FMODGroupSetMuted",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODGroupSetMuted")
//export double FMODInstanceSetMuted(double instance, double mute)
global.dll_FMODInstanceSetMuted=external_define("GMFMODSimple.dll","FMODInstanceSetMuted",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSetMuted")
//export double FMODInstanceSetVolume(double instance, double volume)
global.dll_FMODInstanceSetVolume=external_define("GMFMODSimple.dll","FMODInstanceSetVolume",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSetVolume")
//export double FMODGroupSetPaused(double group, double mute)
global.dll_FMODGroupSetPaused=external_define("GMFMODSimple.dll","FMODGroupSetPaused",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODGroupSetPaused")
//export double FMODInstanceSetPaused(double instance, double mute)
global.dll_FMODInstanceSetPaused=external_define("GMFMODSimple.dll","FMODInstanceSetPaused",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSetPaused")
//export double FMODGetLastError(void)
global.dll_FMODGetLastError=external_define("GMFMODSimple.dll","FMODGetLastError",dll_stdcall,ty_real,0);
if(WTF) show_message("Defined: FMODGetLastError")
//export double FMODListenerHearsDistanceOnly(double number, double t)
global.dll_FMODListenerHearsDistanceOnly=external_define("GMFMODSimple.dll","FMODListenerHearsDistanceOnly",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODListenerHearsDistanceOnly")
//export double FMODSetDopplerFPS(double fps)
global.dll_FMODSetDopplerFPS=external_define("GMFMODSimple.dll","FMODSetDopplerFPS",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODSetDopplerFPS")
//export double FMODListenerSet3dPositionEx(double number, double x, double y, double z, double fx, double fy, double fz, double ux, double uy, double uz)
global.dll_FMODListenerSet3dPositionEx=external_define("GMFMODSimple.dll","FMODListenerSet3dPositionEx",dll_stdcall,ty_real,10,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODListenerSet3dPositionEx")
//export double FMODSoundSet3dDopplerMax(double sound, double max)
global.dll_FMODSoundSet3dDopplerMax=external_define("GMFMODSimple.dll","FMODSoundSet3dDopplerMax",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundSet3dDopplerMax")
//export double FMODInstanceSetFrequency(double instance, double freq)
global.dll_FMODInstanceSetFrequency=external_define("GMFMODSimple.dll","FMODInstanceSetFrequency",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSetFrequency")
//export double FMODInstanceGetFrequency(double instance)
global.dll_FMODInstanceGetFrequency=external_define("GMFMODSimple.dll","FMODInstanceGetFrequency",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceGetFrequency")
//export double FMODSoundSet3dCone(double sound, double insideconeangle, double outsideconeangle, double outsidevolume)
global.dll_FMODSoundSet3dCone=external_define("GMFMODSimple.dll","FMODSoundSet3dCone",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundSet3dCone")
//export double FMODInstanceSet3dConeOrientation(double instance, double x, double y, double z)
global.dll_FMODInstanceSet3dConeOrientation=external_define("GMFMODSimple.dll","FMODInstanceSet3dConeOrientation",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSet3dConeOrientation")
//export double FMODGroupSetFrequency(double group, double freq)
global.dll_FMODGroupSetFrequency=external_define("GMFMODSimple.dll","FMODGroupSetFrequency",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODGroupSetFrequency")

//export double FMODGroupGetVolume(double group)
global.dll_FMODGroupGetVolume=external_define("GMFMODSimple.dll","FMODGroupGetVolume",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODGroupGetVolume")
//export double FMODGroupGetPitch(double group)
global.dll_FMODGroupGetPitch=external_define("GMFMODSimple.dll","FMODGroupGetPitch",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODGroupGetPitch")
//export double FMODGroupGetPaused(double group)
global.dll_FMODGroupGetPaused=external_define("GMFMODSimple.dll","FMODGroupGetPaused",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODGroupGetPaused")
//export double FMODGroupGetMuted(double group)
global.dll_FMODGroupGetMuted=external_define("GMFMODSimple.dll","FMODGroupGetMuted",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODGroupGetMuted")
//export double FMODGroupSetPitch(double group,double pitch)
global.dll_FMODGroupSetPitch=external_define("GMFMODSimple.dll","FMODGroupSetPitch",dll_stdcall,ty_real,2,ty_real, ty_real);
if(WTF) show_message("Defined: FMODGroupSetPitch")
//export double FMODInstanceGetVolume(double instance)
global.dll_FMODInstanceGetVolume=external_define("GMFMODSimple.dll","FMODInstanceGetVolume",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceGetVolume")

//export double FMODInstanceGetSound(double instance)
global.dll_FMODInstanceGetSound=external_define("GMFMODSimple.dll","FMODInstanceGetSound",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceGetSound")

//export double FMODSoundGetMaxVolume(double sound)
global.dll_FMODSoundGetMaxVolume=external_define("GMFMODSimple.dll","FMODSoundGetMaxVolume",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODSoundGetMaxVolume")
//export double FMODInstanceGetPaused(double instance)
global.dll_FMODInstanceGetPaused=external_define("GMFMODSimple.dll","FMODInstanceGetPaused",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceGetPaused")
//export double FMODInstanceGetMuted(double instance)
global.dll_FMODInstanceGetMuted=external_define("GMFMODSimple.dll","FMODInstanceGetMuted",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceGetMuted")

//export double FMODSoundAddEffect(LPCSTR soundfile, double effect, double pos)
global.dll_FMODSoundAddEffect=external_define("GMFMODSimple.dll","FMODSoundAddEffect",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundAddEffect")

//export double FMODInstanceGetPosition(double instance)
global.dll_FMODInstanceGetPosition=external_define("GMFMODSimple.dll","FMODInstanceGetPosition",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceGetPosition")

//export double FMODInstanceSetPosition(double instance, double p)
global.dll_FMODInstanceSetPosition=external_define("GMFMODSimple.dll","FMODInstanceSetPosition",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSetPosition")


//export double FMODGroupSetPan(double group, double pan)
global.dll_FMODGroupSetPan=external_define("GMFMODSimple.dll","FMODGroupSetPan",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODGroupSetPan")

//export double FMODInstanceSetPan(double instance, double p)
global.dll_FMODInstanceSetPan=external_define("GMFMODSimple.dll","FMODInstanceSetPan",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSetPan")

//export double FMODInstanceGetPan(double instance)
global.dll_FMODInstanceGetPan=external_define("GMFMODSimple.dll","FMODInstanceGetPan",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceGetPan")

//export double FMODInstanceSetLoopCount(double instance, double p)
global.dll_FMODInstanceSetLoopCount=external_define("GMFMODSimple.dll","FMODInstanceSetLoopCount",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSetLoopCount")

//export double FMODInstanceGetLoopCount(double instance)
global.dll_FMODInstanceGetLoopCount=external_define("GMFMODSimple.dll","FMODInstanceGetLoopCount",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceGetLoopCount")

//export double FMODBlockersInit(double NumBlockers, double xs, double ys, double zs)
global.dll_FMODBlockersInit=external_define("GMFMODSimple.dll","FMODBlockersInit",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODBlockersInit")

//export double FMODBlockersFree()
global.dll_FMODBlockersFree=external_define("GMFMODSimple.dll","FMODBlockersFree",dll_stdcall,ty_real,0);
if(WTF) show_message("Defined: FMODBlockersFree")

//export double FMODBlockerAdd(double x, double y, double z, double xs, double ys, double zs, double xe, double ye, double ze)
global.dll_FMODBlockerAdd=external_define("GMFMODSimple.dll","FMODBlockerAdd",dll_stdcall,ty_real,9,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODBlockerAdd")

//export double FMODBlockerSet3dPosition(double blocker, double x, double y, double z)
global.dll_FMODBlockerSet3dPosition=external_define("GMFMODSimple.dll","FMODBlockerSet3dPosition",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODBlockerSet3dPosition")

//export double FMODBlockerSet3dOrientation(double blocker, double fx, double fy, double fz, double ux, double uy, double uz)
global.dll_FMODBlockerSet3dOrientation=external_define("GMFMODSimple.dll","FMODBlockerSet3dOrientation",dll_stdcall,ty_real,7,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODBlockerSet3dOrientation")

//export double FMODBlockerSet3dScale(double blocker, double sx, double sy, double sz)
global.dll_FMODBlockerSet3dScale=external_define("GMFMODSimple.dll","FMODBlockerSet3dScale",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODBlockerSet3dScale")

//export double FMODBlockerSetEnabled(double blocker, double enabled)
global.dll_FMODBlockerSetEnabled=external_define("GMFMODSimple.dll","FMODBlockerSetEnabled",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODBlockerSetEnabled")

//export double FMODBlockerGetEnabled(double blocker)
global.dll_FMODBlockerGetEnabled=external_define("GMFMODSimple.dll","FMODBlockerSetEnabled",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODBlockerGetEnabled")

//export double FMODBlockerGetStrength(double blocker)
global.dll_FMODBlockerGetStrength=external_define("GMFMODSimple.dll","FMODBlockerGetStrength",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODBlockerGetStrength")

//export double FMODBlockerSetStrength(double blocker,double strength)
global.dll_FMODBlockerSetStrength=external_define("GMFMODSimple.dll","FMODBlockerSetStrength",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODBlockerSetStrength")

//export double FMODGetNumInstances(void)
global.dll_FMODGetNumInstances=external_define("GMFMODSimple.dll","FMODGetNumInstances",dll_stdcall,ty_real,0);
if(WTF) show_message("Defined: FMODGetNumInstances")

//export double FMODSetPassword(LPCSTR password)
global.dll_FMODSetPassword=external_define("GMFMODSimple.dll","FMODSetPassword",dll_stdcall,ty_real,1,ty_string);
if(WTF) show_message("Defined: FMODSetPassword")

//export double FMODSoundIsStreamed(double sound)
global.dll_FMODSoundIsStreamed=external_define("GMFMODSimple.dll","FMODSoundIsStreamed",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODSoundIsStreamed")

//export double FMODSoundIs3d(double sound)
global.dll_FMODSoundIs3d=external_define("GMFMODSimple.dll","FMODSoundIs3d",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODSoundIs3d")

//double FMODSoundInstanciate(double sound)
global.dll_FMODSoundInstanciate=external_define("GMFMODSimple.dll","FMODSoundInstanciate",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODSoundInstanciate")

//export double FMODSoundGetMaxDist(double sound)
global.dll_FMODSoundGetMaxDist=external_define("GMFMODSimple.dll","FMODSoundGetMaxDist",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODSoundGetMaxDist")

//export double FMODInstanceSet3dMinMaxDistance(double instance, double Min, double Max)
global.dll_FMODInstanceSet3dMinMaxDistance=external_define("GMFMODSimple.dll","FMODInstanceSet3dMinMaxDistance",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSet3dMinMaxDistance")

//export double FMODInstanceSet3dDopplerMax(double instance, double doppler)
global.dll_FMODInstanceSet3dDopplerMax=external_define("GMFMODSimple.dll","FMODInstanceSet3dDopplerMax",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSet3dDopplerMax")

//export double FMODInstanceSet3dCone(double instance, double insideconeangle, double outsideconeangle, double outsidevolume)
global.dll_FMODInstanceSet3dCone=external_define("GMFMODSimple.dll","FMODInstanceSet3dCone",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSet3dCone")


//export double FMODSoundGetNumChannels(double sound)
global.dll_FMODSoundGetNumChannels=external_define("GMFMODSimple.dll","FMODSoundGetNumChannels",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODSoundGetNumChannels")

//export double FMODInstanceGetMaxDist(double instance)
global.dll_FMODInstanceGetMaxDist=external_define("GMFMODSimple.dll","FMODInstanceGetMaxDist",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceGetMaxDist")

//export double FMODInstanceGetWaveSnapshot(double instance, double channel, double size, LPSTR Buffer)
global.dll_FMODInstanceGetWaveSnapshot=external_define("GMFMODSimple.dll","FMODInstanceGetWaveSnapshot",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_string);
if(WTF) show_message("Defined: FMODInstanceGetWaveSnapshot")

//export double FMODInstanceGetSpectrumSnapshot(double instance, double channel, double size, LPSTR Buffer)
global.dll_FMODInstanceGetSpectrumSnapshot=external_define("GMFMODSimple.dll","FMODInstanceGetSpectrumSnapshot",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_string);
if(WTF) show_message("Defined: FMODInstanceGetSpectrumSnapshot")

//export double FMODGroupGetWaveSnapshot(double group, double channel, double size, LPSTR Buffer)
global.dll_FMODGroupGetWaveSnapshot=external_define("GMFMODSimple.dll","FMODGroupGetWaveSnapshot",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_string);
if(WTF) show_message("Defined: FMODGroupGetWaveSnapshot")

//export double FMODGroupGetSpectrumSnapshot(double group, double channel, double size, LPSTR Buffer)
global.dll_FMODGroupGetSpectrumSnapshot=external_define("GMFMODSimple.dll","FMODGroupGetSpectrumSnapshot",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_string);
if(WTF) show_message("Defined: FMODGroupGetSpectrumSnapshot")




//export double FMODInstanceGetWaveSnapshot2(double instance, double channel, double size)
global.dll_FMODInstanceGetWaveSnapshot2=external_define("GMFMODSimple.dll","FMODInstanceGetWaveSnapshot2",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceGetWaveSnapshot2")

//export double FMODInstanceGetSpectrumSnapshot2(double instance, double channel, double size)
global.dll_FMODInstanceGetSpectrumSnapshot2=external_define("GMFMODSimple.dll","FMODInstanceGetSpectrumSnapshot2",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceGetSpectrumSnapshot2")

//export double FMODGroupGetWaveSnapshot2(double group, double channel, double size)
global.dll_FMODGroupGetWaveSnapshot2=external_define("GMFMODSimple.dll","FMODGroupGetWaveSnapshot2",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODGroupGetWaveSnapshot2")

//export double FMODGroupGetSpectrumSnapshot2(double group, double channel, double size)
global.dll_FMODGroupGetSpectrumSnapshot2=external_define("GMFMODSimple.dll","FMODGroupGetSpectrumSnapshot2",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODGroupGetSpectrumSnapshot2")

//export double FMODNormalizeSpectrumData(double startpos, double size)
global.dll_FMODNormalizeSpectrumData=external_define("GMFMODSimple.dll","FMODNormalizeSpectrumData",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODNormalizeSpectrumData")

//export double FMODNormalizeWaveData(double startpos, double size)
global.dll_FMODNormalizeWaveData=external_define("GMFMODSimple.dll","FMODNormalizeWaveData",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODNormalizeWaveData")

//export double FMODGetSnapshotEntry(double pos)
global.dll_FMODGetSnapshotEntry=external_define("GMFMODSimple.dll","FMODGetSnapshotEntry",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODGetSnapshotEntry")

//export double FMODGetWaveBuffer(double startpos, double size, LPSTR Buffer)
global.dll_FMODGetWaveBuffer=external_define("GMFMODSimple.dll","FMODGetWaveBuffer",dll_stdcall,ty_real,3,ty_real,ty_real,ty_string);
if(WTF) show_message("Defined: FMODGetWaveBuffer")

//export double FMODGetSpectrumBuffer(double startpos, double size, LPSTR Buffer)
global.dll_FMODGetSpectrumBuffer=external_define("GMFMODSimple.dll","FMODGetSpectrumBuffer",dll_stdcall,ty_real,3,ty_real,ty_real,ty_string);
if(WTF) show_message("Defined: FMODGetSpectrumBuffer")

//extern double FMODEncryptFile(LPCSTR sourcename, LPCSTR destname, LPCSTR password)
global.dll_FMODEncryptFile=external_define("GMFMODSimple.dll","FMODEncryptFile",dll_stdcall,ty_real,3,ty_string,ty_string,ty_string);
if(WTF) show_message("Defined: FMODEncryptFile")

//export double FMODSoundGetLength(double sound)
global.dll_FMODSoundGetLength=external_define("GMFMODSimple.dll","FMODSoundGetLength",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODSoundGetLength")

//export double FMODInstanceSoundGetLength(double instance)
global.dll_FMODInstanceSoundGetLength=external_define("GMFMODSimple.dll","FMODInstanceSoundGetLength",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceSoundGetLength")

//export double FMODInstanceAddEffect(double instance, double effect)
global.dll_FMODInstanceAddEffect=external_define("GMFMODSimple.dll","FMODInstanceAddEffect",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceAddEffect")

//export double FMODGroupAddEffect(double group, double effect)
global.dll_FMODGroupAddEffect=external_define("GMFMODSimple.dll","FMODGroupAddEffect",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODGroupAddEffect")

//export double FMODEffectFree(double effect)
global.dll_FMODEffectFree=external_define("GMFMODSimple.dll","FMODEffectFree",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODEffectFree")


//export double FMODSoundSetLoopCount(double sound, double count)
global.dll_FMODSoundSetLoopCount=external_define("GMFMODSimple.dll","FMODSoundSetLoopCount",dll_stdcall,ty_real,2,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundSetLoopCount")

//export double FMODSoundGetLoopCount(double sound)
global.dll_FMODSoundGetLoopCount=external_define("GMFMODSimple.dll","FMODSoundGetLoopCount",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODSoundGetLoopCount")

//export double FMODSoundSetLoopPoints(double sound, double start, double end)
global.dll_FMODSoundSetLoopPoints=external_define("GMFMODSimple.dll","FMODSoundSetLoopPoints",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODSoundSetLoopPoints")


//export double FMODInstanceSetSpeakerMix(
//  double instance,  
//  double  frontleft, 
//  double  frontright, 
//  double  center, 
//  double  lfe, 
//  double  backleft, 
//  double  backright, 
//  double  sideleft, 
//  double  sideright)
  
global.dll_FMODInstanceSetSpeakerMix=external_define("GMFMODSimple.dll","FMODInstanceSetSpeakerMix",dll_stdcall,ty_real,9,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSetSpeakerMix")


//export double FMODInstanceSetLoopPoints(double instance, double start, double end)
global.dll_FMODInstanceSetLoopPoints=external_define("GMFMODSimple.dll","FMODInstanceSetLoopPoints",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
if(WTF) show_message("Defined: FMODInstanceSetLoopPoints")

//export double FMODInstanceGetAudibility(double instance)
global.dll_FMODInstanceGetAudibility=external_define("GMFMODSimple.dll","FMODInstanceGetAudibility",dll_stdcall,ty_real,1,ty_real);
if(WTF) show_message("Defined: FMODInstanceGetAudibility")

//export double FMODUpdateTakeOverWhileLocked()
global.dll_FMODUpdateTakeOverWhileLocked=external_define("GMFMODSimple.dll","FMODUpdateTakeOverWhileLocked",dll_stdcall,ty_real,0);
if(WTF) show_message("Defined: FMODUpdateTakeOverWhileLocked")

//export double FMODUpdateTakeOverDone()
global.dll_FMODUpdateTakeOverDone=external_define("GMFMODSimple.dll","FMODUpdateTakeOverDone",dll_stdcall,ty_real,0);
if(WTF) show_message("Defined: FMODUpdateTakeOverDone")



  