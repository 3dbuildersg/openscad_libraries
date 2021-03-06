// Filename : Robot.scad
// Version  : v1.0
// Modified : 3 Sept 2016
// Author   : Jason Yeo
//////////////////////////////////////
// Basic car frame. (Base class)
//////////////////////////////////////
robot();

module robot()
{
    head();
    torso();
    arms();
    hips();
    legs();
}

//////////////////////////////////////////////////////////
// HEAD
//////////////////////////////////////////////////////////
module head()
{
    union()
    {
        rotate([90,0,0])cylinder(20,10,10, true);
        eyes();
        ears();
        nose();      
        mouth();
        translate([0,-15,0]) rotate([90,0,0])cylinder(10,3,3, true);
    }
}
module eyes()
{
    translate([4,3,8]) rotate([0,0,0]) cylinder(5,2,2, true, $fn=80);
    translate([4,3,9]) rotate([0,0,0]) cylinder(5,1,1, true, $fn=80);
    translate([-4,3,8]) rotate([0,0,0]) cylinder(5,2,2, true, $fn=80);
    translate([-4,3,9]) rotate([0,0,0]) cylinder(5,1,1, true, $fn=80);
}
module ears()
{
    translate([10,0,0])sphere(5);
    translate([-10,0,0])sphere(5);
}
module nose()
{
    translate([0,-2,8]) rotate([0,0,0]) cylinder(10,2,1, true, $fn=80);
}
module mouth()
{
    //translate([4,3,5]) rotate([0,0,0]) cylinder(10,2,2, true, $fn=80);
}
//////////////////////////////////////////////////////////
// TORSO
//////////////////////////////////////////////////////////
module torso()
{
    translate([0,-40,0]) rotate([90,0,0]) cylinder(40,20,20, true, $fn=80);
}
//////////////////////////////////////////////////////////
// ARMS
//////////////////////////////////////////////////////////
module arms()
{
}
//////////////////////////////////////////////////////////
// HIPS
//////////////////////////////////////////////////////////
module hips()
{
}
//////////////////////////////////////////////////////////
// LEGS
//////////////////////////////////////////////////////////
module legs()
{
}
//////////////////////////////////////////////////////////
