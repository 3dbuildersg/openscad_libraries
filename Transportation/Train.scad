// Filename : Train.scad
// Version  : v2.0
// Category : Transportation
// Modified : 7 Sept 2016
// Author   : Jason Yeo
///////////////////////////////////////////////////////////////////////////////
// Refer to drawing for dimension parameters.
// These allow flexibilities in variant train's design.
///////////////////////////////////////////////////////////////////////////////
$fn=80;
use <wheel.scad>
use <Headlight.scad>

translate([0,0,0])Train();  	// Train (default)
translate([0,+100,0])Train(); // Train (Long)
translate([0,-100,0])Train(); // Train (fat)

///////////////////////////////////////////////////////////////////////////////
module Train(h1=70,h2=40,l1=70,l2=40,b1=50,d1=30)
{
	translate([-l1/2,0,h1/2]) DrawDrive(l1,b1,h1);
	translate([+l2/2,0,h2/2]) DrawEngine(l2,b1,h2);
	translate([-l1/2+l2/2,0,-h2*0.1]) DrawBase(l1+l2,b1*1.2,h2*0.2);
	translate([-l1*0.7,0,0]) DrawWheels(b1*1.4,d1);	// back wheels
	translate([+l2*0.5,0,0]) DrawWheels(b1*1.4,d1);	// front wheels
}

///////////////////////////////////////////////////////////////////////////////
module DrawDrive(length, breadth, height)
{
	cube([length, breadth, height], true);
	translate([0,0,height/2+height*0.1])DrawRoof(length, breadth*1.2, height*0.2);
}
module DrawEngine(length, breadth, height)
{
	cube([length, breadth, height], true);
}
module DrawBase(length, breadth, height)
{
	cube([length, breadth, height], true);
}
module DrawRoof(length, breadth, height)
{
	cube([length, breadth, height], true);
}
module DrawWheels(breadth, diameter)
{
    translate([0, 0, 0]) rotate([90,0,0]) cylinder(breadth, 1, 1, true);
    translate([0, +breadth/2, 0]) rotate([90,0,0]) wheel(diameter*0.4, diameter);
    translate([0, -breadth/2, 0]) rotate([90,0,0]) wheel(diameter*0.4, diameter);
}
module DrawHeadlight()
{
}


/*
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
}*/