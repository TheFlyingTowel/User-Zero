/// Move(hspd,vspd)

var hspd = argument[0];
var vspd = argument[1];

dir = face*90;
len = spd*90;

//move 
phy_position_x += hspd;
phy_position_y += vspd;