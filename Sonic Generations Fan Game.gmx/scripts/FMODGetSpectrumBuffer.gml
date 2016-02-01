//export double FMODGetSpectrumBuffer(double start, double size)
//returns "" on error
//returns the spectrum data string (from start to start+size) on success 

//It's faster to use the string buffer method than getting every point using 
//FMODGetSnapshotEntry()

var buf;
buf = string_repeat(chr(0), argument1+1);
//Gets the spectrum snapshot into a string buffer
//Each character is a value from 0to 255 to represent the spectrum played 
//buffer = FMODGetSpectrumBuffer(0, 256)
//Use ord(string_char_at(buffer,<<1 to size>>)) to access values

external_call(global.dll_FMODGetSpectrumBuffer,argument0,argument1,buf);
return buf;