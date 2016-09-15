// Filename : Train.scad
// Version  : v1.0
// Category : Transportation
// Modified : 4 Sept 2016
// Author   : Jason Yeo
//////////////////////////////////////
// Train. (Derived from Car.scad)
//////////////////////////////////////
$fn=100;
use <../wheel.scad>
use <../Headlight.scad>
train();

module train(length = 100, breadth = 60, height = 50, w_width=10, w_diameter=25)
{
    translate([0,0,height/4]) drawBody(length, breadth, height);
    drawWheels(w_width, w_diameter, length, breadth);
    drawHeadlights(length, breadth);
	translate([-25,0,-70])roof();
}

module drawBody(length, breadth, height)
{
    w_size=(length/7);
    translate([length/4,0,height/4])rotate([0,90,0]) cylinder(length/2, height/2, height/2, true);
    translate([length/4,0,0])cube([length/2, height, height/2], true);
    translate([0,0,-10])cube([length,breadth+2,10], true);        
    translate([-length/4,0,height/2]) difference()
    {
        cube([length/2, height, height*1.5], true);
        translate([0,0,0])cube([(length/2)-4, height-4, (height*1.5)-4], true);
        translate([-w_size,0,(height/3)])cube([w_size, breadth+2, w_size], true);
        translate([+w_size,0,(height/3)])cube([w_size, breadth+2, w_size], true);      
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

module drawHeadlights(length, breadth)
{
	translate([length/2,0,25])rotate([0,90,0])headlight(30);
//	light=12;
//  translate([length/2+2,breadth/2-light,light/2]) rotate([0,90,0])headlight(light);
//  translate([length/2+2,-breadth/2+light,light/2])rotate([0,90,0])headlight(light);
}

module roof()
{
	rotate([0,90,0])difference()
	{
		cylinder(50,150,150, true);	
		//cylinder(50,140,140, true);
		translate([5,0,0])cube([300,300,100],true);	
	}
}