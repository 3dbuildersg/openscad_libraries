///////////////////////////////////////////////////////////////////////////////
// Filename 		: SimpleBase.scad
// Main Module   	: Train
// Sub-module	: Base
// Version  		: v1.0
// Category 		: Transportation
// Modified 		: 14 Sept 2016
// Author   		: Jason Yeo
///////////////////////////////////////////////////////////////////////////////
// Refer to drawing for Train - Dimension parameters.
//
// A SIMPLE BASE
// 
///////////////////////////////////////////////////////////////////////////////
use <..\wheel.scad>
$fn=120;
Base();

module Base(lt=130, bt=60, thick=10)
{
	color("Red") cube([lt, bt, thick], true);
 	translate([-lt/3, 0, -thick]) color("DarkGray") rotate([90,0,0]) cylinder(bt*1.6, 2, 2, true);
	translate([+lt/3, 0, -thick]) color("DarkGray") rotate([90,0,0]) cylinder(bt*1.6, 2, 2, true);
	translate([-lt/3, 0, -thick]) color("DarkGray") rotate([90,0,0]) cylinder(bt*0.6, 10, 10, true);
	translate([+lt/3, 0, -thick]) color("DarkGray") rotate([90,0,0]) cylinder(bt*0.6, 10, 10, true);
    translate([+lt/3, +bt*0.8, -thick]) rotate([90,0,0]) wheel(bt*0.2, bt);
    translate([+lt/3, -bt*0.8, -thick]) rotate([90,0,0]) wheel(bt*0.2, bt);
    translate([-lt/3, +bt*0.8, -thick]) rotate([90,0,0]) wheel(bt*0.2, bt);
    translate([-lt/3, -bt*0.8, -thick]) rotate([90,0,0]) wheel(bt*0.2, bt);
}

