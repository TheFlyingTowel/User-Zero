//Save Game 

if (file_exists ("save.sav")) file_delete ("save.sav");
ini_open ("save.sav");
var SaveRoom = room;
ini_write_real ("save1",room,SaveRoom);
