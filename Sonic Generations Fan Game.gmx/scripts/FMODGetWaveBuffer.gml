//export double FMODGetWaveBuffer(double start, double size)
//returns "" on error
//returns the wave data string (from start to start+size) on success 

//It's faster to use the string buffer method than getting every point using 
//FMODGetSnapshotEntry()


var buf;
buf = string_repeat(chr(0), argument1+1);
//Gets the FMODGetWaveBuffer snapshot into a string buffer
//Each character is a value from 0to 255 to represent the wave played 
//the flatline is at char 127. 127-n is the -crest 127+n is the +crest of the wave form

//buffer = FMODGetWaveBuffer(0, 256)
//Use ord(string_char_at(buffer,<<1 to size>>)) to access values

external_call(global.dll_FMODGetWaveBuffer,argument0,argument1,buf);
return buf;