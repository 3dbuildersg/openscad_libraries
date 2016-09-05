// Filename : truck.scad
// Version  : v1.0
// Modified : 30 Aug 2016
// Author   : Jason Yeo
//////////////////////////////////////
// Basic car frame. (Base class)
//
// ToDo. Stop developing this. use car.scad as base...
//////////////////////////////////////

use <wheels.scad>
truck();
module truck(length = 100, breadth = 60, height = 50)
{
    difference() 
    {
        union() 
        {
            cube([100,60,30], true);
            translate([30,0,30])cube([40,60,30], true);
        }
        translate([40,0,50])rotate([0,45,0]) cube([60,60,30], true);
        drawWheels(w_width, w_diameter, length, breadth);
    }
}
module drawWheels(width, diameter, length, breadth)
{
    b_offset = breadth/2+width;
    l_offset = length/3;
    translate([l_offset, 0, 0]) rotate([90,0,0]) cylinder(breadth+width*2, 1, 1, true);
    translate([-l_offset, 0, 0]) rotate([90,0,0]) cylinder(breadth+width*2, 1, 1, true);
    
    translate([l_offset, b_offset, 0]) rotate([90,0,0]) wheel(width, diameter);
    translate([l_offset, -b_offset, 0]) rotate([90,0,0]) wheel(width, diameter);
    translate([-l_offset, b_offset, 0]) rotate([90,0,0]) wheel(width, diameter);
    translate([-l_offset, -b_offset, 0]) rotate([90,0,0]) wheel(width, diameter);
}