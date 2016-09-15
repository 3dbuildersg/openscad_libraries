///////////////////////////////////////////////////////////////////////////////
// Filename 		: SteamEngine.scad
// Main Module   	: Train
// Sub-module	: Engine
// Version  		: v1.0
// Category 		: Transportation
// Modified 		: 14 Sept 2016
// Author   		: Jason Yeo
///////////////////////////////////////////////////////////////////////////////
// Refer to drawing for Train - Dimension parameters.
//
// A SIMPLE ENGINE
// 
///////////////////////////////////////////////////////////////////////////////
use <..\Headlight.scad>
$fn=120;
Engine();

module Engine(length=80, breadth=50, height=40)
{
	height = breadth;

	// Engine
	color("Orange") translate([0,0,0]) rotate([0,90,0]) cylinder(length, d1=breadth, d2=height, center=true);
	color("Orange") translate([0,0,-height/4]) cube([length, breadth, height/2], true);

	// Headlight
	translate([+length/2,0,0]) rotate([0,90,0]) headlight(breadth*0.5);

	// Chimney
	color("Black") translate([+length*0.3,0,height/3])cylinder(height*0.5, d1=breadth*.2, d2=breadth*.2, true);
	color("Grey") translate([+length*0.3,0,height/3+height*0.5])cylinder(height*0.1, d1=breadth*.2, d2=breadth*.4, true);

	// Valves
	if(length > breadth)
	{
		color("Grey") translate([-length/3,0,height/3])cylinder(length*0.3, d1=breadth*.3, d2=breadth*.3, true);
		color("Grey") translate([0,0,height/3])cylinder(length*0.2, d1=breadth*.3, d2=breadth*.3, true);
	}
}