// Filename : Wheel.scad
// Version  : v1.0
// Modified : 30 Aug 2016
// Author   : Jason Yeo
//////////////////////////////////////
// A simple wheel.
//////////////////////////////////////

$fn=200;
wheel(8, 20);

module wheel(width=10, diameter=30)
{   
    wheel_rim(width, diameter);
    spokes(width, diameter);    
}
module spokes(width, diameter, noOfSpokes=5)
{
    union()
    {
        cylinder(width*.5,d1=diameter*.2,d2=diameter*.2,center=true);
        delta=360/noOfSpokes;
        //echo(delta);
        for(i=[0:noOfSpokes])
        {
            rotate([0,0,i*delta]) spoke(width, diameter/2);
        }
    }
}
module spoke(width, length)
{
    translate([length/2,0,0])cube([length*.9, width/4, width/4], true);
}


module wheel_rim(width, outer_diameter)
{    
    difference()
    {
        cylinder(width,d1=outer_diameter,d2=outer_diameter,center=true);
        translate([0,0,0]) cylinder(width+2,d1=outer_diameter*.8,d2=outer_diameter*.8,center=true);    
    }
}

