// Filename : Headlight.scad
// Version  : v1.0
// Modified : 2 Sept 2016
// Author   : Jason Yeo
//////////////////////////////////////
// Basic headlight
//////////////////////////////////////

$fn=50;

headlight();

module headlight(diameter=20)
{  
    //translate([0,0,-diameter/4])
    difference()
    {
        union()
        {
            sphere(d=diameter,true);
            cylinder(diameter/2,diameter/2,diameter/2,true);
        }
        translate([0,0,-diameter/2])cube([diameter,diameter,diameter],true);
    }
}