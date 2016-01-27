//Load Game

if (file_exists ("save.sav"))
{

ini_open ("save.sav");
var LoadedRoom = ini_read_real ("Save1","room","RM_Mysical_Garden");

}
else 
{
//Do Nothing 
}
