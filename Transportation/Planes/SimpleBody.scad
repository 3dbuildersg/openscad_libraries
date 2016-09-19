///////////////////////////////////////////////////////////////////////////////
// Filename 		: SimpleBody.scad
// Main Module   	: Plane
// Sub-module	: Body
// Version  		: v1.0
// Category 		: Transportation
// Modified 		: 18 Sept 2016
// Author   		: Jason Yeo
///////////////////////////////////////////////////////////////////////////////
// Refer to drawing for Plane.pptx.
//
// A SIMPLE PLANE
// 
///////////////////////////////////////////////////////////////////////////////
$fn=120;

Body();

module Body(body_length=150, diameter=20)
{
	nose_length=body_length*0.2;
	cockpit_length=body_length*0.3;
	fuselage_length=body_length*0.5;
    echo(nose_length, cockpit_length, fuselage_length);
	color("LightBlue")
    {
		translate([cockpit_length+nose_length/2,0,0]) Nose(nose_length, diameter);
		translate([cockpit_length/2,0,0])CockPit(cockpit_length, diameter);
        translate([-fuselage_length/2,0,0]) Fuselage(fuselage_length, diameter);
	}
}

module Nose(length, diameter)
{
    echo(length, diameter);
	hull() {
		rotate([0,90,0])cylinder(length, diameter, 0, center=true);
		translate([length/2,0,0])sphere(diameter*0.5);
	}
}

module CockPit(length,diameter)
{
    
	rotate([0,90,0])cylinder(length, diameter, diameter, center=true);
}

module Fuselage(length,diameter)
{
	rotate([0,90,0])cylinder(length, diameter*0.8, diameter, center=true);
}