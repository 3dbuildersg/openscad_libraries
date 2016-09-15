///////////////////////////////////////////////////////////////////////////////
// Filename 		: SteamCabin.scad
// Main Module   	: Train
// Sub-module	: Cabin
// Version  		: v1.0
// Category 		: Transportation
// Modified 		: 14 Sept 2016
// Author   		: Jason Yeo
///////////////////////////////////////////////////////////////////////////////
// Refer to drawing for Train - Dimension parameters.
//
// A SIMPLE CABIN
// 
///////////////////////////////////////////////////////////////////////////////
//wall();
$fn=120;
Cabin();

module Cabin(l1=50, b1=40, h1=70, t1=2)
{
	translate([-l1/2+t1/2,0,0]) rotate([-90,0,-90]) wall(b1,h1,t1,2);
	translate([+l1/2-t1/2,0,0]) rotate([-90,0,+90]) wall(b1,h1,t1,2);
	translate([0,-b1/2,0]) rotate([-90,0,0]) wall(l1,h1,t1,2);
	translate([0,+b1/2,0]) rotate([-90,0,0]) wall(l1,h1,t1,2);
    color("Red")hull(){
	translate([0,-b1/2-t1,h1/2+t1]) rotate([0,90,0]) cylinder(l1, t1, t1, true);
	translate([0,+b1/2+t1,h1/2+t1]) rotate([0,90,0]) cylinder(l1, t1, t1, true);
    }
}

module wall(width = 150, height = 150, thickness = 2, noOfWindows = 2)
{
	windowHeight = height / (noOfWindows + 2);
	windowWidth = width / (noOfWindows + 2);
	echo("width=",width, windowWidth, windowHeight);
	color("Orange")
    translate([0,0,-thickness/2])linear_extrude(thickness)
	difference(){
		square([width, height], center=true);
		for(i=[0:noOfWindows-1])
			translate([width/2-windowWidth-windowWidth*i*2, -height/4, 0]) square([windowWidth, windowHeight], center=true);
	}
}