// Filename : Ring.scad
// Version  : v1.0
// Modified : 2 Sept 2016
// Author   : Jason Yeo
//////////////////////////////////////
// Basic ring
//////////////////////////////////////
$fn=90;

ring();

module ring(diameter=30)
{
    difference()
    {
        cylinder(10, diameter, diameter, true);
        translate([0,0,0]) cylinder(12, diameter-3, diameter-3, true);
    }
}
